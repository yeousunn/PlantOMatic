<cfoutput>
<uform:form action="#handleSubmitForm#" config="#CFUniformConfig#" errorMessagePlacement="inline" 
			  id="shipmentForm" submitValue="Save"  showCancel="false" loadJQuery="true">
	<uform:fieldset class="blockLabels" legend="">
		<input type="hidden" name="ShipmentID" value="#bean.getShipmentID()#">
		<uform:field label="Shipment Name" name="name" type="text" hint="Describe the shipment" value="#bean.getName()#" />
		<uform:field label="Active" name="active" type="radio" hint="show in the active list?">
			<uform:radio label="Yes" value="true" isChecked="#bean.isActive() IS true#" />
			<uform:radio label="No" value="false" isChecked="#bean.isActive() IS false#" />
		</uform:field>
	</uform:fieldset>
</uform:form>
</cfoutput>