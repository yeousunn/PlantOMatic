<cfcomponent displayname="PlantManager">

	<cffunction name="init" access="public" output="false" returntype="PlantOMatic.model.PlantManager">
		<cfargument name="dsn" type="string" required="true">
		<cfset variables.dsn = arguments.dsn>
		<cfreturn this>
	</cffunction>

	<cffunction name="list" output="false" access="public" returntype="query" hint="I load plants">
		<cfset var qRead = "" />
		
		<cfquery name="qRead"  datasource="#variables.dsn#" >
			SELECT PlantID, Symbol, SynonymSymbol, ScientificNameWithAuthor, CommonName, Family
		  	FROM Plant		
		  	ORDER BY CommonName
		</cfquery>		
		
		<cfreturn qRead />
	</cffunction>


	<cffunction name="search" output="false" access="public" returntype="query" hint="I load plants">
		<cfargument name="filter" type="PlantFilter" required="true" />
		<cfset var qRead = "" />
		<cfset var Operand = "" />
		<cfquery name="qRead"  datasource="#variables.dsn#" >
			SELECT PlantID, Symbol, SynonymSymbol, ScientificNameWithAuthor, CommonName, Family
		  	FROM Plant
		  	<cfif arguments.filter.hasCriteria() IS true>
		  	WHERE 
		  		<cfif arguments.filter.hasCommonName() IS true>
					#Operand#	CommonName = <cfqueryparam value="#arguments.filter.getCommonName()#" cfsqltype="cf_sql_varchar">
					<cfset Operand = " AND " />	
				</cfif>
		  		<cfif arguments.filter.hasFamily() IS true>
					#Operand#	Family = <cfqueryparam value="#arguments.filter.getFamily()#" cfsqltype="cf_sql_varchar">
					<cfset Operand = " AND " />	
				</cfif>
		  		<cfif arguments.filter.hasScientificName() IS true AND arguments.filter.isWildcardScientificName() IS true>
					#Operand#	ScientificNameWithAuthor like <cfqueryparam value="#arguments.filter.getWildcardFormattedScientificName()#" cfsqltype="cf_sql_varchar">
			  	<cfelseif arguments.filter.hasScientificName() IS true>
					#Operand#	ScientificNameWithAuthor = <cfqueryparam value="#arguments.filter.getScientificName()#" cfsqltype="cf_sql_varchar">
					<cfset Operand = " AND " />	
				</cfif>
		  		<cfif arguments.filter.hasSymbol() IS true>
					#Operand#	Symbol = <cfqueryparam value="#arguments.filter.getSearchFormattedSymbol()#" cfsqltype="cf_sql_varchar">
					<cfset Operand = " AND " />	
				</cfif>
		
		  	</cfif>
		  	ORDER BY CommonName
		</cfquery>		
		
		<cfreturn qRead />
	</cffunction>
	
</cfcomponent>