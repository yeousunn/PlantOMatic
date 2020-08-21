
<cfcomponent hint="I am the base TO object for the Activity object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractTo" >
	
		<cfproperty name="ActivityID" type="numeric" />
	
		<cfproperty name="MemberID" type="numeric" />
	
		<cfproperty name="ActivityTypeID" type="numeric" />
	
		<cfproperty name="ActivityDate" type="date" />
	
		<cfproperty name="UnitOfMeasure" type="string" />
	
		<cfproperty name="MetricValue" type="numeric" />
	
		<cfproperty name="StandardValue" type="numeric" />
	
		<cfproperty name="ElapsedTime" type="string" />
	
		<cfproperty name="Description" type="string" />
	
		<cfproperty name="CreatedOn" type="date" />
	
		<cfproperty name="CreatedBy" type="numeric" />
	
		<cfproperty name="UpdatedOn" type="date" />
	
		<cfproperty name="UpdatedBy" type="numeric" />
	
	
	<cfset variables.signature = "233DA4675663F37F8BB5A5074C275181" />
	
	
		<cfset this.ActivityID = "0" />
	
		<cfset this.MemberID = "0" />
	
		<cfset this.ActivityTypeID = "" />
	
		<cfset this.ActivityDate = "" />
	
		<cfset this.UnitOfMeasure = "" />
	
		<cfset this.MetricValue = "" />
	
		<cfset this.StandardValue = "" />
	
		<cfset this.ElapsedTime = "" />
	
		<cfset this.Description = "" />
	
		<cfset this.CreatedOn = "" />
	
		<cfset this.CreatedBy = "" />
	
		<cfset this.UpdatedOn = "" />
	
		<cfset this.UpdatedBy = "" />
	
	
</cfcomponent>
	
