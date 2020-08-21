
<cfcomponent hint="I am the base Gateway object for the Plant object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractGateway" >
	
	<cfset variables.signature = "ECEFC847F29B9C8140AD7B2D964D52ED" />

	<cffunction name="getAll" access="public" hint="I return all rows from the Plant table." output="false" returntype="any" _returntype="query">
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfreturn getByFields(sortByFieldList=arguments.sortByFieldList) />
	</cffunction>
	
	<cffunction name="getByFields" access="public" hint="I return all matching rows from the Plant table." output="false" returntype="any" _returntype="query">
		
			<cfargument name="PlantID" hint="If provided, I match the provided value to the PlantID field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="Symbol" hint="If provided, I match the provided value to the Symbol field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="SynonymSymbol" hint="If provided, I match the provided value to the SynonymSymbol field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="ScientificNameWithAuthor" hint="If provided, I match the provided value to the ScientificNameWithAuthor field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="CommonName" hint="If provided, I match the provided value to the CommonName field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="Family" hint="If provided, I match the provided value to the Family field in the Plant object." required="no" type="any" _type="string" />
		
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		<cfset var x = 0 />
		
		
			<cfif structKeyExists(arguments, 'PlantID')>
				<cfset Where.isEqual(_getAlias(), "PlantID", arguments.PlantID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'Symbol')>
				<cfset Where.isEqual(_getAlias(), "Symbol", arguments.Symbol) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'SynonymSymbol')>
				<cfset Where.isEqual(_getAlias(), "SynonymSymbol", arguments.SynonymSymbol) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'ScientificNameWithAuthor')>
				<cfset Where.isEqual(_getAlias(), "ScientificNameWithAuthor", arguments.ScientificNameWithAuthor) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'CommonName')>
				<cfset Where.isEqual(_getAlias(), "CommonName", arguments.CommonName) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'Family')>
				<cfset Where.isEqual(_getAlias(), "Family", arguments.Family) />
			</cfif>
		
		
		<cfloop list="#arguments.sortByFieldList#" index="x">
			<cfset Query.getOrder().setAsc("Plant", trim(x)) />
		</cfloop>
		
		<cfreturn getByQuery(Query,true) />
	</cffunction>
	
	<!--- deleteByFields --->
	<cffunction name="deleteByFields" access="public" hint="I delete all matching rows from the object." output="false" returntype="void">
		
			<cfargument name="PlantID" hint="If provided, I match the provided value to the PlantID field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="Symbol" hint="If provided, I match the provided value to the Symbol field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="SynonymSymbol" hint="If provided, I match the provided value to the SynonymSymbol field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="ScientificNameWithAuthor" hint="If provided, I match the provided value to the ScientificNameWithAuthor field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="CommonName" hint="If provided, I match the provided value to the CommonName field in the Plant object." required="no" type="any" _type="string" />
		
			<cfargument name="Family" hint="If provided, I match the provided value to the Family field in the Plant object." required="no" type="any" _type="string" />
		
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		
		
			<cfif structKeyExists(arguments, 'PlantID')>
				<cfset Where.isEqual(_getAlias(), "PlantID", arguments.PlantID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'Symbol')>
				<cfset Where.isEqual(_getAlias(), "Symbol", arguments.Symbol) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'SynonymSymbol')>
				<cfset Where.isEqual(_getAlias(), "SynonymSymbol", arguments.SynonymSymbol) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'ScientificNameWithAuthor')>
				<cfset Where.isEqual(_getAlias(), "ScientificNameWithAuthor", arguments.ScientificNameWithAuthor) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'CommonName')>
				<cfset Where.isEqual(_getAlias(), "CommonName", arguments.CommonName) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'Family')>
				<cfset Where.isEqual(_getAlias(), "Family", arguments.Family) />
			</cfif>
		
		
		<cfset deleteByQuery(Query,true) />
		<cfreturn />
	</cffunction>
	
</cfcomponent>
	
