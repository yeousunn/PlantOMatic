
	
<cfcomponent hint="I am the base DAO object for the categories object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractDao" >
	
	<cfset variables.signature = "63A56B2956C8485949C39740D14D189C" />

	<cffunction name="save" access="public" hint="I create or update a categories record." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for categories" required="yes" 	 />

		
		<cfif IsNumeric(arguments.to.categoryID) AND Val(arguments.to.categoryID)>
			<cfset update(arguments.to) />
		<cfelse>
			<cfset create(arguments.to) />
		</cfif>
			
	</cffunction>
	
	
	<cffunction name="exists" access="public" hint="I check to see if the categories object exists." output="false" returntype="any" _returntype="boolean">
		<cfargument name="to" hint="I am the transfer object for categories which will be checked." required="yes" type="any" _type="reactor.project.mgpost.To.categoriesTo" />
		<cfset var qExists = 0 />
		<cfset var categoriesGateway = _getReactorFactory().createGateway("categories") />
				
		<cfset qExists = categoriesGateway.getByFields(
			categoryID = arguments.to.categoryID
		) />
		
		<cfif qExists.recordCount>
			<cfreturn true />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>
	
	
	<cffunction name="create" access="public" hint="I create a categories object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for categories" required="yes" type="any" _type="reactor.project.mgpost.To.categoriesTo"/>
		<cfset var Convention = getConventions() />
		<cfset var qCreate = 0 />
		
		
	
		<cfquery name="qCreate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			INSERT INTO #Convention.FormatObjectName(getObjectMetadata())#
			(
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					#Convention.formatInsertFieldName('categoryID', 'categories')#
						
					,
						</cfif>
					
					
					#Convention.formatInsertFieldName('category', 'categories')#
						
					
			) VALUES (
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.categoryID#"
					 />
					
					,
						</cfif>
					
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="255"
					
					value="#arguments.to.category#"
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
				<cfset arguments.to.categoryID = qCreate.id />
			</cfif>
		
	</cffunction>
	
	<cffunction name="read" access="public" hint="I read a  categories object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for categories which will be populated." required="yes" type="any" _type="reactor.project.mgpost.To.categoriesTo"/>
		<cfargument name="loadFieldList" hint="I am an optional list of fields to load the record based on.  If not provided I default to the primary key values." required="no" type="any" _type="string" default="" />
		<cfset var qRead = 0 />
		<cfset var categoriesGateway = _getReactorFactory().createGateway("categories") />
		<cfset var categoriesQuery = 0 />
		<cfset var field = "" />
		
		<cfif Len(arguments.loadFieldList)>
			<cfset categoriesQuery = categoriesGateway.createQuery() />
			<cfloop list="#arguments.loadFieldList#" index="field">
				<cfset categoriesQuery.getWhere().isEqual("categories", field, arguments.to[field]) />
			</cfloop>
			
			<cfset qRead = categoriesGateway.getByQuery(categoriesQuery,true) />
		<cfelse>
			<cfset qRead = categoriesGateway.getByFields(
				categoryID = arguments.to.categoryID
			) />
		</cfif>
		
		<cfif qRead.recordCount IS 1>
			
				<cfset arguments.to.categoryID = 
				
						qRead.categoryID
				/>
			
				<cfset arguments.to.category = 
				
						qRead.category
				/>
			
		<cfelseif qRead.recordCount GT 1>
			<cfthrow message="Ambiguous Record" detail="Your request matched more than one record." type="Reactor.Record.AmbiguousRecord" />
		<cfelseif qRead.recordCount IS 0>
			<cfthrow message="No Matching Record" detail="Your request matched no records." type="Reactor.Record.NoMatchingRecord" />
		</cfif>
	</cffunction>
	
	<cffunction name="update" access="public" hint="I update a categories object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for categories which will be used to update a record in the table." required="yes" type="any" _type="reactor.project.mgpost.To.categoriesTo" />
  
		<cfset var Convention = getConventions() />
		<cfset var qUpdate = 0 />
				
		<cfquery name="qUpdate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			UPDATE #Convention.FormatObjectName(getObjectMetadata())#
			SET 
			
				#Convention.formatUpdateFieldName('category')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="255"
					
					value="#arguments.to.category#"
					 />
				
			WHERE
			
				#Convention.formatUpdateFieldName('categoryID')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.categoryID#"
					 />
				
		</cfquery>
	
	</cffunction>
	
	<cffunction name="delete" access="public" hint="I delete a record in the categories table." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for categories which will be used to delete from the table." required="yes" type="any" _type="reactor.project.mgpost.To.categoriesTo" />
		<cfset var Convention = getConventions() />
		<cfset var qDelete = 0 />
		
		<cfquery name="qDelete" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			DELETE FROM #Convention.FormatObjectName(getObjectMetadata())#
			WHERE
			
				#Convention.formatUpdateFieldName('categoryID', 'categories')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.categoryID#"
					 />
				
		</cfquery>
		
	</cffunction>
	
</cfcomponent>
	
