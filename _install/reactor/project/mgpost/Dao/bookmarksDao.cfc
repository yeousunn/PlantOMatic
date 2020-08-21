
	
<cfcomponent hint="I am the base DAO object for the bookmarks object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractDao" >
	
	<cfset variables.signature = "994F275F64945304AEEE8B79E167D27C" />

	<cffunction name="save" access="public" hint="I create or update a bookmarks record." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for bookmarks" required="yes" 	 />

		
		<cfif IsNumeric(arguments.to.bookmarkID) AND Val(arguments.to.bookmarkID)>
			<cfset update(arguments.to) />
		<cfelse>
			<cfset create(arguments.to) />
		</cfif>
			
	</cffunction>
	
	
	<cffunction name="exists" access="public" hint="I check to see if the bookmarks object exists." output="false" returntype="any" _returntype="boolean">
		<cfargument name="to" hint="I am the transfer object for bookmarks which will be checked." required="yes" type="any" _type="reactor.project.mgpost.To.bookmarksTo" />
		<cfset var qExists = 0 />
		<cfset var bookmarksGateway = _getReactorFactory().createGateway("bookmarks") />
				
		<cfset qExists = bookmarksGateway.getByFields(
			bookmarkID = arguments.to.bookmarkID
		) />
		
		<cfif qExists.recordCount>
			<cfreturn true />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>
	
	
	<cffunction name="create" access="public" hint="I create a bookmarks object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for bookmarks" required="yes" type="any" _type="reactor.project.mgpost.To.bookmarksTo"/>
		<cfset var Convention = getConventions() />
		<cfset var qCreate = 0 />
		
		
	
		<cfquery name="qCreate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			INSERT INTO #Convention.FormatObjectName(getObjectMetadata())#
			(
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					#Convention.formatInsertFieldName('bookmarkID', 'bookmarks')#
						
					,
						</cfif>
					
					
					#Convention.formatInsertFieldName('name', 'bookmarks')#
						
					,
					
					#Convention.formatInsertFieldName('url', 'bookmarks')#
						
					
			) VALUES (
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.bookmarkID#"
					 />
					
					,
						</cfif>
					
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="80"
					
					value="#arguments.to.name#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="255"
					
					value="#arguments.to.url#"
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
				<cfset arguments.to.bookmarkID = qCreate.id />
			</cfif>
		
	</cffunction>
	
	<cffunction name="read" access="public" hint="I read a  bookmarks object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for bookmarks which will be populated." required="yes" type="any" _type="reactor.project.mgpost.To.bookmarksTo"/>
		<cfargument name="loadFieldList" hint="I am an optional list of fields to load the record based on.  If not provided I default to the primary key values." required="no" type="any" _type="string" default="" />
		<cfset var qRead = 0 />
		<cfset var bookmarksGateway = _getReactorFactory().createGateway("bookmarks") />
		<cfset var bookmarksQuery = 0 />
		<cfset var field = "" />
		
		<cfif Len(arguments.loadFieldList)>
			<cfset bookmarksQuery = bookmarksGateway.createQuery() />
			<cfloop list="#arguments.loadFieldList#" index="field">
				<cfset bookmarksQuery.getWhere().isEqual("bookmarks", field, arguments.to[field]) />
			</cfloop>
			
			<cfset qRead = bookmarksGateway.getByQuery(bookmarksQuery,true) />
		<cfelse>
			<cfset qRead = bookmarksGateway.getByFields(
				bookmarkID = arguments.to.bookmarkID
			) />
		</cfif>
		
		<cfif qRead.recordCount IS 1>
			
				<cfset arguments.to.bookmarkID = 
				
						qRead.bookmarkID
				/>
			
				<cfset arguments.to.name = 
				
						qRead.name
				/>
			
				<cfset arguments.to.url = 
				
						qRead.url
				/>
			
		<cfelseif qRead.recordCount GT 1>
			<cfthrow message="Ambiguous Record" detail="Your request matched more than one record." type="Reactor.Record.AmbiguousRecord" />
		<cfelseif qRead.recordCount IS 0>
			<cfthrow message="No Matching Record" detail="Your request matched no records." type="Reactor.Record.NoMatchingRecord" />
		</cfif>
	</cffunction>
	
	<cffunction name="update" access="public" hint="I update a bookmarks object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for bookmarks which will be used to update a record in the table." required="yes" type="any" _type="reactor.project.mgpost.To.bookmarksTo" />
  
		<cfset var Convention = getConventions() />
		<cfset var qUpdate = 0 />
				
		<cfquery name="qUpdate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			UPDATE #Convention.FormatObjectName(getObjectMetadata())#
			SET 
			
				#Convention.formatUpdateFieldName('name')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="80"
					
					value="#arguments.to.name#"
					 />
				,
				#Convention.formatUpdateFieldName('url')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="255"
					
					value="#arguments.to.url#"
					 />
				
			WHERE
			
				#Convention.formatUpdateFieldName('bookmarkID')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.bookmarkID#"
					 />
				
		</cfquery>
	
	</cffunction>
	
	<cffunction name="delete" access="public" hint="I delete a record in the bookmarks table." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for bookmarks which will be used to delete from the table." required="yes" type="any" _type="reactor.project.mgpost.To.bookmarksTo" />
		<cfset var Convention = getConventions() />
		<cfset var qDelete = 0 />
		
		<cfquery name="qDelete" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			DELETE FROM #Convention.FormatObjectName(getObjectMetadata())#
			WHERE
			
				#Convention.formatUpdateFieldName('bookmarkID', 'bookmarks')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.bookmarkID#"
					 />
				
		</cfquery>
		
	</cffunction>
	
</cfcomponent>
	
