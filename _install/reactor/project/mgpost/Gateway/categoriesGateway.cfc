
<cfcomponent hint="I am the base Gateway object for the categories object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractGateway" >
	
	<cfset variables.signature = "63A56B2956C8485949C39740D14D189C" />

	<cffunction name="getAll" access="public" hint="I return all rows from the categories table." output="false" returntype="any" _returntype="query">
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfreturn getByFields(sortByFieldList=arguments.sortByFieldList) />
	</cffunction>
	
	<cffunction name="getByFields" access="public" hint="I return all matching rows from the categories table." output="false" returntype="any" _returntype="query">
		
			<cfargument name="categoryID" hint="If provided, I match the provided value to the categoryID field in the categories object." required="no" type="any" _type="string" />
		
			<cfargument name="category" hint="If provided, I match the provided value to the category field in the categories object." required="no" type="any" _type="string" />
		
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		<cfset var x = 0 />
		
		
			<cfif structKeyExists(arguments, 'categoryID')>
				<cfset Where.isEqual(_getAlias(), "categoryID", arguments.categoryID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'category')>
				<cfset Where.isEqual(_getAlias(), "category", arguments.category) />
			</cfif>
		
		
		<cfloop list="#arguments.sortByFieldList#" index="x">
			<cfset Query.getOrder().setAsc("categories", trim(x)) />
		</cfloop>
		
		<cfreturn getByQuery(Query,true) />
	</cffunction>
	
	<!--- deleteByFields --->
	<cffunction name="deleteByFields" access="public" hint="I delete all matching rows from the object." output="false" returntype="void">
		
			<cfargument name="categoryID" hint="If provided, I match the provided value to the categoryID field in the categories object." required="no" type="any" _type="string" />
		
			<cfargument name="category" hint="If provided, I match the provided value to the category field in the categories object." required="no" type="any" _type="string" />
		
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		
		
			<cfif structKeyExists(arguments, 'categoryID')>
				<cfset Where.isEqual(_getAlias(), "categoryID", arguments.categoryID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'category')>
				<cfset Where.isEqual(_getAlias(), "category", arguments.category) />
			</cfif>
		
		
		<cfset deleteByQuery(Query,true) />
		<cfreturn />
	</cffunction>
	
</cfcomponent>
	
