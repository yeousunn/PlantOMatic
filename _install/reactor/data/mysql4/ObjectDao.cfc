<cfcomponent hint="I read Object data from a MySQL4 database." extends="reactor.data.abstractObjectDao">
	
	<cffunction name="read" access="public" hint="I populate an Object object based on it's name" output="false" returntype="void">
		<cfargument name="Object" hint="I am the object to populate." required="yes" type="any" _type="reactor.core.object" />
		
		<cfset var qObject = 0 />
		
		<!--- get all field data --->
		<cfset qObject = readObject(arguments.Object) />
		<cfset readFields(arguments.Object,qObject) />
	</cffunction>
	
	<cffunction name="readObject" access="private" hint="I confirm that this object exists at all.  If not, I throw an error." output="false" returntype="any" _returntype="query">
		<cfargument name="Object" hint="I am the object to check on." required="yes" type="any" _type="reactor.core.object" />
		<cfset var qObject = 0 />
		<cfset var dbName = 0 />
		
		<cfquery name="qObject" datasource="#getDsn()#" username="#getUsername()#" password="#getPassword()#">
			SELECT database() as DATABASE_NAME
		</cfquery>
		<cfset dbName = qObject.DATABASE_NAME />
		
		<cftry>
			<cfquery name="qObject" datasource="#getDsn()#" username="#getUsername()#" password="#getPassword()#">
				EXPLAIN #arguments.Object.getName()#
			</cfquery>
			<cfcatch type="any">
				<cfthrow type="Reactor.NoSuchObject" />
			</cfcatch>
		</cftry>
		
		<!--- set the owner --->
		<cfset arguments.Object.setDatabase(dbName) />
		<cfset arguments.Object.setType("table") /> <!--- mysql 4 doesn't have views --->
		
		<cfreturn qObject />
		
	</cffunction>
	
	<cffunction name="readFields" access="private" hint="I populate the table with fields." output="false" returntype="void">
		<cfargument name="Object" hint="I am the object to read fields into." required="yes" type="any" _type="reactor.core.object" />
		<cfargument name="qObject" type="any" _type="query" required="true" />
		<cfset var qFields = arguments.qObject />
		<cfset var Field = 0 />
		<cfset var dataType = 0 />
		<cfset var length = 0 />
				
		<cfloop query="qFields">
			<!--- 
				mod by SPJ: in MySql 4 tinytext, text, mediumtext and longtext don't report their maxlength value, so we 
				have to set it by hand.  The field lengths were obtained from http://www.cs.wcupa.edu/~rkline/mysqlEZinfo/data_types.html#Storage_requirements
			--->
			<cfswitch expression="#qFields.TYPE#">
				<cfcase value="tinytext">
					<cfset dataType = "text" />
					<cfset length = 2^8 />
				</cfcase>
				<cfcase value="text">
					<cfset dataType = "text" />
					<cfset length = 2^16 + 1 />
				</cfcase>
				<cfcase value="mediumtext">
					<cfset dataType = "text" />
					<cfset length = 2^24 + 2 />
				</cfcase>
				<cfcase value="longtext">
					<cfset dataType = "longtext" />
					<cfset length = 2^32 + 3 />
				</cfcase>
				<cfdefaultcase>
					<!--- this is the original MySql 4 code, look for textfields in the format type(maxlen) --->
					<cfif REFind(".*\(.*\)",qFields.TYPE) eq 0>
						<cfset dataType = qFields.TYPE />
						<cfset length = 0 />
					<cfelse>
						<cfset dataType = REReplace(qFields.TYPE,"(.*)\((.*)\)","\1") />
						<cfset length = val(REReplace(qFields.TYPE,"(.*)\((.*)\)","\2")) />
					</cfif>
				</cfdefaultcase>
			</cfswitch>
			<!--- end mod by SPJ --->
					
			<!--- create the field --->
			<cfset Field = StructNew() />
			<cfset Field.name = qFields.FIELD />
      <cfif qFields.KEY is "PRI">
  			<cfset Field.primaryKey = "true" />
      <cfelse>
  			<cfset Field.primaryKey = "false" />
      </cfif>
      <cfif qFields.EXTRA is "auto_increment">
        <cfset Field.identity = "true" />
      <cfelse>
        <cfset Field.identity = "false" />
      </cfif>
			<cfif qFields.NULL is "YES">
        <cfset Field.nullable = "true" />
			<cfelse>
        <cfset Field.nullable = "false" />
      </cfif>
			<cfset Field.dbDataType = dataType />
			<cfset Field.cfDataType = getCfDataType(dataType) />
			<cfset Field.cfSqlType = getCfSqlType(dataType) />
			<cfset Field.length = length />
			<cfset Field.default = getDefault(qFields.default, Field.cfDataType, Field.nullable) />
			<cfset Field.sequenceName = "" />
			<cfset Field.readOnly = "false" />
			<cfset Field.scale = "0" />
			
			<!--- add the field to the table --->
			<cfset arguments.Object.addField(Field) />
		</cfloop>
	</cffunction>
	
	<cffunction name="getDefault" access="public" hint="I get a default value for a cf datatype." output="false" returntype="any" _returntype="string">
		<cfargument name="sqlDefaultValue" hint="I am the default value defined by SQL." required="yes" type="any" _type="string" />
		<cfargument name="typeName" hint="I am the cf type name to get a default value for." required="yes" type="any" _type="string" />
		<cfargument name="nullable" hint="I indicate if the column is nullable." required="yes" type="any" _type="boolean" />
		
		<cfswitch expression="#arguments.typeName#">
			<cfcase value="numeric">
				<cfif IsNumeric(arguments.sqlDefaultValue)>
					<cfreturn arguments.sqlDefaultValue />
				<cfelseif arguments.nullable>
					<cfreturn ""/>
				<cfelse>
					<cfreturn 0 />
				</cfif>
			</cfcase>
			<cfcase value="binary">
				<cfreturn "" />
			</cfcase>
			<cfcase value="boolean">
				<cfif IsBoolean(arguments.sqlDefaultValue)>
					<cfreturn Iif(arguments.sqlDefaultValue, DE(true), DE(false)) />
				<cfelse>
					<cfreturn false />
				</cfif>
			</cfcase>
			<cfcase value="string">
				<!--- insure that the first and last characters are "'" --->
				<cfif Left(arguments.sqlDefaultValue, 1) IS "'" AND Right(arguments.sqlDefaultValue, 1) IS "'">
					<!--- mssql functions must be constants.  for this reason I can convert anything quoted in single quotes safely to a string --->
					<cfset arguments.sqlDefaultValue = Mid(arguments.sqlDefaultValue, 2, Len(arguments.sqlDefaultValue)-2) />
					<cfset arguments.sqlDefaultValue = Replace(arguments.sqlDefaultValue, "''", "'", "All") />
					<cfset arguments.sqlDefaultValue = Replace(arguments.sqlDefaultValue, """", """""", "All") />
					<cfreturn arguments.sqlDefaultValue />
				<cfelse>
					<cfreturn "" />
				</cfif>
			</cfcase>
			<cfcase value="date">
				<cfif Left(arguments.sqlDefaultValue, 1) IS "'" AND Right(arguments.sqlDefaultValue, 1) IS "'">
					<cfreturn Mid(arguments.sqlDefaultValue, 2, Len(arguments.sqlDefaultValue)-2) />
				<cfelseif arguments.sqlDefaultValue IS "getDate()">
					<cfreturn "##Now()##" />
				<cfelse>
					<cfreturn "" />
				</cfif>
			</cfcase>
			<cfdefaultcase>
				<cfreturn "" />
			</cfdefaultcase>
		</cfswitch>
	</cffunction>
	
	<cffunction name="getCfSqlType" access="private" hint="I translate the MSSQL data type names into ColdFusion cf_sql_xyz names" output="false" returntype="any" _returntype="string">
		<cfargument name="typeName" hint="I am the type name to translate" required="yes" type="any" _type="string" />

		<cfset arguments.typeName = ReplaceNoCase(arguments.typeName, " unsigned", "") />

		<cfswitch expression="#arguments.typeName#">
			<cfcase value="bit,bool,boolean">
				<cfreturn "cf_sql_bit" />
			</cfcase>
			<cfcase value="tinyint">
				<cfreturn "cf_sql_tinyint" />
			</cfcase>
			<cfcase value="smallint,year">
				<cfreturn "cf_sql_smallint" />
			</cfcase>
			<cfcase value="mediumint,int,integer">
				<cfreturn "cf_sql_integer" />
			</cfcase>
			<cfcase value="bigint">
				<cfreturn "cf_sql_bigint" />
			</cfcase>
			<cfcase value="float">
				<cfreturn "cf_sql_float" />
			</cfcase>
			<cfcase value="double,double percision">
				<cfreturn "cf_sql_double" />
			</cfcase>
			<cfcase value="decimal,dec">
				<cfreturn "cf_sql_float" />
			</cfcase>
			<cfcase value="date">
				<cfreturn "cf_sql_date" />
			</cfcase>
			<cfcase value="datetime">
				<cfreturn "cf_sql_timestamp" />
			</cfcase>
			<cfcase value="timestamp">
				<cfreturn "cf_sql_timestamp" />
			</cfcase>			
			<cfcase value="char">
				<cfreturn "cf_sql_char" />
			</cfcase>
			<cfcase value="varchar,enum,set">
				<cfreturn "cf_sql_varchar" />
			</cfcase>
			<cfcase value="tinytext,text,mediumtext,longtext">
				<cfreturn "cf_sql_longvarchar" />
			</cfcase>
			<cfcase value="varbinary">
				<cfreturn "cf_sql_varbinary" />
			</cfcase>
			<cfcase value="tinyblob,blob,mediumblob,longblob">
				<cfreturn "cf_sql_blob" />
			</cfcase>
			<cfcase value="binary">
				<cfreturn "cf_sql_binary" />
			</cfcase>
		</cfswitch>
		
		<cfthrow message="Unsupported (or incorrectly supported) database datatype: #arguments.typeName#." />
	</cffunction>

	<cffunction name="getCfDataType" access="private" hint="I translate the MSSQL data type names into ColdFusion data type names" output="false" returntype="any" _returntype="string">
		<cfargument name="typeName" hint="I am the type name to translate" required="yes" type="any" _type="string" />
		
		<cfset arguments.typeName = ReplaceNoCase(arguments.typeName, " unsigned", "") />

		<cfswitch expression="#arguments.typeName#">
			<cfcase value="bit,bool,boolean">
				<cfreturn "boolean" />
			</cfcase>
			<cfcase value="tinyint,smallint,mediumint,int,integer,bigint,float,double,double percision,decimal,dec,year">
				<cfreturn "numeric" />
			</cfcase>
			<cfcase value="date,datetime,timestamp">
				<cfreturn "date" />
			</cfcase>
			<cfcase value="time,enum,set">
				<cfreturn "string" />
			</cfcase>
			<cfcase value="char,varchar,tinytext,text,mediumtext,longtext">
				<cfreturn "string" />
			</cfcase>
			<cfcase value="binary,varbinary,tinyblob,blob,mediumblob,longblob">
				<cfreturn "binary" />
			</cfcase>			
		</cfswitch>
	
		<cfthrow message="Unsupported (or incorrectly supported) database datatype: #arguments.typeName#." />
		
	</cffunction>

</cfcomponent>

