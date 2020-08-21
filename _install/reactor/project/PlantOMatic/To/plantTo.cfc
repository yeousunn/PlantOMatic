
<cfcomponent hint="I am the base TO object for the plant object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractTo" >
	
		<cfproperty name="PlantID" type="numeric" />
	
		<cfproperty name="Symbol" type="string" />
	
		<cfproperty name="SynonymSymbol" type="string" />
	
		<cfproperty name="ScientificNameWithAuthor" type="string" />
	
		<cfproperty name="CommonName" type="string" />
	
		<cfproperty name="Family" type="string" />
	
	
	<cfset variables.signature = "06E1CD302A971A3BA8A86C956E608391" />
	
	
		<cfset this.PlantID = "0" />
	
		<cfset this.Symbol = "" />
	
		<cfset this.SynonymSymbol = "" />
	
		<cfset this.ScientificNameWithAuthor = "" />
	
		<cfset this.CommonName = "" />
	
		<cfset this.Family = "" />
	
	
</cfcomponent>
	
