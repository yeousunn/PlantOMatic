
	
<cfcomponent hint="I am the base DAO object for the part object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractDao" >
	
	<cfset variables.signature = "0551E3A4D8EEB20B4CDC436E2129E24A" />

	<cffunction name="save" access="public" hint="I create or update a part record." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for part" required="yes" 	 />

		
		<cfif IsNumeric(arguments.to.partID) AND Val(arguments.to.partID)>
			<cfset update(arguments.to) />
		<cfelse>
			<cfset create(arguments.to) />
		</cfif>
			
	</cffunction>
	
	
	<cffunction name="exists" access="public" hint="I check to see if the part object exists." output="false" returntype="any" _returntype="boolean">
		<cfargument name="to" hint="I am the transfer object for part which will be checked." required="yes" type="any" _type="reactor.project.mgtest.To.partTo" />
		<cfset var qExists = 0 />
		<cfset var partGateway = _getReactorFactory().createGateway("part") />
				
		<cfset qExists = partGateway.getByFields(
			partID = arguments.to.partID
		) />
		
		<cfif qExists.recordCount>
			<cfreturn true />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>
	
	
	<cffunction name="create" access="public" hint="I create a part object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for part" required="yes" type="any" _type="reactor.project.mgtest.To.partTo"/>
		<cfset var Convention = getConventions() />
		<cfset var qCreate = 0 />
		
		
	
		<cfquery name="qCreate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			INSERT INTO #Convention.FormatObjectName(getObjectMetadata())#
			(
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					#Convention.formatInsertFieldName('partID', 'part')#
						
					,
						</cfif>
					
					
					#Convention.formatInsertFieldName('sectionID', 'part')#
						
					,
					
					#Convention.formatInsertFieldName('partName', 'part')#
						
					,
					
					#Convention.formatInsertFieldName('partInstructions', 'part')#
						
					,
					
					#Convention.formatInsertFieldName('repeatCount', 'part')#
						
					,
					
					#Convention.formatInsertFieldName('partOrder', 'part')#
						
					,
					
					#Convention.formatInsertFieldName('pdfFormat', 'part')#
						
					,
					
					#Convention.formatInsertFieldName('createdBy', 'part')#
						
					,
					
					#Convention.formatInsertFieldName('createdOn', 'part')#
						
					,
					
					#Convention.formatInsertFieldName('lastUpdateBy', 'part')#
						
					,
					
					#Convention.formatInsertFieldName('lastUpdateOn', 'part')#
						
					
			) VALUES (
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.partID#"
					 />
					
					,
						</cfif>
					
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.sectionID#"
						
						null="#Iif(NOT Len(arguments.to.sectionID), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="50"
					
					value="#arguments.to.partName#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="500"
					
					value="#arguments.to.partInstructions#"
						
						null="#Iif(NOT Len(arguments.to.partInstructions), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.repeatCount#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.partOrder#"
						
						null="#Iif(NOT Len(arguments.to.partOrder), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="20"
					
					value="#arguments.to.pdfFormat#"
						
						null="#Iif(NOT Len(arguments.to.pdfFormat), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.createdBy#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_timestamp"
					
					value="#arguments.to.createdOn#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.lastUpdateBy#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_timestamp"
					
					value="#arguments.to.lastUpdateOn#"
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
				<cfset arguments.to.partID = qCreate.id />
			</cfif>
		
	</cffunction>
	
	<cffunction name="read" access="public" hint="I read a  part object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for part which will be populated." required="yes" type="any" _type="reactor.project.mgtest.To.partTo"/>
		<cfargument name="loadFieldList" hint="I am an optional list of fields to load the record based on.  If not provided I default to the primary key values." required="no" type="any" _type="string" default="" />
		<cfset var qRead = 0 />
		<cfset var partGateway = _getReactorFactory().createGateway("part") />
		<cfset var partQuery = 0 />
		<cfset var field = "" />
		
		<cfif Len(arguments.loadFieldList)>
			<cfset partQuery = partGateway.createQuery() />
			<cfloop list="#arguments.loadFieldList#" index="field">
				<cfset partQuery.getWhere().isEqual("part", field, arguments.to[field]) />
			</cfloop>
			
			<cfset qRead = partGateway.getByQuery(partQuery,true) />
		<cfelse>
			<cfset qRead = partGateway.getByFields(
				partID = arguments.to.partID
			) />
		</cfif>
		
		<cfif qRead.recordCount IS 1>
			
				<cfset arguments.to.partID = 
				
						qRead.partID
				/>
			
				<cfset arguments.to.sectionID = 
				
						qRead.sectionID
				/>
			
				<cfset arguments.to.partName = 
				
						qRead.partName
				/>
			
				<cfset arguments.to.partInstructions = 
				
						qRead.partInstructions
				/>
			
				<cfset arguments.to.repeatCount = 
				
						qRead.repeatCount
				/>
			
				<cfset arguments.to.partOrder = 
				
						qRead.partOrder
				/>
			
				<cfset arguments.to.pdfFormat = 
				
						qRead.pdfFormat
				/>
			
				<cfset arguments.to.createdBy = 
				
						qRead.createdBy
				/>
			
				<cfset arguments.to.createdOn = 
				
						qRead.createdOn
				/>
			
				<cfset arguments.to.lastUpdateBy = 
				
						qRead.lastUpdateBy
				/>
			
				<cfset arguments.to.lastUpdateOn = 
				
						qRead.lastUpdateOn
				/>
			
		<cfelseif qRead.recordCount GT 1>
			<cfthrow message="Ambiguous Record" detail="Your request matched more than one record." type="Reactor.Record.AmbiguousRecord" />
		<cfelseif qRead.recordCount IS 0>
			<cfthrow message="No Matching Record" detail="Your request matched no records." type="Reactor.Record.NoMatchingRecord" />
		</cfif>
	</cffunction>
	
	<cffunction name="update" access="public" hint="I update a part object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for part which will be used to update a record in the table." required="yes" type="any" _type="reactor.project.mgtest.To.partTo" />
  
		<cfset var Convention = getConventions() />
		<cfset var qUpdate = 0 />
				
		<cfquery name="qUpdate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			UPDATE #Convention.FormatObjectName(getObjectMetadata())#
			SET 
			
				#Convention.formatUpdateFieldName('sectionID')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.sectionID#"
					
						null="#Iif(NOT Len(arguments.to.sectionID), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('partName')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="50"
					
					value="#arguments.to.partName#"
					 />
				,
				#Convention.formatUpdateFieldName('partInstructions')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="500"
					
					value="#arguments.to.partInstructions#"
					
						null="#Iif(NOT Len(arguments.to.partInstructions), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('repeatCount')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.repeatCount#"
					 />
				,
				#Convention.formatUpdateFieldName('partOrder')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.partOrder#"
					
						null="#Iif(NOT Len(arguments.to.partOrder), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('pdfFormat')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="20"
					
					value="#arguments.to.pdfFormat#"
					
						null="#Iif(NOT Len(arguments.to.pdfFormat), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('createdBy')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.createdBy#"
					 />
				,
				#Convention.formatUpdateFieldName('createdOn')# = <cfqueryparam
					cfsqltype="cf_sql_timestamp"
					
					value="#arguments.to.createdOn#"
					 />
				,
				#Convention.formatUpdateFieldName('lastUpdateBy')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.lastUpdateBy#"
					 />
				,
				#Convention.formatUpdateFieldName('lastUpdateOn')# = <cfqueryparam
					cfsqltype="cf_sql_timestamp"
					
					value="#arguments.to.lastUpdateOn#"
					 />
				
			WHERE
			
				#Convention.formatUpdateFieldName('partID')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.partID#"
					 />
				
		</cfquery>
	
	</cffunction>
	
	<cffunction name="delete" access="public" hint="I delete a record in the part table." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for part which will be used to delete from the table." required="yes" type="any" _type="reactor.project.mgtest.To.partTo" />
		<cfset var Convention = getConventions() />
		<cfset var qDelete = 0 />
		
		<cfquery name="qDelete" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			DELETE FROM #Convention.FormatObjectName(getObjectMetadata())#
			WHERE
			
				#Convention.formatUpdateFieldName('partID', 'part')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.partID#"
					 />
				
		</cfquery>
		
	</cffunction>
	
</cfcomponent>
	
