
<cfcomponent hint="I am the base Metadata object for the Newsletter object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "89CE42DED0FD1301045FA0F220A825F7" >
	
	<cfset variables.metadata.name = "Newsletter" />
	<cfset variables.metadata.alias = "Newsletter" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "rtimeta" />
		
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "Select" />
		<cfset variables.metadata.fields[1]["alias"] = "Select" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[1]["identity"] = "false" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["scale"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<cfset variables.metadata.fields[1]["object"] = "Newsletter" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "Set" />
		<cfset variables.metadata.fields[2]["alias"] = "Set" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[2]["length"] = "0" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "0" />
		<cfset variables.metadata.fields[2]["object"] = "Newsletter" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "New" />
		<cfset variables.metadata.fields[3]["alias"] = "New" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "false" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[3]["length"] = "0" />
		<cfset variables.metadata.fields[3]["scale"] = "0" />
		<cfset variables.metadata.fields[3]["default"] = "0" />
		<cfset variables.metadata.fields[3]["object"] = "Newsletter" />
		<cfset variables.metadata.fields[3]["sequence"] = "" />
		<cfset variables.metadata.fields[3]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[4] = StructNew() />
		<cfset variables.metadata.fields[4]["name"] = "BibliographyUpdate" />
		<cfset variables.metadata.fields[4]["alias"] = "BibliographyUpdate" />
		<cfset variables.metadata.fields[4]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[4]["identity"] = "false" />
		<cfset variables.metadata.fields[4]["nullable"] = "false" />
		<cfset variables.metadata.fields[4]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[4]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[4]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[4]["length"] = "0" />
		<cfset variables.metadata.fields[4]["scale"] = "0" />
		<cfset variables.metadata.fields[4]["default"] = "0" />
		<cfset variables.metadata.fields[4]["object"] = "Newsletter" />
		<cfset variables.metadata.fields[4]["sequence"] = "" />
		<cfset variables.metadata.fields[4]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[5] = StructNew() />
		<cfset variables.metadata.fields[5]["name"] = "Edit" />
		<cfset variables.metadata.fields[5]["alias"] = "Edit" />
		<cfset variables.metadata.fields[5]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[5]["identity"] = "false" />
		<cfset variables.metadata.fields[5]["nullable"] = "false" />
		<cfset variables.metadata.fields[5]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[5]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[5]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[5]["length"] = "0" />
		<cfset variables.metadata.fields[5]["scale"] = "0" />
		<cfset variables.metadata.fields[5]["default"] = "0" />
		<cfset variables.metadata.fields[5]["object"] = "Newsletter" />
		<cfset variables.metadata.fields[5]["sequence"] = "" />
		<cfset variables.metadata.fields[5]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[6] = StructNew() />
		<cfset variables.metadata.fields[6]["name"] = "Update" />
		<cfset variables.metadata.fields[6]["alias"] = "Update" />
		<cfset variables.metadata.fields[6]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[6]["identity"] = "false" />
		<cfset variables.metadata.fields[6]["nullable"] = "false" />
		<cfset variables.metadata.fields[6]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[6]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[6]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[6]["length"] = "0" />
		<cfset variables.metadata.fields[6]["scale"] = "0" />
		<cfset variables.metadata.fields[6]["default"] = "0" />
		<cfset variables.metadata.fields[6]["object"] = "Newsletter" />
		<cfset variables.metadata.fields[6]["sequence"] = "" />
		<cfset variables.metadata.fields[6]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[7] = StructNew() />
		<cfset variables.metadata.fields[7]["name"] = "PublicationUpdate" />
		<cfset variables.metadata.fields[7]["alias"] = "PublicationUpdate" />
		<cfset variables.metadata.fields[7]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[7]["identity"] = "false" />
		<cfset variables.metadata.fields[7]["nullable"] = "false" />
		<cfset variables.metadata.fields[7]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[7]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[7]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[7]["length"] = "0" />
		<cfset variables.metadata.fields[7]["scale"] = "0" />
		<cfset variables.metadata.fields[7]["default"] = "0" />
		<cfset variables.metadata.fields[7]["object"] = "Newsletter" />
		<cfset variables.metadata.fields[7]["sequence"] = "" />
		<cfset variables.metadata.fields[7]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[8] = StructNew() />
		<cfset variables.metadata.fields[8]["name"] = "Preview" />
		<cfset variables.metadata.fields[8]["alias"] = "Preview" />
		<cfset variables.metadata.fields[8]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[8]["identity"] = "false" />
		<cfset variables.metadata.fields[8]["nullable"] = "false" />
		<cfset variables.metadata.fields[8]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[8]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[8]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[8]["length"] = "0" />
		<cfset variables.metadata.fields[8]["scale"] = "0" />
		<cfset variables.metadata.fields[8]["default"] = "0" />
		<cfset variables.metadata.fields[8]["object"] = "Newsletter" />
		<cfset variables.metadata.fields[8]["sequence"] = "" />
		<cfset variables.metadata.fields[8]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
