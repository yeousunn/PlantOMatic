
<cfcomponent hint="I am the base Gateway object for the bookmarks object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractGateway" >
	
	<cfset variables.signature = "994F275F64945304AEEE8B79E167D27C" />

	<cffunction name="getAll" access="public" hint="I return all rows from the bookmarks table." output="false" returntype="any" _returntype="query">
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfreturn getByFields(sortByFieldList=arguments.sortByFieldList) />
	</cffunction>
	
	<cffunction name="getByFields" access="public" hint="I return all matching rows from the bookmarks table." output="false" returntype="any" _returntype="query">
		
			<cfargument name="bookmarkID" hint="If provided, I match the provided value to the bookmarkID field in the bookmarks object." required="no" type="any" _type="string" />
		
			<cfargument name="name" hint="If provided, I match the provided value to the name field in the bookmarks object." required="no" type="any" _type="string" />
		
			<cfargument name="url" hint="If provided, I match the provided value to the url field in the bookmarks object." required="no" type="any" _type="string" />
		
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		<cfset var x = 0 />
		
		
			<cfif structKeyExists(arguments, 'bookmarkID')>
				<cfset Where.isEqual(_getAlias(), "bookmarkID", arguments.bookmarkID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'name')>
				<cfset Where.isEqual(_getAlias(), "name", arguments.name) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'url')>
				<cfset Where.isEqual(_getAlias(), "url", arguments.url) />
			</cfif>
		
		
		<cfloop list="#arguments.sortByFieldList#" index="x">
			<cfset Query.getOrder().setAsc("bookmarks", trim(x)) />
		</cfloop>
		
		<cfreturn getByQuery(Query,true) />
	</cffunction>
	
	<!--- deleteByFields --->
	<cffunction name="deleteByFields" access="public" hint="I delete all matching rows from the object." output="false" returntype="void">
		
			<cfargument name="bookmarkID" hint="If provided, I match the provided value to the bookmarkID field in the bookmarks object." required="no" type="any" _type="string" />
		
			<cfargument name="name" hint="If provided, I match the provided value to the name field in the bookmarks object." required="no" type="any" _type="string" />
		
			<cfargument name="url" hint="If provided, I match the provided value to the url field in the bookmarks object." required="no" type="any" _type="string" />
		
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		
		
			<cfif structKeyExists(arguments, 'bookmarkID')>
				<cfset Where.isEqual(_getAlias(), "bookmarkID", arguments.bookmarkID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'name')>
				<cfset Where.isEqual(_getAlias(), "name", arguments.name) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'url')>
				<cfset Where.isEqual(_getAlias(), "url", arguments.url) />
			</cfif>
		
		
		<cfset deleteByQuery(Query,true) />
		<cfreturn />
	</cffunction>
	
</cfcomponent>
	
