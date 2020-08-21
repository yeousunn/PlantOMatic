
	
<cfcomponent hint="I am the base DAO object for the plant object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractDao" >
	
	<cfset variables.signature = "06E1CD302A971A3BA8A86C956E608391" />

	<cffunction name="save" access="public" hint="I create or update a plant record." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for plant" required="yes" 	 />

		
		<cfif IsNumeric(arguments.to.PlantID) AND Val(arguments.to.PlantID)>
			<cfset update(arguments.to) />
		<cfelse>
			<cfset create(arguments.to) />
		</cfif>
			
	</cffunction>
	
	
	<cffunction name="exists" access="public" hint="I check to see if the plant object exists." output="false" returntype="any" _returntype="boolean">
		<cfargument name="to" hint="I am the transfer object for plant which will be checked." required="yes" type="any" _type="reactor.project.PlantOMatic.To.plantTo" />
		<cfset var qExists = 0 />
		<cfset var plantGateway = _getReactorFactory().createGateway("plant") />
				
		<cfset qExists = plantGateway.getByFields(
			PlantID = arguments.to.PlantID
		) />
		
		<cfif qExists.recordCount>
			<cfreturn true />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>
	
	
	<cffunction name="create" access="public" hint="I create a plant object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for plant" required="yes" type="any" _type="reactor.project.PlantOMatic.To.plantTo"/>
		<cfset var Convention = getConventions() />
		<cfset var qCreate = 0 />
		
		
	
		<cfquery name="qCreate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			INSERT INTO #Convention.FormatObjectName(getObjectMetadata())#
			(
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					#Convention.formatInsertFieldName('PlantID', 'plant')#
						
					,
						</cfif>
					
					
					#Convention.formatInsertFieldName('Symbol', 'plant')#
						
					,
					
					#Convention.formatInsertFieldName('SynonymSymbol', 'plant')#
						
					,
					
					#Convention.formatInsertFieldName('ScientificNameWithAuthor', 'plant')#
						
					,
					
					#Convention.formatInsertFieldName('CommonName', 'plant')#
						
					,
					
					#Convention.formatInsertFieldName('Family', 'plant')#
						
					
			) VALUES (
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.PlantID#"
					 />
					
					,
						</cfif>
					
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="20"
					
					value="#arguments.to.Symbol#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="20"
					
					value="#arguments.to.SynonymSymbol#"
						
						null="#Iif(NOT Len(arguments.to.SynonymSymbol), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="250"
					
					value="#arguments.to.ScientificNameWithAuthor#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="150"
					
					value="#arguments.to.CommonName#"
						
						null="#Iif(NOT Len(arguments.to.CommonName), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="150"
					
					value="#arguments.to.Family#"
						
						null="#Iif(NOT Len(arguments.to.Family), DE(true), DE(false))#"
					 />
					
					
			)
			
			
			
				<cfif Convention.supportsMultiStatementQueries() AND Convention.supportsIdentity() >
					#Convention.lastInsertedIdSyntax(getObjectMetadata())#
				</cfif>	
			
		</cfquery>
				
		
				
			<cfif NOT Convention.supportsMultiStatementQueries() AND Convention.supportsIdentity() >
				<cfquery name="qCreate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">	
					#Convention.lastInsertedIdSyntax(getObjectMetadata())#
				</cfquery>		
			</cfif>

			<cfif Convention.supportsIdentity() AND qCreate.recordCount>
				<cfset arguments.to.PlantID = qCreate.id />
			</cfif>
		
	</cffunction>
	
	<cffunction name="read" access="public" hint="I read a  plant object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for plant which will be populated." required="yes" type="any" _type="reactor.project.PlantOMatic.To.plantTo"/>
		<cfargument name="loadFieldList" hint="I am an optional list of fields to load the record based on.  If not provided I default to the primary key values." required="no" type="any" _type="string" default="" />
		<cfset var qRead = 0 />
		<cfset var plantGateway = _getReactorFactory().createGateway("plant") />
		<cfset var plantQuery = 0 />
		<cfset var field = "" />
		
		<cfif Len(arguments.loadFieldList)>
			<cfset plantQuery = plantGateway.createQuery() />
			<cfloop list="#arguments.loadFieldList#" index="field">
				<cfset plantQuery.getWhere().isEqual("plant", field, arguments.to[field]) />
			</cfloop>
			
			<cfset qRead = plantGateway.getByQuery(plantQuery,true) />
		<cfelse>
			<cfset qRead = plantGateway.getByFields(
				PlantID = arguments.to.PlantID
			) />
		</cfif>
		
		<cfif qRead.recordCount IS 1>
			
				<cfset arguments.to.PlantID = 
				
						qRead.PlantID
				/>
			
				<cfset arguments.to.Symbol = 
				
						qRead.Symbol
				/>
			
				<cfset arguments.to.SynonymSymbol = 
				
						qRead.SynonymSymbol
				/>
			
				<cfset arguments.to.ScientificNameWithAuthor = 
				
						qRead.ScientificNameWithAuthor
				/>
			
				<cfset arguments.to.CommonName = 
				
						qRead.CommonName
				/>
			
				<cfset arguments.to.Family = 
				
						qRead.Family
				/>
			
		<cfelseif qRead.recordCount GT 1>
			<cfthrow message="Ambiguous Record" detail="Your request matched more than one record." type="Reactor.Record.AmbiguousRecord" />
		<cfelseif qRead.recordCount IS 0>
			<cfthrow message="No Matching Record" detail="Your request matched no records." type="Reactor.Record.NoMatchingRecord" />
		</cfif>
	</cffunction>
	
	<cffunction name="update" access="public" hint="I update a plant object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for plant which will be used to update a record in the table." required="yes" type="any" _type="reactor.project.PlantOMatic.To.plantTo" />
  
		<cfset var Convention = getConventions() />
		<cfset var qUpdate = 0 />
				
		<cfquery name="qUpdate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			UPDATE #Convention.FormatObjectName(getObjectMetadata())#
			SET 
			
				#Convention.formatUpdateFieldName('Symbol')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="20"
					
					value="#arguments.to.Symbol#"
					 />
				,
				#Convention.formatUpdateFieldName('SynonymSymbol')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="20"
					
					value="#arguments.to.SynonymSymbol#"
					
						null="#Iif(NOT Len(arguments.to.SynonymSymbol), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('ScientificNameWithAuthor')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="250"
					
					value="#arguments.to.ScientificNameWithAuthor#"
					 />
				,
				#Convention.formatUpdateFieldName('CommonName')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="150"
					
					value="#arguments.to.CommonName#"
					
						null="#Iif(NOT Len(arguments.to.CommonName), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('Family')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="150"
					
					value="#arguments.to.Family#"
					
						null="#Iif(NOT Len(arguments.to.Family), DE(true), DE(false))#"
					 />
				
			WHERE
			
				#Convention.formatUpdateFieldName('PlantID')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.PlantID#"
					 />
				
		</cfquery>
	
	</cffunction>
	
	<cffunction name="delete" access="public" hint="I delete a record in the plant table." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for plant which will be used to delete from the table." required="yes" type="any" _type="reactor.project.PlantOMatic.To.plantTo" />
		<cfset var Convention = getConventions() />
		<cfset var qDelete = 0 />
		
		<cfquery name="qDelete" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			DELETE FROM #Convention.FormatObjectName(getObjectMetadata())#
			WHERE
			
				#Convention.formatUpdateFieldName('PlantID', 'plant')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.PlantID#"
					 />
				
		</cfquery>
		
	</cffunction>
	
</cfcomponent>
	
