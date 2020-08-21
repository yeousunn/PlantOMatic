
<cfcomponent hint="I am the base validator object for the categories object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractValidator" >

	<cfset variables.signature = "63A56B2956C8485949C39740D14D189C" />

	<!--- validate --->
	<cffunction name="validate" access="public" hint="I validate an  record" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
		<cfargument name="categoriesRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.categoriesRecord" />
		<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.categoriesRecord._getDictionary())#" />
		
		
			<cfset validatecategoryID(arguments.categoriesRecord, arguments.ErrorCollection) />
		
			<cfset validatecategory(arguments.categoriesRecord, arguments.ErrorCollection) />
		
		
		<cfreturn arguments.ErrorCollection />
	</cffunction>
	
	
		<!--- validatecategoryID --->
		<cffunction name="validatecategoryID" access="public" hint="I validate the categoryID field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="categoriesRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.categoriesRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.categoriesRecord._getDictionary())#" />
		
			
				<!--- validate categoryID is provided --->
				<cfset validatecategoryIDProvided(arguments.categoriesRecord, arguments.ErrorCollection)>
			
			
			<!--- validate categoryID is numeric --->
			<cfset validatecategoryIDDatatype(arguments.categoriesRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatecategory --->
		<cffunction name="validatecategory" access="public" hint="I validate the category field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="categoriesRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.categoriesRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.categoriesRecord._getDictionary())#" />
		
			
				<!--- validate category is provided --->
				<cfset validatecategoryProvided(arguments.categoriesRecord, arguments.ErrorCollection)>
			
			
			<!--- validate category is string --->
			<cfset validatecategoryDatatype(arguments.categoriesRecord, arguments.ErrorCollection)>
			
			
				<!--- validate category length --->
				<cfset validatecategoryLength(arguments.categoriesRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validatecategoryIDProvided --->
			<cffunction name="validatecategoryIDProvided" access="public" hint="I validate that the categoryID field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="categoriesRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.categoriesRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.categoriesRecord._getDictionary())#" />
		
				<!--- validate categoryID is provided --->
				<cfif NOT Len(Trim(arguments.categoriesRecord.getcategoryID()))>
					<cfset arguments.ErrorCollection.addError("categories.categoryID.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validatecategoryProvided --->
			<cffunction name="validatecategoryProvided" access="public" hint="I validate that the category field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="categoriesRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.categoriesRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.categoriesRecord._getDictionary())#" />
		
				<!--- validate category is provided --->
				<cfif NOT Len(Trim(arguments.categoriesRecord.getcategory()))>
					<cfset arguments.ErrorCollection.addError("categories.category.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
		<!--- validatecategoryIDDatatype --->
		<cffunction name="validatecategoryIDDatatype" access="public" hint="I validate that the categoryID field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="categoriesRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.categoriesRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.categoriesRecord._getDictionary())#" />
	
			
					<!--- validate categoryID is numeric --->
					<cfif Len(Trim(arguments.categoriesRecord.getcategoryID())) AND NOT IsNumeric(arguments.categoriesRecord.getcategoryID())>
						<cfset arguments.ErrorCollection.addError("categories.categoryID.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatecategoryDatatype --->
		<cffunction name="validatecategoryDatatype" access="public" hint="I validate that the category field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="categoriesRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.categoriesRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.categoriesRecord._getDictionary())#" />
	
			
					<!--- validate category is string --->
					<cfif NOT IsSimpleValue(arguments.categoriesRecord.getcategory())>
						<cfset arguments.ErrorCollection.addError("categories.category.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validatecategoryLength --->
			<cffunction name="validatecategoryLength" access="public" hint="I validate that the category field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="categoriesRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.categoriesRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.categoriesRecord._getDictionary())#" />
		
				
						<!--- validate category length --->
						<cfif Len(arguments.categoriesRecord.getcategory()) GT 255 AND 255 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("categories.category.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
	
</cfcomponent>
	
