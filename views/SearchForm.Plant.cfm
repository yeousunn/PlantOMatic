<cfoutput>
<h3>Find Plants By...</h3>
<uform:form action="#handleSubmitForm#" config="#CFUniformConfig#" errorMessagePlacement="inline" 
			  id="registerForm" submitValue="Search"  showCancel="false"
			loadJQuery="true" dateSetup="{buttonImage: '#CFUniformConfig.dateSetup.buttonImage#', dateFormat: 'MM dd, yy' }">
	<uform:fieldset class="sideLabels">
		<uform:field label="Symbol:" name="Symbol" type="text" value="#bean.getSymbol()#" />
		<uform:field label="Scientific Name:" name="ScientificName" type="text" value="#bean.getScientificName()#"  />
		<uform:field label="Common Name:" name="CommonName" type="text" value="#bean.getCommonName()#" />
		<uform:field label="Family:" name="Family" type="text" value="#bean.getFamily()#" />
	</uform:fieldset>
</uform:form>
</cfoutput>
