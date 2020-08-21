
<cfcomponent hint="I am the base record representing the categories object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractRecord" >
	
	<cfset variables.signature = "63A56B2956C8485949C39740D14D189C" />

	<cffunction name="init" access="public" hint="I configure and return this record object." output="false" returntype="any" _returntype="reactor.project.mgpost.Record.categoriesRecord">
		
			<cfargument name="categoryID" hint="I am the default value for the categoryID field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="category" hint="I am the default value for the category field." required="no" type="any" _type="string" default="" />
		
			<cfset setcategoryID(arguments.categoryID) />
		
			<cfset setcategory(arguments.category) />
		
		<cfreturn this />
	</cffunction>
	
	
			<!--- categoryID --->
			<cffunction name="setcategoryID" hint="I set the categoryID value ." access="public" output="false" returntype="void">
				<cfargument name="categoryID" hint="I am this record's categoryID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().categoryID = arguments.categoryID />
					
			</cffunction>
		
		
		<cffunction name="getcategoryID" hint="I get the categoryID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().categoryID />
		</cffunction>	
	
			<!--- category --->
			<cffunction name="setcategory" hint="I set the category value ." access="public" output="false" returntype="void">
				<cfargument name="category" hint="I am this record's category value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().category = arguments.category />
					
			</cffunction>
		
		
		<cffunction name="getcategory" hint="I get the category value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().category />
		</cffunction>	
	
	<!--- exists --->
	<cffunction name="exists" access="public" hint="I check to see if this record exists." output="false" returntype="any" _returntype="boolean">
		<cfreturn _getDao().exists(_getTo()) />
	</cffunction>
		
	
	<!--- to --->
	<cffunction name="_setTo" access="public" output="false" returntype="void">
		<cfargument name="to" hint="I am this record's transfer object." required="yes" type="any" _type="reactor.project.mgpost.To.categoriesTo" />
		<cfif isDeleted()>
			<cfthrow message="Record Deleted"
				detail="The record you're using has been deleted.  There are some properties which will continue to function after a record has been deleted, but not all of them.  Please create a new record and go from there."
				type="reactor.record.RecordDeleted" />
		</cfif>
		<cfset variables.to = arguments.to />
	</cffunction>
	<cffunction name="_getTo" access="public" output="false" returntype="any" _returntype="reactor.project.mgpost.To.categoriesTo">
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
		<cfargument name="initialTo" hint="I am this record's initial transfer object." required="yes" type="any" _type="reactor.project.mgpost.To.categoriesTo" />
		<cfset variables.initialTo = arguments.initialTo />
	</cffunction>
	<cffunction name="_getInitialTo" access="private" output="false" returntype="any" _returntype="reactor.project.mgpost.To.categoriesTo">
		
		<cfif NOT StructKeyExists(variables, "initialTo") >
			<cfset variables.initialTo = _getReactorFactory().createTo(_getAlias()) >
		</cfif>
		
		<cfreturn variables.initialTo />
	</cffunction>	
	
	<!--- dao --->
	<cffunction name="_setDao" access="private" output="false" returntype="void">
	    <cfargument name="dao" hint="I am the Dao this Record uses to load and save itself." required="yes" type="any" _type="reactor.project.mgpost.Dao.categoriesDao" />
	    <cfset variables.dao = arguments.dao />
	</cffunction>
	<cffunction name="_getDao" access="private" output="false" returntype="any" _returntype="reactor.project.mgpost.Dao.categoriesDao" >
	   
	    <cfif NOT StructKeyExists(variables, "dao") >
			<cfset variables.dao = _getReactorFactory().createDao(_getAlias()) >
		</cfif>
		
	    <cfreturn variables.dao />
	</cffunction>
	
</cfcomponent>
	
