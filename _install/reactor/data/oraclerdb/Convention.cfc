<cfcomponent hint="I am the convention object for Oracle Rdb.  I translate data into formats that the DBMS supports." extends="reactor.data.abstractConvention">

	<!--- @@Note: Oracle  rdb has no equivalent	--->
	<cffunction name="lastInseredIdSyntax" access="public" hint="I return a simple query which can be used to get the last ID inserted into the database." output="false" returntype="any" _returntype="string">
		<cfargument name="ObjectMetadata" hint="I am the metadata to use." required="yes" type="any" _type="reactor.base.abstractMetadata" />

		<cfthrow message="Identity Not Supported" detail="Oracle rdb does not support identity columns." type="reactor.convention.IdentityNotSupported" />
	</cffunction>


	<cffunction name="formatObjectAlias" access="public" hint="I format the object/table name with an alias" output="false" returntype="any" _returntype="string">
		<cfargument name="ObjectMetadata" hint="I am the metadata to use." required="yes" type="any" _type="reactor.base.abstractMetadata" />
		<cfargument name="alias" hint="I am this object's alias" required="yes" type="any" _type="string" />
		<cfreturn formatObjectName(arguments.ObjectMetadata, arguments.alias) & ' as #arguments.alias#' />

	</cffunction>

	<cffunction name="formatObjectName" access="public" hint="I format the object/table name" output="false" returntype="any" _returntype="string">
		<cfargument name="ObjectMetadata" hint="I am the metadata to use." required="yes" type="any" _type="reactor.base.abstractMetadata" />
<!--- @@ToDO:  need to get Owner's name in here. --->
<!--- <cfreturn '#ucase(arguments.ObjectMetadata.getOwner())#.#ucase(arguments.ObjectMetadata.getName())#' /> --->
		<cfreturn '#arguments.ObjectMetadata.getName()#' />

	</cffunction>

	<cffunction name="formatFieldName" access="public" hint="I format the field name" output="false" returntype="any" _returntype="string">
		<cfargument name="fieldName" hint="I am the field name." required="yes" type="any" _type="string" />
		<cfargument name="alias" hint="I am this object's alias" required="yes" type="any" _type="string" />

		<cfreturn '#arguments.alias#.#arguments.fieldName#' />

	</cffunction>

    <cffunction name="formatInsertFieldName" access="public" hint="I format the field name" output="false" returntype="any" _returntype="string">
        <cfargument name="fieldName" hint="I am the field name." required="yes" type="any" _type="string" />
        <cfargument name="alias" hint="I am this object's alias" required="yes" type="any" _type="string" />
        <cfreturn formatFieldName(arguments.fieldName, arguments.alias) />

    </cffunction>

	<cffunction name="formatUpdateFieldName" access="public" hint="I format the field name" output="false" returntype="any" _returntype="string">
		<cfargument name="fieldName" hint="I am the field name." required="yes" type="any" _type="string" />

		<cfreturn '#arguments.fieldName#' />

	</cffunction>

	<cffunction name="formatFieldAlias" access="public" hint="I format the field name" output="false" returntype="any" _returntype="string">
		<cfargument name="fieldName" hint="I am the field name." required="yes" type="any" _type="string" />
		<cfargument name="alias" hint="I am this object's alias" required="no" type="any" _type="string" default="" />

		<cfreturn '#arguments.alias##arguments.fieldName#' />

	</cffunction>

	<cffunction name="supportsSequences" access="public" hint="I indicate if the DB support sequences" output="false" returntype="any" _returntype="boolean">
		<cfreturn false />
	</cffunction>

	<cffunction name="supportsIdentity" access="public" hint="I indicate if the DB support identity columns (and has a system for automaticaly getting the last value)." output="false" returntype="any" _returntype="boolean">
		<cfreturn false />
	</cffunction>

	<cffunction name="supportsMultiStatementQueries" access="public" hint="I indicate if the DB support more than one statment in a query." output="false" returntype="any" _returntype="boolean">
		<cfreturn true />
	</cffunction>

	<cffunction name="formatValue" access="public" hint="I format a value based on it's type." output="false" returntype="any" _returntype="string">
		<cfargument name="value" hint="I am the value to format" required="yes" type="any" _type="string" />
		<cfargument name="dbDataType" hint="I am the type of data in the database" required="yes" type="any" _type="string" />

		<cfreturn arguments.value />

	</cffunction>

</cfcomponent>
