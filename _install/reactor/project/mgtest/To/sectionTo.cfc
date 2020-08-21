
<cfcomponent hint="I am the base TO object for the section object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractTo" >
	
		<cfproperty name="sectionID" type="numeric" />
	
		<cfproperty name="areaID" type="numeric" />
	
		<cfproperty name="sectionName" type="string" />
	
		<cfproperty name="sectionInstructions" type="string" />
	
		<cfproperty name="sectionOrder" type="numeric" />
	
		<cfproperty name="displayTo" type="string" />
	
		<cfproperty name="sectionEvent" type="string" />
	
		<cfproperty name="neededCompleteForFinishAndPay" type="boolean" />
	
		<cfproperty name="createdBy" type="numeric" />
	
		<cfproperty name="createdOn" type="date" />
	
		<cfproperty name="lastUpdateBy" type="numeric" />
	
		<cfproperty name="lastUpdateOn" type="date" />
	
	
	<cfset variables.signature = "7FD62144E70DCFC0665D8770CC11B04F" />
	
	
		<cfset this.sectionID = "0" />
	
		<cfset this.areaID = "0" />
	
		<cfset this.sectionName = "" />
	
		<cfset this.sectionInstructions = "" />
	
		<cfset this.sectionOrder = "0" />
	
		<cfset this.displayTo = "" />
	
		<cfset this.sectionEvent = "" />
	
		<cfset this.neededCompleteForFinishAndPay = "false" />
	
		<cfset this.createdBy = "0" />
	
		<cfset this.createdOn = "" />
	
		<cfset this.lastUpdateBy = "0" />
	
		<cfset this.lastUpdateOn = "" />
	
	
</cfcomponent>
	
