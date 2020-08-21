<cfcomponent displayname="ShipmentManager">

	<cffunction name="init" access="public" output="false" returntype="PlantOMatic.model.ShipmentManager">
		<cfargument name="dsn" type="string" required="true">
		<cfset variables.dsn = arguments.dsn>
		<cfreturn this>
	</cffunction>
	
	<cffunction name="create" access="public" output="false" returntype="PlantOMatic.model.Shipment">
		<cfargument name="Shipment" type="PlantOMatic.model.Shipment" required="true" />
		<cfset var qCreate = "" />

		<cfquery name="qCreate" datasource="#variables.dsn#">
			INSERT INTO Shipment
				(
				Name,
				CreateDate,
				UpdateDate,
				Active,
				Status
				)
			VALUES
				(
				<cfqueryparam value="#arguments.Shipment.getName()#" CFSQLType="cf_sql_varchar" />,
				<cfqueryparam value="#now()#" CFSQLType="cf_sql_date" />,
				NULL,
				<cfqueryparam value="#yesNoFormat(arguments.Shipment.getActive())#" CFSQLType="cf_sql_bit" />,
				<cfqueryparam value="#arguments.Shipment.getStatus()#" CFSQLType="cf_sql_varchar" />
				)
		</cfquery>
		
		<cfreturn arguments.Shipment />
	</cffunction>
	
	<cffunction name="loadCatalog" access="public" output="false" returntype="query">
		<cfset var qShipment = "" />
		
		<cfquery name="qShipment" datasource="#variables.dsn#">
			SELECT ShipmentID, Name ,CreateDate, UpdateDate, Active, Status
			FROM Shipment
		</cfquery>
		
		<cfreturn qShipment />
	</cffunction>

	<cffunction name="loadDetail" access="public" output="false" returntype="query">
		<cfargument name="Shipment" type="PlantOMatic.model.Shipment" required="true" />
		<cfset var qShipment = "" />
		
		<cfquery name="qShipment" datasource="#variables.dsn#">
			SELECT Shipment.ShipmentID, Shipment.Name, Shipment.CreateDate, Shipment.UpdateDate, Shipment.Active, Shipment.Status, Item.itemID, Item.DateAvailable, Item.Quantity, Item.Size, Plant.PlantID, Plant.CommonName
			FROM Shipment LEFT JOIN Item ON Shipment.ShipmentID = Item.ShipmentID 
				LEFT JOIN Plant ON Item.plantID = Plant.PlantID
			WHERE Shipment.ShipmentID = <cfqueryparam value="#val( arguments.Shipment.getShipmentID() )#" cfsqltype="cf_sql_integer">
		</cfquery>
		
		<cfreturn qShipment />
	</cffunction>

	<cffunction name="load" access="public" output="false" returntype="PlantOMatic.model.Shipment">
		<cfargument name="Shipment" type="PlantOMatic.model.Shipment" required="true" />
		<cfset var qRead = "" />
		<cfset var strReturn = structNew() />

		<cfquery name="qRead" datasource="#variables.dsn#">
			SELECT
				ShipmentID,
				Name,
				CreateDate,
				UpdateDate,
				Active,
				Status
			FROM	Shipment
			WHERE	ShipmentID = <cfqueryparam value="#val( arguments.Shipment.getShipmentID() )#" CFSQLType="cf_sql_integer" />
		</cfquery>
		
		<cfset arguments.Shipment.setShipmentID( qRead.ShipmentID ) />
		<cfset arguments.Shipment.setName( qRead.Name ) />
		<cfset arguments.Shipment.setCreateDate( qRead.CreateDate ) />
		<cfset arguments.Shipment.setUpdateDate( qRead.UpdateDate ) />
		<cfset arguments.Shipment.setActive( qRead.Active ) />
		<cfset arguments.Shipment.setStatus( qRead.Active ) />

		<cfreturn arguments.Shipment />
	</cffunction>

	<cffunction name="update" access="public" output="false" returntype="PlantOMatic.model.Shipment">
		<cfargument name="Shipment" type="PlantOMatic.model.Shipment" required="true" />
		<cfset var qUpdate = "" />

		<cfquery name="qUpdate" datasource="#variables.dsn#">
			UPDATE	Shipment
			SET
				Name = <cfqueryparam value="#arguments.Shipment.getName()#" CFSQLType="cf_sql_varchar" />,
				UpdateDate = <cfqueryparam value="#now()#" CFSQLType="cf_sql_date" />,
				Active = <cfqueryparam value="#yesNoFormat(arguments.Shipment.getActive())#" CFSQLType="cf_sql_bit" />,
				Status = <cfqueryparam value="#arguments.Shipment.getStatus()#" CFSQLType="cf_sql_varchar" />
				
			WHERE	ShipmentID = <cfqueryparam value="#val( arguments.Shipment.getShipmentID() )#" CFSQLType="cf_sql_integer" />
		</cfquery>
		
		<cfreturn arguments.Shipment />
	</cffunction>

	<cffunction name="delete" access="public" output="false" returntype="void">
		<cfargument name="Shipment" type="PlantOMatic.model.Shipment" required="true" />
		<cfset var qDelete = "">

		<cfquery name="qDelete" datasource="#variables.dsn#">
			DELETE FROM	Shipment 
			WHERE	ShipmentID = <cfqueryparam value="#arguments.Shipment.getShipmentID()#" CFSQLType="cf_sql_integer" />
		</cfquery>
		
	</cffunction>

	<cffunction name="exists" access="public" output="false" returntype="boolean">
		<cfargument name="Shipment" type="PlantOMatic.model.Shipment" required="true" />
		<cfset var qExists = "">

		<cfquery name="qExists" datasource="#variables.dsn#" maxrows="1">
			SELECT count(1) as idexists
			FROM	Shipment
			WHERE	ShipmentID = <cfqueryparam value="#val( arguments.Shipment.getShipmentID() )#" CFSQLType="cf_sql_integer" />
		</cfquery>

		<cfreturn qExists.idexists IS 1 />
	</cffunction>

	<cffunction name="save" access="public" output="false" returntype="PlantOMatic.model.Shipment">
		<cfargument name="Shipment" type="PlantOMatic.model.Shipment" required="true" />
		<cfset var object = "" />
		
		<cfif exists(arguments.Shipment)>
			<cfset object = update(arguments.Shipment) />
		<cfelse>
			<cfset object = create(arguments.Shipment) />
		</cfif>
		
		<cfreturn object />
	</cffunction>

</cfcomponent>