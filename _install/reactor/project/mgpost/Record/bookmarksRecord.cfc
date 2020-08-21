
<cfcomponent hint="I am the base record representing the bookmarks object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractRecord" >
	
	<cfset variables.signature = "994F275F64945304AEEE8B79E167D27C" />

	<cffunction name="init" access="public" hint="I configure and return this record object." output="false" returntype="any" _returntype="reactor.project.mgpost.Record.bookmarksRecord">
		
			<cfargument name="bookmarkID" hint="I am the default value for the bookmarkID field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="name" hint="I am the default value for the name field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="url" hint="I am the default value for the url field." required="no" type="any" _type="string" default="" />
		
			<cfset setbookmarkID(arguments.bookmarkID) />
		
			<cfset setname(arguments.name) />
		
			<cfset seturl(arguments.url) />
		
		<cfreturn this />
	</cffunction>
	
	
			<!--- bookmarkID --->
			<cffunction name="setbookmarkID" hint="I set the bookmarkID value ." access="public" output="false" returntype="void">
				<cfargument name="bookmarkID" hint="I am this record's bookmarkID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().bookmarkID = arguments.bookmarkID />
					
			</cffunction>
		
		
		<cffunction name="getbookmarkID" hint="I get the bookmarkID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().bookmarkID />
		</cffunction>	
	
			<!--- name --->
			<cffunction name="setname" hint="I set the name value ." access="public" output="false" returntype="void">
				<cfargument name="name" hint="I am this record's name value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().name = arguments.name />
					
			</cffunction>
		
		
		<cffunction name="getname" hint="I get the name value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().name />
		</cffunction>	
	
			<!--- url --->
			<cffunction name="seturl" hint="I set the url value ." access="public" output="false" returntype="void">
				<cfargument name="url" hint="I am this record's url value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().url = arguments.url />
					
			</cffunction>
		
		
		<cffunction name="geturl" hint="I get the url value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().url />
		</cffunction>	
	
	<!--- exists --->
	<cffunction name="exists" access="public" hint="I check to see if this record exists." output="false" returntype="any" _returntype="boolean">
		<cfreturn _getDao().exists(_getTo()) />
	</cffunction>
		
	
	<!--- to --->
	<cffunction name="_setTo" access="public" output="false" returntype="void">
		<cfargument name="to" hint="I am this record's transfer object." required="yes" type="any" _type="reactor.project.mgpost.To.bookmarksTo" />
		<cfif isDeleted()>
			<cfthrow message="Record Deleted"
				detail="The record you're using has been deleted.  There are some properties which will continue to function after a record has been deleted, but not all of them.  Please create a new record and go from there."
				type="reactor.record.RecordDeleted" />
		</cfif>
		<cfset variables.to = arguments.to />
	</cffunction>
	<cffunction name="_getTo" access="public" output="false" returntype="any" _returntype="reactor.project.mgpost.To.bookmarksTo">
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
		<cfargument name="initialTo" hint="I am this record's initial transfer object." required="yes" type="any" _type="reactor.project.mgpost.To.bookmarksTo" />
		<cfset variables.initialTo = arguments.initialTo />
	</cffunction>
	<cffunction name="_getInitialTo" access="private" output="false" returntype="any" _returntype="reactor.project.mgpost.To.bookmarksTo">
		
		<cfif NOT StructKeyExists(variables, "initialTo") >
			<cfset variables.initialTo = _getReactorFactory().createTo(_getAlias()) >
		</cfif>
		
		<cfreturn variables.initialTo />
	</cffunction>	
	
	<!--- dao --->
	<cffunction name="_setDao" access="private" output="false" returntype="void">
	    <cfargument name="dao" hint="I am the Dao this Record uses to load and save itself." required="yes" type="any" _type="reactor.project.mgpost.Dao.bookmarksDao" />
	    <cfset variables.dao = arguments.dao />
	</cffunction>
	<cffunction name="_getDao" access="private" output="false" returntype="any" _returntype="reactor.project.mgpost.Dao.bookmarksDao" >
	   
	    <cfif NOT StructKeyExists(variables, "dao") >
			<cfset variables.dao = _getReactorFactory().createDao(_getAlias()) >
		</cfif>
		
	    <cfreturn variables.dao />
	</cffunction>
	
</cfcomponent>
	
