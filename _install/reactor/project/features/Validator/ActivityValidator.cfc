
<cfcomponent hint="I am the base validator object for the Activity object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractValidator" >

	<cfset variables.signature = "233DA4675663F37F8BB5A5074C275181" />

	<!--- validate --->
	<cffunction name="validate" access="public" hint="I validate an  record" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
		<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
		<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
		
			<cfset validateActivityID(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateMemberID(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateActivityTypeID(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateActivityDate(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateUnitOfMeasure(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateMetricValue(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateStandardValue(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateElapsedTime(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateDescription(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateCreatedOn(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateCreatedBy(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateUpdatedOn(arguments.ActivityRecord, arguments.ErrorCollection) />
		
			<cfset validateUpdatedBy(arguments.ActivityRecord, arguments.ErrorCollection) />
		
		
		<cfreturn arguments.ErrorCollection />
	</cffunction>
	
	
		<!--- validateActivityID --->
		<cffunction name="validateActivityID" access="public" hint="I validate the ActivityID field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
				<!--- validate ActivityID is provided --->
				<cfset validateActivityIDProvided(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
			<!--- validate ActivityID is numeric --->
			<cfset validateActivityIDDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateMemberID --->
		<cffunction name="validateMemberID" access="public" hint="I validate the MemberID field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
				<!--- validate MemberID is provided --->
				<cfset validateMemberIDProvided(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
			<!--- validate MemberID is numeric --->
			<cfset validateMemberIDDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateActivityTypeID --->
		<cffunction name="validateActivityTypeID" access="public" hint="I validate the ActivityTypeID field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
			
			<!--- validate ActivityTypeID is numeric --->
			<cfset validateActivityTypeIDDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateActivityDate --->
		<cffunction name="validateActivityDate" access="public" hint="I validate the ActivityDate field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
			
			<!--- validate ActivityDate is date --->
			<cfset validateActivityDateDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateUnitOfMeasure --->
		<cffunction name="validateUnitOfMeasure" access="public" hint="I validate the UnitOfMeasure field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
			
			<!--- validate UnitOfMeasure is string --->
			<cfset validateUnitOfMeasureDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
				<!--- validate UnitOfMeasure length --->
				<cfset validateUnitOfMeasureLength(arguments.ActivityRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateMetricValue --->
		<cffunction name="validateMetricValue" access="public" hint="I validate the MetricValue field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
			
			<!--- validate MetricValue is numeric --->
			<cfset validateMetricValueDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateStandardValue --->
		<cffunction name="validateStandardValue" access="public" hint="I validate the StandardValue field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
			
			<!--- validate StandardValue is numeric --->
			<cfset validateStandardValueDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateElapsedTime --->
		<cffunction name="validateElapsedTime" access="public" hint="I validate the ElapsedTime field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
			
			<!--- validate ElapsedTime is string --->
			<cfset validateElapsedTimeDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
				<!--- validate ElapsedTime length --->
				<cfset validateElapsedTimeLength(arguments.ActivityRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateDescription --->
		<cffunction name="validateDescription" access="public" hint="I validate the Description field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
			
			<!--- validate Description is string --->
			<cfset validateDescriptionDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
				<!--- validate Description length --->
				<cfset validateDescriptionLength(arguments.ActivityRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateCreatedOn --->
		<cffunction name="validateCreatedOn" access="public" hint="I validate the CreatedOn field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
				<!--- validate CreatedOn is provided --->
				<cfset validateCreatedOnProvided(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
			<!--- validate CreatedOn is date --->
			<cfset validateCreatedOnDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateCreatedBy --->
		<cffunction name="validateCreatedBy" access="public" hint="I validate the CreatedBy field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
			
			<!--- validate CreatedBy is numeric --->
			<cfset validateCreatedByDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateUpdatedOn --->
		<cffunction name="validateUpdatedOn" access="public" hint="I validate the UpdatedOn field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
				<!--- validate UpdatedOn is provided --->
				<cfset validateUpdatedOnProvided(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
			<!--- validate UpdatedOn is date --->
			<cfset validateUpdatedOnDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateUpdatedBy --->
		<cffunction name="validateUpdatedBy" access="public" hint="I validate the UpdatedBy field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
			
			
			<!--- validate UpdatedBy is numeric --->
			<cfset validateUpdatedByDatatype(arguments.ActivityRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validateActivityIDProvided --->
			<cffunction name="validateActivityIDProvided" access="public" hint="I validate that the ActivityID field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
				<!--- validate ActivityID is provided --->
				<cfif NOT Len(Trim(arguments.ActivityRecord.getActivityID()))>
					<cfset arguments.ErrorCollection.addError("Activity.ActivityID.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateMemberIDProvided --->
			<cffunction name="validateMemberIDProvided" access="public" hint="I validate that the MemberID field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
				<!--- validate MemberID is provided --->
				<cfif NOT Len(Trim(arguments.ActivityRecord.getMemberID()))>
					<cfset arguments.ErrorCollection.addError("Activity.MemberID.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateCreatedOnProvided --->
			<cffunction name="validateCreatedOnProvided" access="public" hint="I validate that the CreatedOn field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
				<!--- validate CreatedOn is provided --->
				<cfif NOT Len(Trim(arguments.ActivityRecord.getCreatedOn()))>
					<cfset arguments.ErrorCollection.addError("Activity.CreatedOn.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateUpdatedOnProvided --->
			<cffunction name="validateUpdatedOnProvided" access="public" hint="I validate that the UpdatedOn field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
				<!--- validate UpdatedOn is provided --->
				<cfif NOT Len(Trim(arguments.ActivityRecord.getUpdatedOn()))>
					<cfset arguments.ErrorCollection.addError("Activity.UpdatedOn.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
		<!--- validateActivityIDDatatype --->
		<cffunction name="validateActivityIDDatatype" access="public" hint="I validate that the ActivityID field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate ActivityID is numeric --->
					<cfif Len(Trim(arguments.ActivityRecord.getActivityID())) AND NOT IsNumeric(arguments.ActivityRecord.getActivityID())>
						<cfset arguments.ErrorCollection.addError("Activity.ActivityID.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateMemberIDDatatype --->
		<cffunction name="validateMemberIDDatatype" access="public" hint="I validate that the MemberID field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate MemberID is numeric --->
					<cfif Len(Trim(arguments.ActivityRecord.getMemberID())) AND NOT IsNumeric(arguments.ActivityRecord.getMemberID())>
						<cfset arguments.ErrorCollection.addError("Activity.MemberID.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateActivityTypeIDDatatype --->
		<cffunction name="validateActivityTypeIDDatatype" access="public" hint="I validate that the ActivityTypeID field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate ActivityTypeID is numeric --->
					<cfif Len(Trim(arguments.ActivityRecord.getActivityTypeID())) AND NOT IsNumeric(arguments.ActivityRecord.getActivityTypeID())>
						<cfset arguments.ErrorCollection.addError("Activity.ActivityTypeID.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateActivityDateDatatype --->
		<cffunction name="validateActivityDateDatatype" access="public" hint="I validate that the ActivityDate field is date." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate ActivityDate is date --->
					<cfif NOT IsDate(arguments.ActivityRecord.getActivityDate()) AND Len(Trim(arguments.ActivityRecord.getActivityDate()))>
						<cfset arguments.ErrorCollection.addError("Activity.ActivityDate.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateUnitOfMeasureDatatype --->
		<cffunction name="validateUnitOfMeasureDatatype" access="public" hint="I validate that the UnitOfMeasure field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate UnitOfMeasure is string --->
					<cfif NOT IsSimpleValue(arguments.ActivityRecord.getUnitOfMeasure())>
						<cfset arguments.ErrorCollection.addError("Activity.UnitOfMeasure.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateMetricValueDatatype --->
		<cffunction name="validateMetricValueDatatype" access="public" hint="I validate that the MetricValue field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate MetricValue is numeric --->
					<cfif Len(Trim(arguments.ActivityRecord.getMetricValue())) AND NOT IsNumeric(arguments.ActivityRecord.getMetricValue())>
						<cfset arguments.ErrorCollection.addError("Activity.MetricValue.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateStandardValueDatatype --->
		<cffunction name="validateStandardValueDatatype" access="public" hint="I validate that the StandardValue field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate StandardValue is numeric --->
					<cfif Len(Trim(arguments.ActivityRecord.getStandardValue())) AND NOT IsNumeric(arguments.ActivityRecord.getStandardValue())>
						<cfset arguments.ErrorCollection.addError("Activity.StandardValue.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateElapsedTimeDatatype --->
		<cffunction name="validateElapsedTimeDatatype" access="public" hint="I validate that the ElapsedTime field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate ElapsedTime is string --->
					<cfif NOT IsSimpleValue(arguments.ActivityRecord.getElapsedTime())>
						<cfset arguments.ErrorCollection.addError("Activity.ElapsedTime.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateDescriptionDatatype --->
		<cffunction name="validateDescriptionDatatype" access="public" hint="I validate that the Description field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate Description is string --->
					<cfif NOT IsSimpleValue(arguments.ActivityRecord.getDescription())>
						<cfset arguments.ErrorCollection.addError("Activity.Description.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateCreatedOnDatatype --->
		<cffunction name="validateCreatedOnDatatype" access="public" hint="I validate that the CreatedOn field is date." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate CreatedOn is date --->
					<cfif NOT IsDate(arguments.ActivityRecord.getCreatedOn())>
						<cfset arguments.ErrorCollection.addError("Activity.CreatedOn.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateCreatedByDatatype --->
		<cffunction name="validateCreatedByDatatype" access="public" hint="I validate that the CreatedBy field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate CreatedBy is numeric --->
					<cfif Len(Trim(arguments.ActivityRecord.getCreatedBy())) AND NOT IsNumeric(arguments.ActivityRecord.getCreatedBy())>
						<cfset arguments.ErrorCollection.addError("Activity.CreatedBy.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateUpdatedOnDatatype --->
		<cffunction name="validateUpdatedOnDatatype" access="public" hint="I validate that the UpdatedOn field is date." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate UpdatedOn is date --->
					<cfif NOT IsDate(arguments.ActivityRecord.getUpdatedOn())>
						<cfset arguments.ErrorCollection.addError("Activity.UpdatedOn.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateUpdatedByDatatype --->
		<cffunction name="validateUpdatedByDatatype" access="public" hint="I validate that the UpdatedBy field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
	
			
					<!--- validate UpdatedBy is numeric --->
					<cfif Len(Trim(arguments.ActivityRecord.getUpdatedBy())) AND NOT IsNumeric(arguments.ActivityRecord.getUpdatedBy())>
						<cfset arguments.ErrorCollection.addError("Activity.UpdatedBy.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validateUnitOfMeasureLength --->
			<cffunction name="validateUnitOfMeasureLength" access="public" hint="I validate that the UnitOfMeasure field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
				
						<!--- validate UnitOfMeasure length --->
						<cfif Len(arguments.ActivityRecord.getUnitOfMeasure()) GT 50 AND 50 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("Activity.UnitOfMeasure.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateElapsedTimeLength --->
			<cffunction name="validateElapsedTimeLength" access="public" hint="I validate that the ElapsedTime field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
				
						<!--- validate ElapsedTime length --->
						<cfif Len(arguments.ActivityRecord.getElapsedTime()) GT 0 AND 0 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("Activity.ElapsedTime.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateDescriptionLength --->
			<cffunction name="validateDescriptionLength" access="public" hint="I validate that the Description field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="ActivityRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.features.Record.ActivityRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.ActivityRecord._getDictionary())#" />
		
				
						<!--- validate Description length --->
						<cfif Len(arguments.ActivityRecord.getDescription()) GT 4000 AND 4000 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("Activity.Description.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
	
</cfcomponent>
	
