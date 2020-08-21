<cfcomponent output="false">
<!--- 
	ShipmentID
	Name
	CreateDate
	UpdateDate
	Active
	Status
 --->
	<cfset variables.instance = structNew() />
	
	<cffunction name="init" access="public" returntype="Shipment">
		<cfargument name="ShipmentID" type="string" default=""/>
		<cfargument name="Name" type="string" default=""/>
		<cfargument name="CreateDate" type="string" default=""/>
		<cfargument name="UpdateDate" type="string" default=""/>
		<cfargument name="Active" type="string" default=""/>
		<cfargument name="Status" type="string" default=""/>
		<cfset setShipmentID( arguments.ShipmentID ) />
		<cfset setName( arguments.Name ) />
		<cfset setCreateDate( arguments.CreateDate ) />
		<cfset setUpdateDate( arguments.UpdateDate ) />
		<cfset setStatus( arguments.Status ) />
		<cfset setActive( arguments.Active ) />
		<cfreturn this />
	</cffunction>

	<cffunction name="getShipmentID" access="public" output="false" returntype="any">
		<cfreturn variables.instance.ShipmentID />
	</cffunction>
	
	<cffunction name="setShipmentID" access="public" output="false" returntype="void">
		<cfargument name="ShipmentID" type="any" required="true" />
		<cfset variables.instance.ShipmentID = arguments.ShipmentID />
	</cffunction>
	
	<cffunction name="getName" access="public" output="false" returntype="any">
		<cfreturn variables.instance.Name />
	</cffunction>
	
	<cffunction name="setName" access="public" output="false" returntype="void">
		<cfargument name="Name" type="any" required="true" />
		<cfset variables.instance.Name = arguments.Name />
	</cffunction>
	
	<cffunction name="getCreateDate" access="public" output="false" returntype="any">
		<cfreturn variables.instance.CreateDate />
	</cffunction>
	
	<cffunction name="setCreateDate" access="public" output="false" returntype="void">
		<cfargument name="CreateDate" type="any" required="true" />
		<cfset variables.instance.CreateDate = arguments.CreateDate />
	</cffunction>
	
	<cffunction name="getUpdateDate" access="public" output="false" returntype="any">
		<cfreturn variables.instance.UpdateDate />
	</cffunction>
	
	<cffunction name="setUpdateDate" access="public" output="false" returntype="void">
		<cfargument name="UpdateDate" type="any" required="true" />
		<cfset variables.instance.UpdateDate = arguments.UpdateDate />
	</cffunction>
	
	<cffunction name="getActive" access="public" output="false" returntype="any">
		<cfreturn variables.instance.Active />
	</cffunction>
	
	<cffunction name="setActive" access="public" output="false" returntype="void">
		<cfargument name="Active" type="any" required="true" />
		<cfset variables.instance.Active = arguments.Active />
	</cffunction>
	
	<cffunction name="getStatus" access="public" output="false" returntype="any">
		<cfreturn variables.instance.Status />
	</cffunction>
	
	<cffunction name="setStatus" access="public" output="false" returntype="void">
		<cfargument name="Status" type="any" required="true" />
		<cfset variables.instance.Status = arguments.Status />
	</cffunction>	

	<cffunction name="isActive" access="public" output="false" returntype="boolean">
		<cfreturn yesNoFormat( variables.instance.Active ) OR variables.instance.Active IS "" />
	</cffunction>

	<cffunction name="validate" output="false" access="public" returntype="boolean" hint="I validate the data of this bean">
		<cfargument name="usermsg" type="UserMessageContainer" required="true"/>
		<cfset var isValid = true />
		<cfif len( trim(  getName() ) ) IS 0 >
			<cfset usermsg.addError("You must provide a name for your  Shipment.") />
			<cfset isValid = false />
		</cfif>
			 
		<cfreturn isValid />
	</cffunction>

</cfcomponent>