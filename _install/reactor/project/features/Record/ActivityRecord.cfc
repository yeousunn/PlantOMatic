
<cfcomponent hint="I am the base record representing the Activity object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractRecord" >
	
	<cfset variables.signature = "233DA4675663F37F8BB5A5074C275181" />

	<cffunction name="init" access="public" hint="I configure and return this record object." output="false" returntype="any" _returntype="reactor.project.features.Record.ActivityRecord">
		
			<cfargument name="ActivityID" hint="I am the default value for the ActivityID field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="MemberID" hint="I am the default value for the MemberID field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="ActivityTypeID" hint="I am the default value for the ActivityTypeID field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="ActivityDate" hint="I am the default value for the ActivityDate field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="UnitOfMeasure" hint="I am the default value for the UnitOfMeasure field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="MetricValue" hint="I am the default value for the MetricValue field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="StandardValue" hint="I am the default value for the StandardValue field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="ElapsedTime" hint="I am the default value for the ElapsedTime field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="Description" hint="I am the default value for the Description field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="CreatedOn" hint="I am the default value for the CreatedOn field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="CreatedBy" hint="I am the default value for the CreatedBy field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="UpdatedOn" hint="I am the default value for the UpdatedOn field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="UpdatedBy" hint="I am the default value for the UpdatedBy field." required="no" type="any" _type="string" default="" />
		
			<cfset setActivityID(arguments.ActivityID) />
		
			<cfset setMemberID(arguments.MemberID) />
		
			<cfset setActivityTypeID(arguments.ActivityTypeID) />
		
			<cfset setActivityDate(arguments.ActivityDate) />
		
			<cfset setUnitOfMeasure(arguments.UnitOfMeasure) />
		
			<cfset setMetricValue(arguments.MetricValue) />
		
			<cfset setStandardValue(arguments.StandardValue) />
		
			<cfset setElapsedTime(arguments.ElapsedTime) />
		
			<cfset setDescription(arguments.Description) />
		
			<cfset setCreatedOn(arguments.CreatedOn) />
		
			<cfset setCreatedBy(arguments.CreatedBy) />
		
			<cfset setUpdatedOn(arguments.UpdatedOn) />
		
			<cfset setUpdatedBy(arguments.UpdatedBy) />
		
		<cfreturn this />
	</cffunction>
	
	
			<!--- ActivityID --->
			<cffunction name="setActivityID" hint="I set the ActivityID value ." access="public" output="false" returntype="void">
				<cfargument name="ActivityID" hint="I am this record's ActivityID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().ActivityID = arguments.ActivityID />
					
			</cffunction>
		
		
		<cffunction name="getActivityID" hint="I get the ActivityID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().ActivityID />
		</cffunction>	
	
			<!--- MemberID --->
			<cffunction name="setMemberID" hint="I set the MemberID value ." access="public" output="false" returntype="void">
				<cfargument name="MemberID" hint="I am this record's MemberID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().MemberID = arguments.MemberID />
					
			</cffunction>
		
		
		<cffunction name="getMemberID" hint="I get the MemberID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().MemberID />
		</cffunction>	
	
			<!--- ActivityTypeID --->
			<cffunction name="setActivityTypeID" hint="I set the ActivityTypeID value ." access="public" output="false" returntype="void">
				<cfargument name="ActivityTypeID" hint="I am this record's ActivityTypeID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().ActivityTypeID = arguments.ActivityTypeID />
					
			</cffunction>
		
		
		<cffunction name="getActivityTypeID" hint="I get the ActivityTypeID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().ActivityTypeID />
		</cffunction>	
	
			<!--- ActivityDate --->
			<cffunction name="setActivityDate" hint="I set the ActivityDate value ." access="public" output="false" returntype="void">
				<cfargument name="ActivityDate" hint="I am this record's ActivityDate value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().ActivityDate = arguments.ActivityDate />
					
			</cffunction>
		
		
		<cffunction name="getActivityDate" hint="I get the ActivityDate value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().ActivityDate />
		</cffunction>	
	
			<!--- UnitOfMeasure --->
			<cffunction name="setUnitOfMeasure" hint="I set the UnitOfMeasure value ." access="public" output="false" returntype="void">
				<cfargument name="UnitOfMeasure" hint="I am this record's UnitOfMeasure value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().UnitOfMeasure = arguments.UnitOfMeasure />
					
			</cffunction>
		
		
		<cffunction name="getUnitOfMeasure" hint="I get the UnitOfMeasure value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().UnitOfMeasure />
		</cffunction>	
	
			<!--- MetricValue --->
			<cffunction name="setMetricValue" hint="I set the MetricValue value ." access="public" output="false" returntype="void">
				<cfargument name="MetricValue" hint="I am this record's MetricValue value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().MetricValue = arguments.MetricValue />
					
			</cffunction>
		
		
		<cffunction name="getMetricValue" hint="I get the MetricValue value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().MetricValue />
		</cffunction>	
	
			<!--- StandardValue --->
			<cffunction name="setStandardValue" hint="I set the StandardValue value ." access="public" output="false" returntype="void">
				<cfargument name="StandardValue" hint="I am this record's StandardValue value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().StandardValue = arguments.StandardValue />
					
			</cffunction>
		
		
		<cffunction name="getStandardValue" hint="I get the StandardValue value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().StandardValue />
		</cffunction>	
	
			<!--- ElapsedTime --->
			<cffunction name="setElapsedTime" hint="I set the ElapsedTime value ." access="public" output="false" returntype="void">
				<cfargument name="ElapsedTime" hint="I am this record's ElapsedTime value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().ElapsedTime = arguments.ElapsedTime />
					
			</cffunction>
		
		
		<cffunction name="getElapsedTime" hint="I get the ElapsedTime value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().ElapsedTime />
		</cffunction>	
	
			<!--- Description --->
			<cffunction name="setDescription" hint="I set the Description value ." access="public" output="false" returntype="void">
				<cfargument name="Description" hint="I am this record's Description value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().Description = arguments.Description />
					
			</cffunction>
		
		
		<cffunction name="getDescription" hint="I get the Description value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().Description />
		</cffunction>	
	
			<!--- CreatedOn --->
			<cffunction name="setCreatedOn" hint="I set the CreatedOn value ." access="public" output="false" returntype="void">
				<cfargument name="CreatedOn" hint="I am this record's CreatedOn value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().CreatedOn = arguments.CreatedOn />
					
			</cffunction>
		
		
		<cffunction name="getCreatedOn" hint="I get the CreatedOn value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().CreatedOn />
		</cffunction>	
	
			<!--- CreatedBy --->
			<cffunction name="setCreatedBy" hint="I set the CreatedBy value ." access="public" output="false" returntype="void">
				<cfargument name="CreatedBy" hint="I am this record's CreatedBy value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().CreatedBy = arguments.CreatedBy />
					
			</cffunction>
		
		
		<cffunction name="getCreatedBy" hint="I get the CreatedBy value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().CreatedBy />
		</cffunction>	
	
			<!--- UpdatedOn --->
			<cffunction name="setUpdatedOn" hint="I set the UpdatedOn value ." access="public" output="false" returntype="void">
				<cfargument name="UpdatedOn" hint="I am this record's UpdatedOn value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().UpdatedOn = arguments.UpdatedOn />
					
			</cffunction>
		
		
		<cffunction name="getUpdatedOn" hint="I get the UpdatedOn value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().UpdatedOn />
		</cffunction>	
	
			<!--- UpdatedBy --->
			<cffunction name="setUpdatedBy" hint="I set the UpdatedBy value ." access="public" output="false" returntype="void">
				<cfargument name="UpdatedBy" hint="I am this record's UpdatedBy value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().UpdatedBy = arguments.UpdatedBy />
					
			</cffunction>
		
		
		<cffunction name="getUpdatedBy" hint="I get the UpdatedBy value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().UpdatedBy />
		</cffunction>	
	
	<!--- exists --->
	<cffunction name="exists" access="public" hint="I check to see if this record exists." output="false" returntype="any" _returntype="boolean">
		<cfreturn _getDao().exists(_getTo()) />
	</cffunction>
		
	
	<!--- to --->
	<cffunction name="_setTo" access="public" output="false" returntype="void">
		<cfargument name="to" hint="I am this record's transfer object." required="yes" type="any" _type="reactor.project.features.To.ActivityTo" />
		<cfif isDeleted()>
			<cfthrow message="Record Deleted"
				detail="The record you're using has been deleted.  There are some properties which will continue to function after a record has been deleted, but not all of them.  Please create a new record and go from there."
				type="reactor.record.RecordDeleted" />
		</cfif>
		<cfset variables.to = arguments.to />
	</cffunction>
	<cffunction name="_getTo" access="public" output="false" returntype="any" _returntype="reactor.project.features.To.ActivityTo">
		<cfif isDeleted()>
			<cfthrow message="Record Deleted"
				detail="The record you're using has been deleted.  There are some properties which will continue to function after a record has been deleted, but not all of them.  Please create a new record and go from there."
				type="reactor.record.RecordDeleted" />
		</cfif>
		
		<cfif NOT StructKeyExists(variables, "to") >
			<cfset variables.to = _getReactorFactory().createTo(_getAlias()) >
		</cfif>
		
		<cfreturn variables.to />
	</cffunction>	
	
	<!--- initialTo --->
	<cffunction name="_setInitialTo" access="private" output="false" returntype="void">
		<cfargument name="initialTo" hint="I am this record's initial transfer object." required="yes" type="any" _type="reactor.project.features.To.ActivityTo" />
		<cfset variables.initialTo = arguments.initialTo />
	</cffunction>
	<cffunction name="_getInitialTo" access="private" output="false" returntype="any" _returntype="reactor.project.features.To.ActivityTo">
		
		<cfif NOT StructKeyExists(variables, "initialTo") >
			<cfset variables.initialTo = _getReactorFactory().createTo(_getAlias()) >
		</cfif>
		
		<cfreturn variables.initialTo />
	</cffunction>	
	
	<!--- dao --->
	<cffunction name="_setDao" access="private" output="false" returntype="void">
	    <cfargument name="dao" hint="I am the Dao this Record uses to load and save itself." required="yes" type="any" _type="reactor.project.features.Dao.ActivityDao" />
	    <cfset variables.dao = arguments.dao />
	</cffunction>
	<cffunction name="_getDao" access="private" output="false" returntype="any" _returntype="reactor.project.features.Dao.ActivityDao" >
	   
	    <cfif NOT StructKeyExists(variables, "dao") >
			<cfset variables.dao = _getReactorFactory().createDao(_getAlias()) >
		</cfif>
		
	    <cfreturn variables.dao />
	</cffunction>
	
</cfcomponent>
	
