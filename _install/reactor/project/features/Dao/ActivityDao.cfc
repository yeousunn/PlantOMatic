
	
<cfcomponent hint="I am the base DAO object for the Activity object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractDao" >
	
	<cfset variables.signature = "233DA4675663F37F8BB5A5074C275181" />

	<cffunction name="save" access="public" hint="I create or update a Activity record." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for Activity" required="yes" 	 />

		
		<cfif IsNumeric(arguments.to.ActivityID) AND Val(arguments.to.ActivityID)>
			<cfset update(arguments.to) />
		<cfelse>
			<cfset create(arguments.to) />
		</cfif>
			
	</cffunction>
	
	
	<cffunction name="exists" access="public" hint="I check to see if the Activity object exists." output="false" returntype="any" _returntype="boolean">
		<cfargument name="to" hint="I am the transfer object for Activity which will be checked." required="yes" type="any" _type="reactor.project.features.To.ActivityTo" />
		<cfset var qExists = 0 />
		<cfset var ActivityGateway = _getReactorFactory().createGateway("Activity") />
				
		<cfset qExists = ActivityGateway.getByFields(
			ActivityID = arguments.to.ActivityID
		) />
		
		<cfif qExists.recordCount>
			<cfreturn true />
		<cfelse>
			<cfreturn false />
		</cfif>
	</cffunction>
	
	
	<cffunction name="create" access="public" hint="I create a Activity object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for Activity" required="yes" type="any" _type="reactor.project.features.To.ActivityTo"/>
		<cfset var Convention = getConventions() />
		<cfset var qCreate = 0 />
		
		
	
		<cfquery name="qCreate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			INSERT INTO #Convention.FormatObjectName(getObjectMetadata())#
			(
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					#Convention.formatInsertFieldName('ActivityID', 'Activity')#
						
					,
						</cfif>
					
					
					#Convention.formatInsertFieldName('MemberID', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('ActivityTypeID', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('ActivityDate', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('UnitOfMeasure', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('MetricValue', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('StandardValue', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('ElapsedTime', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('Description', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('CreatedOn', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('CreatedBy', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('UpdatedOn', 'Activity')#
						
					,
					
					#Convention.formatInsertFieldName('UpdatedBy', 'Activity')#
						
					
			) VALUES (
				
						<cfif (NOT Convention.supportsIdentity()) OR (false AND Convention.supportsSequences())>
					
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.ActivityID#"
					 />
					
					,
						</cfif>
					
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.MemberID#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.ActivityTypeID#"
						
						null="#Iif(NOT Len(arguments.to.ActivityTypeID), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_date"
					
					value="#arguments.to.ActivityDate#"
						
						null="#Iif(NOT Len(arguments.to.ActivityDate), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="50"
					
					value="#arguments.to.UnitOfMeasure#"
						
						null="#Iif(NOT Len(arguments.to.UnitOfMeasure), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_float"
					
					value="#arguments.to.MetricValue#"
						
						null="#Iif(NOT Len(arguments.to.MetricValue), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_float"
					
					value="#arguments.to.StandardValue#"
						
						null="#Iif(NOT Len(arguments.to.StandardValue), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_time"
					
					value="#arguments.to.ElapsedTime#"
						
						null="#Iif(NOT Len(arguments.to.ElapsedTime), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_varchar"
					
						maxlength="4000"
					
					value="#arguments.to.Description#"
						
						null="#Iif(NOT Len(arguments.to.Description), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_timestamp"
					
					value="#arguments.to.CreatedOn#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.CreatedBy#"
						
						null="#Iif(NOT Len(arguments.to.CreatedBy), DE(true), DE(false))#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_timestamp"
					
					value="#arguments.to.UpdatedOn#"
					 />
					
					,
					
					<cfqueryparam cfsqltype="cf_sql_integer"
					
					value="#arguments.to.UpdatedBy#"
						
						null="#Iif(NOT Len(arguments.to.UpdatedBy), DE(true), DE(false))#"
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
				<cfset arguments.to.ActivityID = qCreate.id />
			</cfif>
		
	</cffunction>
	
	<cffunction name="read" access="public" hint="I read a  Activity object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for Activity which will be populated." required="yes" type="any" _type="reactor.project.features.To.ActivityTo"/>
		<cfargument name="loadFieldList" hint="I am an optional list of fields to load the record based on.  If not provided I default to the primary key values." required="no" type="any" _type="string" default="" />
		<cfset var qRead = 0 />
		<cfset var ActivityGateway = _getReactorFactory().createGateway("Activity") />
		<cfset var ActivityQuery = 0 />
		<cfset var field = "" />
		
		<cfif Len(arguments.loadFieldList)>
			<cfset ActivityQuery = ActivityGateway.createQuery() />
			<cfloop list="#arguments.loadFieldList#" index="field">
				<cfset ActivityQuery.getWhere().isEqual("Activity", field, arguments.to[field]) />
			</cfloop>
			
			<cfset qRead = ActivityGateway.getByQuery(ActivityQuery,true) />
		<cfelse>
			<cfset qRead = ActivityGateway.getByFields(
				ActivityID = arguments.to.ActivityID
			) />
		</cfif>
		
		<cfif qRead.recordCount IS 1>
			
				<cfset arguments.to.ActivityID = 
				
						qRead.ActivityID
				/>
			
				<cfset arguments.to.MemberID = 
				
						qRead.MemberID
				/>
			
				<cfset arguments.to.ActivityTypeID = 
				
						qRead.ActivityTypeID
				/>
			
				<cfset arguments.to.ActivityDate = 
				
						qRead.ActivityDate
				/>
			
				<cfset arguments.to.UnitOfMeasure = 
				
						qRead.UnitOfMeasure
				/>
			
				<cfset arguments.to.MetricValue = 
				
						qRead.MetricValue
				/>
			
				<cfset arguments.to.StandardValue = 
				
						qRead.StandardValue
				/>
			
				<cfset arguments.to.ElapsedTime = 
				
						qRead.ElapsedTime
				/>
			
				<cfset arguments.to.Description = 
				
						qRead.Description
				/>
			
				<cfset arguments.to.CreatedOn = 
				
						qRead.CreatedOn
				/>
			
				<cfset arguments.to.CreatedBy = 
				
						qRead.CreatedBy
				/>
			
				<cfset arguments.to.UpdatedOn = 
				
						qRead.UpdatedOn
				/>
			
				<cfset arguments.to.UpdatedBy = 
				
						qRead.UpdatedBy
				/>
			
		<cfelseif qRead.recordCount GT 1>
			<cfthrow message="Ambiguous Record" detail="Your request matched more than one record." type="Reactor.Record.AmbiguousRecord" />
		<cfelseif qRead.recordCount IS 0>
			<cfthrow message="No Matching Record" detail="Your request matched no records." type="Reactor.Record.NoMatchingRecord" />
		</cfif>
	</cffunction>
	
	<cffunction name="update" access="public" hint="I update a Activity object." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for Activity which will be used to update a record in the table." required="yes" type="any" _type="reactor.project.features.To.ActivityTo" />
  
		<cfset var Convention = getConventions() />
		<cfset var qUpdate = 0 />
				
		<cfquery name="qUpdate" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			UPDATE #Convention.FormatObjectName(getObjectMetadata())#
			SET 
			
				#Convention.formatUpdateFieldName('MemberID')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.MemberID#"
					 />
				,
				#Convention.formatUpdateFieldName('ActivityTypeID')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.ActivityTypeID#"
					
						null="#Iif(NOT Len(arguments.to.ActivityTypeID), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('ActivityDate')# = <cfqueryparam
					cfsqltype="cf_sql_date"
					
					value="#arguments.to.ActivityDate#"
					
						null="#Iif(NOT Len(arguments.to.ActivityDate), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('UnitOfMeasure')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="50"
					
					value="#arguments.to.UnitOfMeasure#"
					
						null="#Iif(NOT Len(arguments.to.UnitOfMeasure), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('MetricValue')# = <cfqueryparam
					cfsqltype="cf_sql_float"
					
					value="#arguments.to.MetricValue#"
					
						null="#Iif(NOT Len(arguments.to.MetricValue), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('StandardValue')# = <cfqueryparam
					cfsqltype="cf_sql_float"
					
					value="#arguments.to.StandardValue#"
					
						null="#Iif(NOT Len(arguments.to.StandardValue), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('ElapsedTime')# = <cfqueryparam
					cfsqltype="cf_sql_time"
					
					value="#arguments.to.ElapsedTime#"
					
						null="#Iif(NOT Len(arguments.to.ElapsedTime), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('Description')# = <cfqueryparam
					cfsqltype="cf_sql_varchar"
					
						maxlength="4000"
					
					value="#arguments.to.Description#"
					
						null="#Iif(NOT Len(arguments.to.Description), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('CreatedOn')# = <cfqueryparam
					cfsqltype="cf_sql_timestamp"
					
					value="#arguments.to.CreatedOn#"
					 />
				,
				#Convention.formatUpdateFieldName('CreatedBy')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.CreatedBy#"
					
						null="#Iif(NOT Len(arguments.to.CreatedBy), DE(true), DE(false))#"
					 />
				,
				#Convention.formatUpdateFieldName('UpdatedOn')# = <cfqueryparam
					cfsqltype="cf_sql_timestamp"
					
					value="#arguments.to.UpdatedOn#"
					 />
				,
				#Convention.formatUpdateFieldName('UpdatedBy')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.UpdatedBy#"
					
						null="#Iif(NOT Len(arguments.to.UpdatedBy), DE(true), DE(false))#"
					 />
				
			WHERE
			
				#Convention.formatUpdateFieldName('ActivityID')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.ActivityID#"
					 />
				
		</cfquery>
	
	</cffunction>
	
	<cffunction name="delete" access="public" hint="I delete a record in the Activity table." output="false" returntype="void">
		<cfargument name="to" hint="I am the transfer object for Activity which will be used to delete from the table." required="yes" type="any" _type="reactor.project.features.To.ActivityTo" />
		<cfset var Convention = getConventions() />
		<cfset var qDelete = 0 />
		
		<cfquery name="qDelete" datasource="#_getConfig().getDsn()#" username="#_getConfig().getUsername()#" password="#_getConfig().getPassword()#">
			DELETE FROM #Convention.FormatObjectName(getObjectMetadata())#
			WHERE
			
				#Convention.formatUpdateFieldName('ActivityID', 'Activity')# = <cfqueryparam
					cfsqltype="cf_sql_integer"
					
					value="#arguments.to.ActivityID#"
					 />
				
		</cfquery>
		
	</cffunction>
	
</cfcomponent>
	
