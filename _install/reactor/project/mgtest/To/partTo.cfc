
<cfcomponent hint="I am the base TO object for the part object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractTo" >
	
		<cfproperty name="partID" type="numeric" />
	
		<cfproperty name="sectionID" type="numeric" />
	
		<cfproperty name="partName" type="string" />
	
		<cfproperty name="partInstructions" type="string" />
	
		<cfproperty name="repeatCount" type="numeric" />
	
		<cfproperty name="partOrder" type="numeric" />
	
		<cfproperty name="pdfFormat" type="string" />
	
		<cfproperty name="createdBy" type="numeric" />
	
		<cfproperty name="createdOn" type="date" />
	
		<cfproperty name="lastUpdateBy" type="numeric" />
	
		<cfproperty name="lastUpdateOn" type="date" />
	
	
	<cfset variables.signature = "0551E3A4D8EEB20B4CDC436E2129E24A" />
	
	
		<cfset this.partID = "0" />
	
		<cfset this.sectionID = "" />
	
		<cfset this.partName = "" />
	
		<cfset this.partInstructions = "" />
	
		<cfset this.repeatCount = "0" />
	
		<cfset this.partOrder = "" />
	
		<cfset this.pdfFormat = "" />
	
		<cfset this.createdBy = "0" />
	
		<cfset this.createdOn = "" />
	
		<cfset this.lastUpdateBy = "0" />
	
		<cfset this.lastUpdateOn = "" />
	
	
</cfcomponent>
	
