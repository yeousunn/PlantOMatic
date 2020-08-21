<cfoutput>
<div class="registerForm">
<uform:form action="#handleSubmitForm#" config="#CFUniformConfig#" errorMessagePlacement="inline" 
			  id="registerForm" submitValue="Save"  showCancel="false"
			loadJQuery="true" loadDateUI="true" dateSetup="{buttonImage: '#CFUniformConfig.dateSetup.buttonImage#', dateFormat: 'MM dd, yy' }">
	<uform:fieldset class="inlineLabels" legend="">	
		<input type="hidden" name="ShipmentID" value="#bean.getShipmentID()#" /> 
		<input type="hidden" name="ItemID" value="#bean.getItemID()#" /> 
		<uform:field label="Plant" name="PlantID" type="select" hint="choose a plant">
			<option value=""  <cfif bean.isPlant("") IS true>selected</cfif> >-- select plant --</option>
			<cfloop query="PlantList">
				<option value="#plantID#" <cfif bean.isPlant( plantID ) IS true>selected</cfif> >#CommonName#</option>
			</cfloop>
		</uform:field>
		<uform:field label="Count Availabile:" name="Quantity" isRequired="true" type="text" value="#bean.getQuantity()#" hint="number of plants available" />
		<uform:field label="Size" name="Size" type="select" hint="the size of the finished plant product">
			<option value="18/01" <cfif bean.isSize("18/01") IS true>selected</cfif> >18/01</option>
			<option value="32/01" <cfif bean.isSize("32/01") IS true>selected</cfif> >32/01</option>
			<option value="50/01" <cfif bean.isSize("50/01") IS true>selected</cfif> >50/01</option>
			<option value="1 Gal" <cfif bean.isSize("1 Gal") IS true>selected</cfif> >1 Gal</option>
			<option value="3 Gal" <cfif bean.isSize("3 Gal") IS true>selected</cfif> >3 Gal</option>
			<option value="5 Gal" <cfif bean.isSize("5 Gal") IS true>selected</cfif> >5 Gal</option>
		</uform:field>				
		<uform:field label="Date Available:" name="DateAvailable" isRequired="true" type="date" value="#bean.getDateAvailable()#" hint="the date the plant will be ready" />
	</uform:fieldset>
	</uform:form>
</div>
</cfoutput>