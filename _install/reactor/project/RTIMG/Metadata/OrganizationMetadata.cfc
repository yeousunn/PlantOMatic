
<cfcomponent hint="I am the base Metadata object for the Organization object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "7925A33E370B37E430CD5D77FB15A453" >
	
	<cfset variables.metadata.name = "Organization" />
	<cfset variables.metadata.alias = "Organization" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "rtimeta" />
		
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "List" />
		<cfset variables.metadata.fields[1]["alias"] = "List" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[1]["identity"] = "false" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["scale"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<cfset variables.metadata.fields[1]["object"] = "Organization" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "EmployeeList" />
		<cfset variables.metadata.fields[2]["alias"] = "EmployeeList" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[2]["length"] = "0" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "0" />
		<cfset variables.metadata.fields[2]["object"] = "Organization" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "PublicationList" />
		<cfset variables.metadata.fields[3]["alias"] = "PublicationList" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "false" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[3]["length"] = "0" />
		<cfset variables.metadata.fields[3]["scale"] = "0" />
		<cfset variables.metadata.fields[3]["default"] = "0" />
		<cfset variables.metadata.fields[3]["object"] = "Organization" />
		<cfset variables.metadata.fields[3]["sequence"] = "" />
		<cfset variables.metadata.fields[3]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[4] = StructNew() />
		<cfset variables.metadata.fields[4]["name"] = "Edit" />
		<cfset variables.metadata.fields[4]["alias"] = "Edit" />
		<cfset variables.metadata.fields[4]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[4]["identity"] = "false" />
		<cfset variables.metadata.fields[4]["nullable"] = "false" />
		<cfset variables.metadata.fields[4]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[4]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[4]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[4]["length"] = "0" />
		<cfset variables.metadata.fields[4]["scale"] = "0" />
		<cfset variables.metadata.fields[4]["default"] = "0" />
		<cfset variables.metadata.fields[4]["object"] = "Organization" />
		<cfset variables.metadata.fields[4]["sequence"] = "" />
		<cfset variables.metadata.fields[4]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[5] = StructNew() />
		<cfset variables.metadata.fields[5]["name"] = "Update" />
		<cfset variables.metadata.fields[5]["alias"] = "Update" />
		<cfset variables.metadata.fields[5]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[5]["identity"] = "false" />
		<cfset variables.metadata.fields[5]["nullable"] = "false" />
		<cfset variables.metadata.fields[5]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[5]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[5]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[5]["length"] = "0" />
		<cfset variables.metadata.fields[5]["scale"] = "0" />
		<cfset variables.metadata.fields[5]["default"] = "0" />
		<cfset variables.metadata.fields[5]["object"] = "Organization" />
		<cfset variables.metadata.fields[5]["sequence"] = "" />
		<cfset variables.metadata.fields[5]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
