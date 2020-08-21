
<cfcomponent hint="I am the base validator object for the plant object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractValidator" >

	<cfset variables.signature = "06E1CD302A971A3BA8A86C956E608391" />

	<!--- validate --->
	<cffunction name="validate" access="public" hint="I validate an  record" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
		<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
		<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
		
			<cfset validatePlantID(arguments.plantRecord, arguments.ErrorCollection) />
		
			<cfset validateSymbol(arguments.plantRecord, arguments.ErrorCollection) />
		
			<cfset validateSynonymSymbol(arguments.plantRecord, arguments.ErrorCollection) />
		
			<cfset validateScientificNameWithAuthor(arguments.plantRecord, arguments.ErrorCollection) />
		
			<cfset validateCommonName(arguments.plantRecord, arguments.ErrorCollection) />
		
			<cfset validateFamily(arguments.plantRecord, arguments.ErrorCollection) />
		
		
		<cfreturn arguments.ErrorCollection />
	</cffunction>
	
	
		<!--- validatePlantID --->
		<cffunction name="validatePlantID" access="public" hint="I validate the PlantID field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
			
				<!--- validate PlantID is provided --->
				<cfset validatePlantIDProvided(arguments.plantRecord, arguments.ErrorCollection)>
			
			
			<!--- validate PlantID is numeric --->
			<cfset validatePlantIDDatatype(arguments.plantRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateSymbol --->
		<cffunction name="validateSymbol" access="public" hint="I validate the Symbol field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
			
				<!--- validate Symbol is provided --->
				<cfset validateSymbolProvided(arguments.plantRecord, arguments.ErrorCollection)>
			
			
			<!--- validate Symbol is string --->
			<cfset validateSymbolDatatype(arguments.plantRecord, arguments.ErrorCollection)>
			
			
				<!--- validate Symbol length --->
				<cfset validateSymbolLength(arguments.plantRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateSynonymSymbol --->
		<cffunction name="validateSynonymSymbol" access="public" hint="I validate the SynonymSymbol field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
			
			
			<!--- validate SynonymSymbol is string --->
			<cfset validateSynonymSymbolDatatype(arguments.plantRecord, arguments.ErrorCollection)>
			
			
				<!--- validate SynonymSymbol length --->
				<cfset validateSynonymSymbolLength(arguments.plantRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateScientificNameWithAuthor --->
		<cffunction name="validateScientificNameWithAuthor" access="public" hint="I validate the ScientificNameWithAuthor field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
			
				<!--- validate ScientificNameWithAuthor is provided --->
				<cfset validateScientificNameWithAuthorProvided(arguments.plantRecord, arguments.ErrorCollection)>
			
			
			<!--- validate ScientificNameWithAuthor is string --->
			<cfset validateScientificNameWithAuthorDatatype(arguments.plantRecord, arguments.ErrorCollection)>
			
			
				<!--- validate ScientificNameWithAuthor length --->
				<cfset validateScientificNameWithAuthorLength(arguments.plantRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateCommonName --->
		<cffunction name="validateCommonName" access="public" hint="I validate the CommonName field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
			
			
			<!--- validate CommonName is string --->
			<cfset validateCommonNameDatatype(arguments.plantRecord, arguments.ErrorCollection)>
			
			
				<!--- validate CommonName length --->
				<cfset validateCommonNameLength(arguments.plantRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateFamily --->
		<cffunction name="validateFamily" access="public" hint="I validate the Family field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
			
			
			<!--- validate Family is string --->
			<cfset validateFamilyDatatype(arguments.plantRecord, arguments.ErrorCollection)>
			
			
				<!--- validate Family length --->
				<cfset validateFamilyLength(arguments.plantRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validatePlantIDProvided --->
			<cffunction name="validatePlantIDProvided" access="public" hint="I validate that the PlantID field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
				<!--- validate PlantID is provided --->
				<cfif NOT Len(Trim(arguments.plantRecord.getPlantID()))>
					<cfset arguments.ErrorCollection.addError("plant.PlantID.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateSymbolProvided --->
			<cffunction name="validateSymbolProvided" access="public" hint="I validate that the Symbol field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
				<!--- validate Symbol is provided --->
				<cfif NOT Len(Trim(arguments.plantRecord.getSymbol()))>
					<cfset arguments.ErrorCollection.addError("plant.Symbol.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateScientificNameWithAuthorProvided --->
			<cffunction name="validateScientificNameWithAuthorProvided" access="public" hint="I validate that the ScientificNameWithAuthor field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
				<!--- validate ScientificNameWithAuthor is provided --->
				<cfif NOT Len(Trim(arguments.plantRecord.getScientificNameWithAuthor()))>
					<cfset arguments.ErrorCollection.addError("plant.ScientificNameWithAuthor.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
		<!--- validatePlantIDDatatype --->
		<cffunction name="validatePlantIDDatatype" access="public" hint="I validate that the PlantID field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
	
			
					<!--- validate PlantID is numeric --->
					<cfif Len(Trim(arguments.plantRecord.getPlantID())) AND NOT IsNumeric(arguments.plantRecord.getPlantID())>
						<cfset arguments.ErrorCollection.addError("plant.PlantID.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateSymbolDatatype --->
		<cffunction name="validateSymbolDatatype" access="public" hint="I validate that the Symbol field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
	
			
					<!--- validate Symbol is string --->
					<cfif NOT IsSimpleValue(arguments.plantRecord.getSymbol())>
						<cfset arguments.ErrorCollection.addError("plant.Symbol.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateSynonymSymbolDatatype --->
		<cffunction name="validateSynonymSymbolDatatype" access="public" hint="I validate that the SynonymSymbol field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
	
			
					<!--- validate SynonymSymbol is string --->
					<cfif NOT IsSimpleValue(arguments.plantRecord.getSynonymSymbol())>
						<cfset arguments.ErrorCollection.addError("plant.SynonymSymbol.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateScientificNameWithAuthorDatatype --->
		<cffunction name="validateScientificNameWithAuthorDatatype" access="public" hint="I validate that the ScientificNameWithAuthor field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
	
			
					<!--- validate ScientificNameWithAuthor is string --->
					<cfif NOT IsSimpleValue(arguments.plantRecord.getScientificNameWithAuthor())>
						<cfset arguments.ErrorCollection.addError("plant.ScientificNameWithAuthor.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateCommonNameDatatype --->
		<cffunction name="validateCommonNameDatatype" access="public" hint="I validate that the CommonName field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
	
			
					<!--- validate CommonName is string --->
					<cfif NOT IsSimpleValue(arguments.plantRecord.getCommonName())>
						<cfset arguments.ErrorCollection.addError("plant.CommonName.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateFamilyDatatype --->
		<cffunction name="validateFamilyDatatype" access="public" hint="I validate that the Family field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
	
			
					<!--- validate Family is string --->
					<cfif NOT IsSimpleValue(arguments.plantRecord.getFamily())>
						<cfset arguments.ErrorCollection.addError("plant.Family.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validateSymbolLength --->
			<cffunction name="validateSymbolLength" access="public" hint="I validate that the Symbol field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
				
						<!--- validate Symbol length --->
						<cfif Len(arguments.plantRecord.getSymbol()) GT 20 AND 20 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("plant.Symbol.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateSynonymSymbolLength --->
			<cffunction name="validateSynonymSymbolLength" access="public" hint="I validate that the SynonymSymbol field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
				
						<!--- validate SynonymSymbol length --->
						<cfif Len(arguments.plantRecord.getSynonymSymbol()) GT 20 AND 20 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("plant.SynonymSymbol.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateScientificNameWithAuthorLength --->
			<cffunction name="validateScientificNameWithAuthorLength" access="public" hint="I validate that the ScientificNameWithAuthor field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
				
						<!--- validate ScientificNameWithAuthor length --->
						<cfif Len(arguments.plantRecord.getScientificNameWithAuthor()) GT 250 AND 250 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("plant.ScientificNameWithAuthor.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateCommonNameLength --->
			<cffunction name="validateCommonNameLength" access="public" hint="I validate that the CommonName field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
				
						<!--- validate CommonName length --->
						<cfif Len(arguments.plantRecord.getCommonName()) GT 150 AND 150 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("plant.CommonName.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateFamilyLength --->
			<cffunction name="validateFamilyLength" access="public" hint="I validate that the Family field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="plantRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.PlantOMatic.Record.plantRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.plantRecord._getDictionary())#" />
		
				
						<!--- validate Family length --->
						<cfif Len(arguments.plantRecord.getFamily()) GT 150 AND 150 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("plant.Family.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
	
</cfcomponent>
	
