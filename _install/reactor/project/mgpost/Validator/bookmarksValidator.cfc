
<cfcomponent hint="I am the base validator object for the bookmarks object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractValidator" >

	<cfset variables.signature = "994F275F64945304AEEE8B79E167D27C" />

	<!--- validate --->
	<cffunction name="validate" access="public" hint="I validate an  record" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
		<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord" />
		<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
		
		
			<cfset validatebookmarkID(arguments.bookmarksRecord, arguments.ErrorCollection) />
		
			<cfset validatename(arguments.bookmarksRecord, arguments.ErrorCollection) />
		
			<cfset validateurl(arguments.bookmarksRecord, arguments.ErrorCollection) />
		
		
		<cfreturn arguments.ErrorCollection />
	</cffunction>
	
	
		<!--- validatebookmarkID --->
		<cffunction name="validatebookmarkID" access="public" hint="I validate the bookmarkID field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
		
			
				<!--- validate bookmarkID is provided --->
				<cfset validatebookmarkIDProvided(arguments.bookmarksRecord, arguments.ErrorCollection)>
			
			
			<!--- validate bookmarkID is numeric --->
			<cfset validatebookmarkIDDatatype(arguments.bookmarksRecord, arguments.ErrorCollection)>
			
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatename --->
		<cffunction name="validatename" access="public" hint="I validate the name field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
		
			
				<!--- validate name is provided --->
				<cfset validatenameProvided(arguments.bookmarksRecord, arguments.ErrorCollection)>
			
			
			<!--- validate name is string --->
			<cfset validatenameDatatype(arguments.bookmarksRecord, arguments.ErrorCollection)>
			
			
				<!--- validate name length --->
				<cfset validatenameLength(arguments.bookmarksRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateurl --->
		<cffunction name="validateurl" access="public" hint="I validate the url field" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord"/>
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
		
			
				<!--- validate url is provided --->
				<cfset validateurlProvided(arguments.bookmarksRecord, arguments.ErrorCollection)>
			
			
			<!--- validate url is string --->
			<cfset validateurlDatatype(arguments.bookmarksRecord, arguments.ErrorCollection)>
			
			
				<!--- validate url length --->
				<cfset validateurlLength(arguments.bookmarksRecord, arguments.ErrorCollection)>
			
		
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validatebookmarkIDProvided --->
			<cffunction name="validatebookmarkIDProvided" access="public" hint="I validate that the bookmarkID field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
		
				<!--- validate bookmarkID is provided --->
				<cfif NOT Len(Trim(arguments.bookmarksRecord.getbookmarkID()))>
					<cfset arguments.ErrorCollection.addError("bookmarks.bookmarkID.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validatenameProvided --->
			<cffunction name="validatenameProvided" access="public" hint="I validate that the name field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
		
				<!--- validate name is provided --->
				<cfif NOT Len(Trim(arguments.bookmarksRecord.getname()))>
					<cfset arguments.ErrorCollection.addError("bookmarks.name.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateurlProvided --->
			<cffunction name="validateurlProvided" access="public" hint="I validate that the url field was provided" output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
		
				<!--- validate url is provided --->
				<cfif NOT Len(Trim(arguments.bookmarksRecord.geturl()))>
					<cfset arguments.ErrorCollection.addError("bookmarks.url.notProvided") />
				</cfif>
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
		<!--- validatebookmarkIDDatatype --->
		<cffunction name="validatebookmarkIDDatatype" access="public" hint="I validate that the bookmarkID field is numeric." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
	
			
					<!--- validate bookmarkID is numeric --->
					<cfif Len(Trim(arguments.bookmarksRecord.getbookmarkID())) AND NOT IsNumeric(arguments.bookmarksRecord.getbookmarkID())>
						<cfset arguments.ErrorCollection.addError("bookmarks.bookmarkID.invalidType") />
					</cfif>					
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validatenameDatatype --->
		<cffunction name="validatenameDatatype" access="public" hint="I validate that the name field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
	
			
					<!--- validate name is string --->
					<cfif NOT IsSimpleValue(arguments.bookmarksRecord.getname())>
						<cfset arguments.ErrorCollection.addError("bookmarks.name.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
		<!--- validateurlDatatype --->
		<cffunction name="validateurlDatatype" access="public" hint="I validate that the url field is string." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
			<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord" />
			<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
	
			
					<!--- validate url is string --->
					<cfif NOT IsSimpleValue(arguments.bookmarksRecord.geturl())>
						<cfset arguments.ErrorCollection.addError("bookmarks.url.invalidType") />
					</cfif>				
				
			
			<cfreturn arguments.ErrorCollection />
		</cffunction>
	
			<!--- validatenameLength --->
			<cffunction name="validatenameLength" access="public" hint="I validate that the name field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
		
				
						<!--- validate name length --->
						<cfif Len(arguments.bookmarksRecord.getname()) GT 80 AND 80 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("bookmarks.name.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
			<!--- validateurlLength --->
			<cffunction name="validateurlLength" access="public" hint="I validate that the url field length." output="false" returntype="any" _returntype="reactor.util.ErrorCollection">
				<cfargument name="bookmarksRecord" hint="I am the Record to validate." required="no" type="any" _type="reactor.project.mgpost.Record.bookmarksRecord" />
				<cfargument name="ErrorCollection" hint="I am the error collection to populate. If not provided a new collection is created." required="no" type="any" _type="reactor.util.ErrorCollection" default="#createErrorCollection(arguments.bookmarksRecord._getDictionary())#" />
		
				
						<!--- validate url length --->
						<cfif Len(arguments.bookmarksRecord.geturl()) GT 255 AND 255 IS NOT -1 >
							<cfset arguments.ErrorCollection.addError("bookmarks.url.invalidLength") />
						</cfif>					
					
				
				<cfreturn arguments.ErrorCollection />
			</cffunction>
		
	
</cfcomponent>
	
