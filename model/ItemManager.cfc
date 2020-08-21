<cfcomponent displayname="ItemManager">

	<cffunction name="init" access="public" output="false" returntype="PlantOMatic.model.ItemManager">
		<cfargument name="dsn" type="string" required="true">
		<cfset variables.dsn = arguments.dsn>
		<cfreturn this>
	</cffunction>
	
	<cffunction name="create" access="public" output="false" returntype="PlantOMatic.model.Item">
		<cfargument name="Item" type="PlantOMatic.model.Item" required="true" />

		<cfset var qCreate = "" />
		<cfquery name="qCreate" datasource="#variables.dsn#">
			INSERT INTO Item
				(
				ShipmentID,
				PlantID,
				DateAvailable,
				Quantity,
				Size
				)
			VALUES
				(
				<cfqueryparam value="#arguments.Item.getShipmentID()#" cfsqltype="cf_sql_integer" />,
				<cfqueryparam value="#arguments.Item.getPlantID()#" cfsqltype="cf_sql_integer" />,
				<cfqueryparam value="#arguments.Item.getDateAvailable()#" cfsqltype="cf_sql_date" />,
				<cfqueryparam value="#arguments.Item.getQuantity()#" cfsqltype="cf_sql_integer" />,
				<cfqueryparam value="#arguments.Item.getSize()#" cfsqltype="cf_sql_varchar" />
				)
		</cfquery>
		<cfreturn arguments.Item />
	</cffunction>

	<cffunction name="load" access="public" output="false" returntype="PlantOMatic.model.Item">
		<cfargument name="Item" type="PlantOMatic.model.Item" required="true" />
		<cfset var qRead = "" />
		<cfquery name="qRead" datasource="#variables.dsn#">
			SELECT
				ItemID,
				ShipmentID,
				PlantID,
				DateAvailable,
				Quantity,
				Size
			FROM	Item
			WHERE	ItemID = <cfqueryparam value="#val(arguments.Item.getItemID())#" cfsqltype="cf_sql_integer" />
		</cfquery>
		
		<cfset arguments.Item.setItemID( qRead.ItemID ) />
		<cfset arguments.Item.setShipmentID( qRead.ShipmentID ) />
		<cfset arguments.Item.setPlantID( qRead.PlantID ) />
		<cfset arguments.Item.setDateAvailable( qRead.DateAvailable ) />
		<cfset arguments.Item.setQuantity( qRead.Quantity ) />
		<cfset arguments.Item.setSize( qRead.Size ) />
		
		<cfreturn arguments.Item />
	</cffunction>

	<cffunction name="update" access="public" output="false" returntype="PlantOMatic.model.Item">
		<cfargument name="Item" type="PlantOMatic.model.Item" required="true" />

		<cfset var qUpdate = "" />
		<cfquery name="qUpdate" datasource="#variables.dsn#">
			UPDATE	Item
			SET
				ShipmentID = <cfqueryparam value="#arguments.Item.getShipmentID()#" cfsqltype="cf_sql_integer" />,
				PlantID = <cfqueryparam value="#arguments.Item.getPlantID()#" cfsqltype="cf_sql_integer" />,
				DateAvailable = <cfqueryparam value="#arguments.Item.getDateAvailable()#" cfsqltype="cf_sql_date" />,
				Quantity = <cfqueryparam value="#arguments.Item.getQuantity()#" cfsqltype="cf_sql_integer" />,
				Size = <cfqueryparam value="#arguments.Item.getSize()#" cfsqltype="cf_sql_varchar" />
			WHERE	ItemID = <cfqueryparam value="#arguments.Item.getItemID()#" cfsqltype="cf_sql_integer" />
		</cfquery>
			
		<cfreturn arguments.Item />
	</cffunction>

	<cffunction name="delete" access="public" output="false" returntype="void">
		<cfargument name="Item" type="PlantOMatic.model.Item" required="true" />

		<cfset var qDelete = "">
		<cfquery name="qDelete" datasource="#variables.dsn#">
			DELETE FROM Item 
			WHERE	ItemID = <cfqueryparam value="#arguments.Item.getItemID()#" cfsqltype="cf_sql_integer" />
		</cfquery>

	</cffunction>

	<cffunction name="exists" access="public" output="false" returntype="boolean">
		<cfargument name="Item" type="PlantOMatic.model.Item" required="true" />

		<cfset var qExists = "">
		<cfquery name="qExists" datasource="#variables.dsn#" maxrows="1">
			SELECT count(1) as idexists
			FROM	Item
			WHERE	ItemID = <cfqueryparam value="#val(arguments.Item.getItemID())#" cfsqltype="cf_sql_integer" />
		</cfquery>


			<cfreturn qExists.idexists IS 1 />
	</cffunction>

	<cffunction name="save" access="public" output="false" returntype="PlantOMatic.model.Item">
		<cfargument name="Item" type="PlantOMatic.model.Item" required="true" />
		
		<cfset var object = "" />
		<cfif exists(arguments.Item)>
			<cfset object = update(arguments.Item) />
		<cfelse>
			<cfset object = create(arguments.Item) />
		</cfif>
		
		<cfreturn object />
	</cffunction>

</cfcomponent>