<cfcomponent output="false">

<!--- 
	ShipmentID
	ItemID
	DateAvailable
	PlantID
	Quantity
	Size

 --->
	<cfset variables.instance = structNew() />
	
	<cffunction name="init" access="public" returntype="Item">
		<cfargument name="ShipmentID" type="string" default=""/>
		<cfargument name="ItemID" type="string" default=""/>
		<cfargument name="DateAvailable" type="string" default=""/>
		<cfargument name="PlantID" type="string" default=""/>
		<cfargument name="Quantity" type="string" default=""/>
		<cfargument name="Size" type="string" default=""/>
		<cfset setShipmentID( arguments.ShipmentID ) />
		<cfset setItemID( arguments.ItemID ) />
		<cfset setDateAvailable( arguments.DateAvailable ) />
		<cfset setPlantID( arguments.PlantID ) />
		<cfset setQuantity( arguments.Quantity ) />
		<cfset setSize( arguments.Size ) />
		<cfreturn this />
	</cffunction>

	<cffunction name="getMemento" output="false" access="public" returntype="struct" hint="I return the private variables for this instance">
		<cfreturn variables.instance />		
	</cffunction>

	<cffunction name="getShipmentID" access="public" output="false" returntype="any">
		<cfreturn variables.instance.ShipmentID />
	</cffunction>
	
	<cffunction name="setShipmentID" access="public" output="false" returntype="void">
		<cfargument name="ShipmentID" type="any" required="true" />
		<cfset variables.instance.ShipmentID = arguments.ShipmentID />
	</cffunction>
	
	<cffunction name="getItemID" access="public" output="false" returntype="any">
		<cfreturn variables.instance.ItemID />
	</cffunction>
	
	<cffunction name="setItemID" access="public" output="false" returntype="void">
		<cfargument name="ItemID" type="any" required="true" />
		<cfset variables.instance.ItemID = arguments.ItemID />
	</cffunction>
	
	<cffunction name="getDateAvailable" access="public" output="false" returntype="any">
		<cfreturn variables.instance.DateAvailable />
	</cffunction>
	
	<cffunction name="setDateAvailable" access="public" output="false" returntype="void">
		<cfargument name="DateAvailable" type="any" required="true" />
		<cfset variables.instance.DateAvailable = arguments.DateAvailable />
	</cffunction>
	
	<cffunction name="getPlantID" access="public" output="false" returntype="any">
		<cfreturn variables.instance.PlantID />
	</cffunction>
	
	<cffunction name="setPlantID" access="public" output="false" returntype="void">
		<cfargument name="PlantID" type="any" required="true" />
		<cfset variables.instance.PlantID = arguments.PlantID />
	</cffunction>
	
	<cffunction name="isPlant" output="false" access="public" returntype="any" hint="I check to see if a Plant is the same as the current PlantID">
		<cfargument name="comparator" type="string" default="" />
		<cfreturn ( arguments.comparator IS getPlantID() ) />
	</cffunction>
	
	<cffunction name="getQuantity" access="public" output="false" returntype="any">
		<cfreturn variables.instance.Quantity />
	</cffunction>
	
	<cffunction name="setQuantity" access="public" output="false" returntype="void">
		<cfargument name="Quantity" type="any" required="true" />
		<cfset variables.instance.Quantity = arguments.Quantity />
	</cffunction>
	
	<cffunction name="getSize" access="public" output="false" returntype="any">
		<cfreturn variables.instance.Size />
	</cffunction>
	
	<cffunction name="setSize" access="public" output="false" returntype="void">
		<cfargument name="Size" type="any" required="true" />
		<cfset variables.instance.Size = arguments.Size />
	</cffunction>
	
	<cffunction name="isSize" output="false" access="public" returntype="any" hint="I check to see if a size is the same as the current size">
		<cfargument name="comparator" type="string" default="" />
		<cfreturn ( arguments.comparator IS getSize() ) />
	</cffunction>

	<cffunction name="validate" output="false" access="public" returntype="boolean" hint="I validate the data of this bean">
		<cfargument name="usermsg" type="UserMessageContainer" required="true"/>
		<cfset var isValid = true />
		<cfif val( getShipmentID()) IS 0 >
			<cfset usermsg.addError("Items must only be added to availability Shipments. Please choose an availability Shipment or create a new one") />
			<cfset isValid = false />
		</cfif>
		
		<cfif NOT isDate( getDateAvailable() ) >
			<cfset usermsg.addError("Please choose a proper date for this Shipment Item") />
			<cfset isValid = false />
		</cfif>
		
		<cfif len( trim( getPlantID() ) ) IS 0>
			<cfset usermsg.addError("Please choose a plant before saving") />
			<cfset isValid = false />
		</cfif>
		
		<cfif val( getQuantity() ) LT 1>
			<cfset usermsg.addError("Please choose a quantity of this Item to have available") />
			<cfset isValid = false />
		</cfif>
		
		<cfif len( trim( getSize() ) ) IS 0>
			<cfset usermsg.addError("Please choose the size of the Item") />
			<cfset isValid = false />
		</cfif>
		 
		<cfreturn isValid />
	</cffunction>

</cfcomponent>