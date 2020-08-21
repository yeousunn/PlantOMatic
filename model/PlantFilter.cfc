<cfcomponent>
<!---
CommonName
Family
ScientificName
Symbol
 --->

	<cffunction name="init" output="false" access="public" returntype="PlantFilter" hint="I initialize this search">
		<cfargument name="CommonName" type="string" default=""/>
		<cfargument name="Family" type="string" default=""/>
		<cfargument name="ScientificName" type="string" default=""/>
		<cfargument name="Symbol" type="string" default=""/>
		<cfset setCommonName( arguments.CommonName ) />
		<cfset setFamily( arguments.Family ) />
		<cfset setScientificName( arguments.ScientificName ) />
		<cfset setSymbol( arguments.Symbol ) />
		
		<cfreturn this />
	</cffunction>

	<cffunction name="getCommonName" access="public" output="false" returntype="any">
		<cfreturn variables.instance.CommonName />
	</cffunction>
	
	<cffunction name="setCommonName" access="public" output="false" returntype="void">
		<cfargument name="CommonName" type="any" required="true" />
		<cfset variables.instance.CommonName = arguments.CommonName />
	</cffunction>
	
	<cffunction name="getFamily" access="public" output="false" returntype="any">
		<cfreturn variables.instance.Family />
	</cffunction>
	
	<cffunction name="setFamily" access="public" output="false" returntype="void">
		<cfargument name="Family" type="any" required="true" />
		<cfset variables.instance.Family = arguments.Family />
	</cffunction>
	
	<cffunction name="getScientificName" access="public" output="false" returntype="any">
		<cfreturn variables.instance.ScientificName />
	</cffunction>
	
	<cffunction name="getWildcardFormattedScientificName" output="false" access="public" returntype="string" hint="I format a scientific name in SQL wildcard form">
		<cfreturn replace( getScientificName(), "*", "", "ALL") & "%" />
	</cffunction>
	
	<cffunction name="setScientificName" access="public" output="false" returntype="void">
		<cfargument name="ScientificName" type="any" required="true" />
		<cfset variables.instance.ScientificName = arguments.ScientificName />
	</cffunction>
	
	<cffunction name="getSymbol" access="public" output="false" returntype="any">
		<cfreturn variables.instance.Symbol />
	</cffunction>
	
	<cffunction name="getSearchFormattedSymbol" access="public" output="false" returntype="any">
		<cfreturn ucase( getSymbol() ) />
	</cffunction>
	
	<cffunction name="setSymbol" access="public" output="false" returntype="void">
		<cfargument name="Symbol" type="any" required="true" />
		<cfset variables.instance.Symbol = arguments.Symbol />
	</cffunction>


	<cffunction name="hasCriteria" output="false" access="public" returntype="boolean">
		<cfreturn ( hasCommonName() IS true OR hasFamily() IS true OR hasScientificName() IS true OR hasSymbol() IS true ) />	
	</cffunction>

	<cffunction name="hasCommonName" output="false" access="public" returntype="boolean">
		<cfreturn len( trim(getCommonName() ) )  GT 0 />	
	</cffunction>
	
	<cffunction name="hasFamily" output="false" access="public" returntype="boolean">
		<cfreturn len( trim(getFamily() ) )  GT 0 />	
	</cffunction>
	
	<cffunction name="hasScientificName" output="false" access="public" returntype="boolean">
		<cfreturn len( trim(getScientificName() ) )  GT 0 />	
	</cffunction>
	
	<cffunction name="hasSymbol" output="false" access="public" returntype="boolean">
		<cfreturn len( trim(getSymbol() ) )  GT 0 />	
	</cffunction>
	
	<cffunction name="isWildcardScientificName" output="false" access="public" returntype="boolean" hint="I figure out whether the user is trying to use a wildcard search">
		<cfreturn getScientificName() CONTAINS "*" />
	</cffunction>
	
</cfcomponent>
