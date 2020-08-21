
<cfcomponent hint="I am the base validator object for the part object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractValidator" >

	<cfset variables.signature = "0551E3A4D8EEB20B4CDC436E2129E24A" />

	<!--- validate --->
	<cffunction name="validate" access="public" hint="I validate an  record" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
		<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
		<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
		
			<cfset validatepartID(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validatesectionID(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validatepartName(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validatepartInstructions(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validaterepeatCount(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validatepartOrder(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validatepdfFormat(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validatecreatedBy(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validatecreatedOn(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validatelastUpdateBy(arguments.partRecord, arguments.ErrorCollection) />
		
			<cfset validatelastUpdateOn(arguments.partRecord, arguments.ErrorCollection) />
		
		
		<cfreturn arguments.ErrorCollection />
	</cffunction>
	
	
		<!--- validatepartID --->
		<cffunction name="validatepartID" access="public" hint="I validate the partID field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
				<!--- validate partID is provided --->
				<cfset validatepartIDProvided(arguments.partRecord, arguments.ErrorCollection)>
			
			
			<!--- validate partID is numeric --->
			<cfset validatepartIDDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatesectionID --->
		<cffunction name="validatesectionID" access="public" hint="I validate the sectionID field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
			
			<!--- validate sectionID is numeric --->
			<cfset validatesectionIDDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatepartName --->
		<cffunction name="validatepartName" access="public" hint="I validate the partName field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
				<!--- validate partName is provided --->
				<cfset validatepartNameProvided(arguments.partRecord, arguments.ErrorCollection)>
			
			
			<!--- validate partName is string --->
			<cfset validatepartNameDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
				<!--- validate partName length --->
				<cfset validatepartNameLength(arguments.partRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatepartInstructions --->
		<cffunction name="validatepartInstructions" access="public" hint="I validate the partInstructions field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
			
			<!--- validate partInstructions is string --->
			<cfset validatepartInstructionsDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
				<!--- validate partInstructions length --->
				<cfset validatepartInstructionsLength(arguments.partRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validaterepeatCount --->
		<cffunction name="validaterepeatCount" access="public" hint="I validate the repeatCount field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
				<!--- validate repeatCount is provided --->
				<cfset validaterepeatCountProvided(arguments.partRecord, arguments.ErrorCollection)>
			
			
			<!--- validate repeatCount is numeric --->
			<cfset validaterepeatCountDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatepartOrder --->
		<cffunction name="validatepartOrder" access="public" hint="I validate the partOrder field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
			
			<!--- validate partOrder is numeric --->
			<cfset validatepartOrderDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatepdfFormat --->
		<cffunction name="validatepdfFormat" access="public" hint="I validate the pdfFormat field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
			
			<!--- validate pdfFormat is string --->
			<cfset validatepdfFormatDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
				<!--- validate pdfFormat length --->
				<cfset validatepdfFormatLength(arguments.partRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatecreatedBy --->
		<cffunction name="validatecreatedBy" access="public" hint="I validate the createdBy field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
				<!--- validate createdBy is provided --->
				<cfset validatecreatedByProvided(arguments.partRecord, arguments.ErrorCollection)>
			
			
			<!--- validate createdBy is numeric --->
			<cfset validatecreatedByDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatecreatedOn --->
		<cffunction name="validatecreatedOn" access="public" hint="I validate the createdOn field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
				<!--- validate createdOn is provided --->
				<cfset validatecreatedOnProvided(arguments.partRecord, arguments.ErrorCollection)>
			
			
			<!--- validate createdOn is date --->
			<cfset validatecreatedOnDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatelastUpdateBy --->
		<cffunction name="validatelastUpdateBy" access="public" hint="I validate the lastUpdateBy field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
				<!--- validate lastUpdateBy is provided --->
				<cfset validatelastUpdateByProvided(arguments.partRecord, arguments.ErrorCollection)>
			
			
			<!--- validate lastUpdateBy is numeric --->
			<cfset validatelastUpdateByDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatelastUpdateOn --->
		<cffunction name="validatelastUpdateOn" access="public" hint="I validate the lastUpdateOn field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
			
				<!--- validate lastUpdateOn is provided --->
				<cfset validatelastUpdateOnProvided(arguments.partRecord, arguments.ErrorCollection)>
			
			
			<!--- validate lastUpdateOn is date --->
			<cfset validatelastUpdateOnDatatype(arguments.partRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validatepartIDProvided --->
			<cffunction name="validatepartIDProvided" access="public" hint="I validate that the partID field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				<!--- validate partID is provided --->
				<cfif NOT Len(Trim(arguments.partRecord.getpartID()))>
					<cfset arguments.ErrorCollection.addError("part.partID.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validatepartNameProvided --->
			<cffunction name="validatepartNameProvided" access="public" hint="I validate that the partName field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				<!--- validate partName is provided --->
				<cfif NOT Len(Trim(arguments.partRecord.getpartName()))>
					<cfset arguments.ErrorCollection.addError("part.partName.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validaterepeatCountProvided --->
			<cffunction name="validaterepeatCountProvided" access="public" hint="I validate that the repeatCount field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				<!--- validate repeatCount is provided --->
				<cfif NOT Len(Trim(arguments.partRecord.getrepeatCount()))>
					<cfset arguments.ErrorCollection.addError("part.repeatCount.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validatecreatedByProvided --->
			<cffunction name="validatecreatedByProvided" access="public" hint="I validate that the createdBy field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				<!--- validate createdBy is provided --->
				<cfif NOT Len(Trim(arguments.partRecord.getcreatedBy()))>
					<cfset arguments.ErrorCollection.addError("part.createdBy.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validatecreatedOnProvided --->
			<cffunction name="validatecreatedOnProvided" access="public" hint="I validate that the createdOn field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				<!--- validate createdOn is provided --->
				<cfif NOT Len(Trim(arguments.partRecord.getcreatedOn()))>
					<cfset arguments.ErrorCollection.addError("part.createdOn.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validatelastUpdateByProvided --->
			<cffunction name="validatelastUpdateByProvided" access="public" hint="I validate that the lastUpdateBy field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				<!--- validate lastUpdateBy is provided --->
				<cfif NOT Len(Trim(arguments.partRecord.getlastUpdateBy()))>
					<cfset arguments.ErrorCollection.addError("part.lastUpdateBy.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validatelastUpdateOnProvided --->
			<cffunction name="validatelastUpdateOnProvided" access="public" hint="I validate that the lastUpdateOn field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				<!--- validate lastUpdateOn is provided --->
				<cfif NOT Len(Trim(arguments.partRecord.getlastUpdateOn()))>
					<cfset arguments.ErrorCollection.addError("part.lastUpdateOn.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
		<!--- validatepartIDDatatype --->
		<cffunction name="validatepartIDDatatype" access="public" hint="I validate that the partID field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate partID is numeric --->
					<cfif Len(Trim(arguments.partRecord.getpartID())) AND NOT IsNumeric(arguments.partRecord.getpartID())>
						<cfset arguments.ErrorCollection.addError("part.partID.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatesectionIDDatatype --->
		<cffunction name="validatesectionIDDatatype" access="public" hint="I validate that the sectionID field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate sectionID is numeric --->
					<cfif Len(Trim(arguments.partRecord.getsectionID())) AND NOT IsNumeric(arguments.partRecord.getsectionID())>
						<cfset arguments.ErrorCollection.addError("part.sectionID.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatepartNameDatatype --->
		<cffunction name="validatepartNameDatatype" access="public" hint="I validate that the partName field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate partName is string --->
					<cfif NOT IsSimpleValue(arguments.partRecord.getpartName())>
						<cfset arguments.ErrorCollection.addError("part.partName.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatepartInstructionsDatatype --->
		<cffunction name="validatepartInstructionsDatatype" access="public" hint="I validate that the partInstructions field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate partInstructions is string --->
					<cfif NOT IsSimpleValue(arguments.partRecord.getpartInstructions())>
						<cfset arguments.ErrorCollection.addError("part.partInstructions.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validaterepeatCountDatatype --->
		<cffunction name="validaterepeatCountDatatype" access="public" hint="I validate that the repeatCount field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate repeatCount is numeric --->
					<cfif Len(Trim(arguments.partRecord.getrepeatCount())) AND NOT IsNumeric(arguments.partRecord.getrepeatCount())>
						<cfset arguments.ErrorCollection.addError("part.repeatCount.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatepartOrderDatatype --->
		<cffunction name="validatepartOrderDatatype" access="public" hint="I validate that the partOrder field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate partOrder is numeric --->
					<cfif Len(Trim(arguments.partRecord.getpartOrder())) AND NOT IsNumeric(arguments.partRecord.getpartOrder())>
						<cfset arguments.ErrorCollection.addError("part.partOrder.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatepdfFormatDatatype --->
		<cffunction name="validatepdfFormatDatatype" access="public" hint="I validate that the pdfFormat field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate pdfFormat is string --->
					<cfif NOT IsSimpleValue(arguments.partRecord.getpdfFormat())>
						<cfset arguments.ErrorCollection.addError("part.pdfFormat.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatecreatedByDatatype --->
		<cffunction name="validatecreatedByDatatype" access="public" hint="I validate that the createdBy field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate createdBy is numeric --->
					<cfif Len(Trim(arguments.partRecord.getcreatedBy())) AND NOT IsNumeric(arguments.partRecord.getcreatedBy())>
						<cfset arguments.ErrorCollection.addError("part.createdBy.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatecreatedOnDatatype --->
		<cffunction name="validatecreatedOnDatatype" access="public" hint="I validate that the createdOn field is date." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate createdOn is date --->
					<cfif NOT IsDate(arguments.partRecord.getcreatedOn())>
						<cfset arguments.ErrorCollection.addError("part.createdOn.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatelastUpdateByDatatype --->
		<cffunction name="validatelastUpdateByDatatype" access="public" hint="I validate that the lastUpdateBy field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate lastUpdateBy is numeric --->
					<cfif Len(Trim(arguments.partRecord.getlastUpdateBy())) AND NOT IsNumeric(arguments.partRecord.getlastUpdateBy())>
						<cfset arguments.ErrorCollection.addError("part.lastUpdateBy.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatelastUpdateOnDatatype --->
		<cffunction name="validatelastUpdateOnDatatype" access="public" hint="I validate that the lastUpdateOn field is date." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
	
			
					<!--- validate lastUpdateOn is date --->
					<cfif NOT IsDate(arguments.partRecord.getlastUpdateOn())>
						<cfset arguments.ErrorCollection.addError("part.lastUpdateOn.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validatepartNameLength --->
			<cffunction name="validatepartNameLength" access="public" hint="I validate that the partName field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				
						<!--- validate partName length --->
						<cfif Len(arguments.partRecord.getpartName()) GT 50 AND 50 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("part.partName.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validatepartInstructionsLength --->
			<cffunction name="validatepartInstructionsLength" access="public" hint="I validate that the partInstructions field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				
						<!--- validate partInstructions length --->
						<cfif Len(arguments.partRecord.getpartInstructions()) GT 500 AND 500 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("part.partInstructions.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validatepdfFormatLength --->
			<cffunction name="validatepdfFormatLength" access="public" hint="I validate that the pdfFormat field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="partRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgtest.Record.partRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.partRecord._getDictionary())#" />
		
				
						<!--- validate pdfFormat length --->
						<cfif Len(arguments.partRecord.getpdfFormat()) GT 20 AND 20 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("part.pdfFormat.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
	
</cfcomponent>
	
