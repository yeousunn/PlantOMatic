
<cfcomponent hint="I am the base Gateway object for the Activity object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractGateway" >
	
	<cfset variables.signature = "233DA4675663F37F8BB5A5074C275181" />

	<cffunction name="getAll" access="public" hint="I return all rows from the Activity table." output="false" returntype="any" _returntype="query">
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfreturn getByFields(sortByFieldList=arguments.sortByFieldList) />
	</cffunction>
	
	<cffunction name="getByFields" access="public" hint="I return all matching rows from the Activity table." output="false" returntype="any" _returntype="query">
		
			<cfargument name="ActivityID" hint="If provided, I match the provided value to the ActivityID field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="MemberID" hint="If provided, I match the provided value to the MemberID field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="ActivityTypeID" hint="If provided, I match the provided value to the ActivityTypeID field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="ActivityDate" hint="If provided, I match the provided value to the ActivityDate field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="UnitOfMeasure" hint="If provided, I match the provided value to the UnitOfMeasure field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="MetricValue" hint="If provided, I match the provided value to the MetricValue field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="StandardValue" hint="If provided, I match the provided value to the StandardValue field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="ElapsedTime" hint="If provided, I match the provided value to the ElapsedTime field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="Description" hint="If provided, I match the provided value to the Description field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="CreatedOn" hint="If provided, I match the provided value to the CreatedOn field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="CreatedBy" hint="If provided, I match the provided value to the CreatedBy field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="UpdatedOn" hint="If provided, I match the provided value to the UpdatedOn field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="UpdatedBy" hint="If provided, I match the provided value to the UpdatedBy field in the Activity object." required="no" type="any" _type="string" />
		
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		<cfset var x = 0 />
		
		
			<cfif structKeyExists(arguments, 'ActivityID')>
				<cfset Where.isEqual(_getAlias(), "ActivityID", arguments.ActivityID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'MemberID')>
				<cfset Where.isEqual(_getAlias(), "MemberID", arguments.MemberID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'ActivityTypeID')>
				<cfset Where.isEqual(_getAlias(), "ActivityTypeID", arguments.ActivityTypeID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'ActivityDate')>
				<cfset Where.isEqual(_getAlias(), "ActivityDate", arguments.ActivityDate) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'UnitOfMeasure')>
				<cfset Where.isEqual(_getAlias(), "UnitOfMeasure", arguments.UnitOfMeasure) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'MetricValue')>
				<cfset Where.isEqual(_getAlias(), "MetricValue", arguments.MetricValue) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'StandardValue')>
				<cfset Where.isEqual(_getAlias(), "StandardValue", arguments.StandardValue) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'ElapsedTime')>
				<cfset Where.isEqual(_getAlias(), "ElapsedTime", arguments.ElapsedTime) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'Description')>
				<cfset Where.isEqual(_getAlias(), "Description", arguments.Description) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'CreatedOn')>
				<cfset Where.isEqual(_getAlias(), "CreatedOn", arguments.CreatedOn) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'CreatedBy')>
				<cfset Where.isEqual(_getAlias(), "CreatedBy", arguments.CreatedBy) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'UpdatedOn')>
				<cfset Where.isEqual(_getAlias(), "UpdatedOn", arguments.UpdatedOn) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'UpdatedBy')>
				<cfset Where.isEqual(_getAlias(), "UpdatedBy", arguments.UpdatedBy) />
			</cfif>
		
		
		<cfloop list="#arguments.sortByFieldList#" index="x">
			<cfset Query.getOrder().setAsc("Activity", trim(x)) />
		</cfloop>
		
		<cfreturn getByQuery(Query,true) />
	</cffunction>
	
	<!--- deleteByFields --->
	<cffunction name="deleteByFields" access="public" hint="I delete all matching rows from the object." output="false" returntype="void">
		
			<cfargument name="ActivityID" hint="If provided, I match the provided value to the ActivityID field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="MemberID" hint="If provided, I match the provided value to the MemberID field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="ActivityTypeID" hint="If provided, I match the provided value to the ActivityTypeID field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="ActivityDate" hint="If provided, I match the provided value to the ActivityDate field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="UnitOfMeasure" hint="If provided, I match the provided value to the UnitOfMeasure field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="MetricValue" hint="If provided, I match the provided value to the MetricValue field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="StandardValue" hint="If provided, I match the provided value to the StandardValue field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="ElapsedTime" hint="If provided, I match the provided value to the ElapsedTime field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="Description" hint="If provided, I match the provided value to the Description field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="CreatedOn" hint="If provided, I match the provided value to the CreatedOn field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="CreatedBy" hint="If provided, I match the provided value to the CreatedBy field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="UpdatedOn" hint="If provided, I match the provided value to the UpdatedOn field in the Activity object." required="no" type="any" _type="string" />
		
			<cfargument name="UpdatedBy" hint="If provided, I match the provided value to the UpdatedBy field in the Activity object." required="no" type="any" _type="string" />
		
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		
		
			<cfif structKeyExists(arguments, 'ActivityID')>
				<cfset Where.isEqual(_getAlias(), "ActivityID", arguments.ActivityID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'MemberID')>
				<cfset Where.isEqual(_getAlias(), "MemberID", arguments.MemberID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'ActivityTypeID')>
				<cfset Where.isEqual(_getAlias(), "ActivityTypeID", arguments.ActivityTypeID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'ActivityDate')>
				<cfset Where.isEqual(_getAlias(), "ActivityDate", arguments.ActivityDate) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'UnitOfMeasure')>
				<cfset Where.isEqual(_getAlias(), "UnitOfMeasure", arguments.UnitOfMeasure) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'MetricValue')>
				<cfset Where.isEqual(_getAlias(), "MetricValue", arguments.MetricValue) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'StandardValue')>
				<cfset Where.isEqual(_getAlias(), "StandardValue", arguments.StandardValue) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'ElapsedTime')>
				<cfset Where.isEqual(_getAlias(), "ElapsedTime", arguments.ElapsedTime) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'Description')>
				<cfset Where.isEqual(_getAlias(), "Description", arguments.Description) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'CreatedOn')>
				<cfset Where.isEqual(_getAlias(), "CreatedOn", arguments.CreatedOn) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'CreatedBy')>
				<cfset Where.isEqual(_getAlias(), "CreatedBy", arguments.CreatedBy) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'UpdatedOn')>
				<cfset Where.isEqual(_getAlias(), "UpdatedOn", arguments.UpdatedOn) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'UpdatedBy')>
				<cfset Where.isEqual(_getAlias(), "UpdatedBy", arguments.UpdatedBy) />
			</cfif>
		
		
		<cfset deleteByQuery(Query,true) />
		<cfreturn />
	</cffunction>
	
</cfcomponent>
	
