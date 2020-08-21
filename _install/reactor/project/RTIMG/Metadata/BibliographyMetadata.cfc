
<cfcomponent hint="I am the base Metadata object for the Bibliography object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "37C1E079620BD3A548876789AE464BBF" >
	
	<cfset variables.metadata.name = "Bibliography" />
	<cfset variables.metadata.alias = "Bibliography" />
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
		<cfset variables.metadata.fields[1]["object"] = "Bibliography" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "Add" />
		<cfset variables.metadata.fields[2]["alias"] = "Add" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[2]["length"] = "0" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "0" />
		<cfset variables.metadata.fields[2]["object"] = "Bibliography" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "Insert" />
		<cfset variables.metadata.fields[3]["alias"] = "Insert" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "false" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[3]["length"] = "0" />
		<cfset variables.metadata.fields[3]["scale"] = "0" />
		<cfset variables.metadata.fields[3]["default"] = "0" />
		<cfset variables.metadata.fields[3]["object"] = "Bibliography" />
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
		<cfset variables.metadata.fields[4]["object"] = "Bibliography" />
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
		<cfset variables.metadata.fields[5]["object"] = "Bibliography" />
		<cfset variables.metadata.fields[5]["sequence"] = "" />
		<cfset variables.metadata.fields[5]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[6] = StructNew() />
		<cfset variables.metadata.fields[6]["name"] = "Delete" />
		<cfset variables.metadata.fields[6]["alias"] = "Delete" />
		<cfset variables.metadata.fields[6]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[6]["identity"] = "false" />
		<cfset variables.metadata.fields[6]["nullable"] = "false" />
		<cfset variables.metadata.fields[6]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[6]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[6]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[6]["length"] = "0" />
		<cfset variables.metadata.fields[6]["scale"] = "0" />
		<cfset variables.metadata.fields[6]["default"] = "0" />
		<cfset variables.metadata.fields[6]["object"] = "Bibliography" />
		<cfset variables.metadata.fields[6]["sequence"] = "" />
		<cfset variables.metadata.fields[6]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[7] = StructNew() />
		<cfset variables.metadata.fields[7]["name"] = "Preview" />
		<cfset variables.metadata.fields[7]["alias"] = "Preview" />
		<cfset variables.metadata.fields[7]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[7]["identity"] = "false" />
		<cfset variables.metadata.fields[7]["nullable"] = "false" />
		<cfset variables.metadata.fields[7]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[7]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[7]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[7]["length"] = "0" />
		<cfset variables.metadata.fields[7]["scale"] = "0" />
		<cfset variables.metadata.fields[7]["default"] = "0" />
		<cfset variables.metadata.fields[7]["object"] = "Bibliography" />
		<cfset variables.metadata.fields[7]["sequence"] = "" />
		<cfset variables.metadata.fields[7]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[8] = StructNew() />
		<cfset variables.metadata.fields[8]["name"] = "Print" />
		<cfset variables.metadata.fields[8]["alias"] = "Print" />
		<cfset variables.metadata.fields[8]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[8]["identity"] = "false" />
		<cfset variables.metadata.fields[8]["nullable"] = "false" />
		<cfset variables.metadata.fields[8]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[8]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[8]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[8]["length"] = "0" />
		<cfset variables.metadata.fields[8]["scale"] = "0" />
		<cfset variables.metadata.fields[8]["default"] = "0" />
		<cfset variables.metadata.fields[8]["object"] = "Bibliography" />
		<cfset variables.metadata.fields[8]["sequence"] = "" />
		<cfset variables.metadata.fields[8]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[9] = StructNew() />
		<cfset variables.metadata.fields[9]["name"] = "PublicationUpdate" />
		<cfset variables.metadata.fields[9]["alias"] = "PublicationUpdate" />
		<cfset variables.metadata.fields[9]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[9]["identity"] = "false" />
		<cfset variables.metadata.fields[9]["nullable"] = "false" />
		<cfset variables.metadata.fields[9]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[9]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[9]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[9]["length"] = "0" />
		<cfset variables.metadata.fields[9]["scale"] = "0" />
		<cfset variables.metadata.fields[9]["default"] = "0" />
		<cfset variables.metadata.fields[9]["object"] = "Bibliography" />
		<cfset variables.metadata.fields[9]["sequence"] = "" />
		<cfset variables.metadata.fields[9]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
