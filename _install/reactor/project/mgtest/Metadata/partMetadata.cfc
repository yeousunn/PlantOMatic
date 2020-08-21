
<cfcomponent hint="I am the base Metadata object for the part object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "0551E3A4D8EEB20B4CDC436E2129E24A" >
	
	<cfset variables.metadata.name = "part" />
	<cfset variables.metadata.alias = "part" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "surveyengine" />
		
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
		<cfset variables.metadata.hasOne[1] = StructNew() />
		<cfset variables.metadata.hasOne[1].name = "section" />
		<cfset variables.metadata.hasOne[1].alias = "section" />
		<cfset variables.metadata.hasOne[1].type = "hasOne" />
		<cfset variables.metadata.hasOne[1].sharedKey = "false" />
		<cfset variables.metadata.hasOne[1].relate = ArrayNew(1) />
		
		
			<cfset variables.metadata.hasOne[1].relate[1] = StructNew() />
			<cfset variables.metadata.hasOne[1].relate[1].from = "sectionid" />
			<cfset variables.metadata.hasOne[1].relate[1].to = "sectionid" />
		
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "partID" />
		<cfset variables.metadata.fields[1]["alias"] = "partID" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "true" />
		<cfset variables.metadata.fields[1]["identity"] = "true" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["scale"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<cfset variables.metadata.fields[1]["object"] = "part" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "sectionID" />
		<cfset variables.metadata.fields[2]["alias"] = "sectionID" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "true" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[2]["length"] = "0" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "" />
		<cfset variables.metadata.fields[2]["object"] = "part" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "partName" />
		<cfset variables.metadata.fields[3]["alias"] = "partName" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "false" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[3]["length"] = "50" />
		<cfset variables.metadata.fields[3]["scale"] = "0" />
		<cfset variables.metadata.fields[3]["default"] = "" />
		<cfset variables.metadata.fields[3]["object"] = "part" />
		<cfset variables.metadata.fields[3]["sequence"] = "" />
		<cfset variables.metadata.fields[3]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[4] = StructNew() />
		<cfset variables.metadata.fields[4]["name"] = "partInstructions" />
		<cfset variables.metadata.fields[4]["alias"] = "partInstructions" />
		<cfset variables.metadata.fields[4]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[4]["identity"] = "false" />
		<cfset variables.metadata.fields[4]["nullable"] = "true" />
		<cfset variables.metadata.fields[4]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[4]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[4]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[4]["length"] = "500" />
		<cfset variables.metadata.fields[4]["scale"] = "0" />
		<cfset variables.metadata.fields[4]["default"] = "" />
		<cfset variables.metadata.fields[4]["object"] = "part" />
		<cfset variables.metadata.fields[4]["sequence"] = "" />
		<cfset variables.metadata.fields[4]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[5] = StructNew() />
		<cfset variables.metadata.fields[5]["name"] = "repeatCount" />
		<cfset variables.metadata.fields[5]["alias"] = "repeatCount" />
		<cfset variables.metadata.fields[5]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[5]["identity"] = "false" />
		<cfset variables.metadata.fields[5]["nullable"] = "false" />
		<cfset variables.metadata.fields[5]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[5]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[5]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[5]["length"] = "0" />
		<cfset variables.metadata.fields[5]["scale"] = "0" />
		<cfset variables.metadata.fields[5]["default"] = "0" />
		<cfset variables.metadata.fields[5]["object"] = "part" />
		<cfset variables.metadata.fields[5]["sequence"] = "" />
		<cfset variables.metadata.fields[5]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[6] = StructNew() />
		<cfset variables.metadata.fields[6]["name"] = "partOrder" />
		<cfset variables.metadata.fields[6]["alias"] = "partOrder" />
		<cfset variables.metadata.fields[6]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[6]["identity"] = "false" />
		<cfset variables.metadata.fields[6]["nullable"] = "true" />
		<cfset variables.metadata.fields[6]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[6]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[6]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[6]["length"] = "0" />
		<cfset variables.metadata.fields[6]["scale"] = "0" />
		<cfset variables.metadata.fields[6]["default"] = "" />
		<cfset variables.metadata.fields[6]["object"] = "part" />
		<cfset variables.metadata.fields[6]["sequence"] = "" />
		<cfset variables.metadata.fields[6]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[7] = StructNew() />
		<cfset variables.metadata.fields[7]["name"] = "pdfFormat" />
		<cfset variables.metadata.fields[7]["alias"] = "pdfFormat" />
		<cfset variables.metadata.fields[7]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[7]["identity"] = "false" />
		<cfset variables.metadata.fields[7]["nullable"] = "true" />
		<cfset variables.metadata.fields[7]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[7]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[7]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[7]["length"] = "20" />
		<cfset variables.metadata.fields[7]["scale"] = "0" />
		<cfset variables.metadata.fields[7]["default"] = "" />
		<cfset variables.metadata.fields[7]["object"] = "part" />
		<cfset variables.metadata.fields[7]["sequence"] = "" />
		<cfset variables.metadata.fields[7]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[8] = StructNew() />
		<cfset variables.metadata.fields[8]["name"] = "createdBy" />
		<cfset variables.metadata.fields[8]["alias"] = "createdBy" />
		<cfset variables.metadata.fields[8]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[8]["identity"] = "false" />
		<cfset variables.metadata.fields[8]["nullable"] = "false" />
		<cfset variables.metadata.fields[8]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[8]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[8]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[8]["length"] = "0" />
		<cfset variables.metadata.fields[8]["scale"] = "0" />
		<cfset variables.metadata.fields[8]["default"] = "0" />
		<cfset variables.metadata.fields[8]["object"] = "part" />
		<cfset variables.metadata.fields[8]["sequence"] = "" />
		<cfset variables.metadata.fields[8]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[9] = StructNew() />
		<cfset variables.metadata.fields[9]["name"] = "createdOn" />
		<cfset variables.metadata.fields[9]["alias"] = "createdOn" />
		<cfset variables.metadata.fields[9]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[9]["identity"] = "false" />
		<cfset variables.metadata.fields[9]["nullable"] = "false" />
		<cfset variables.metadata.fields[9]["dbDataType"] = "datetime" />
		<cfset variables.metadata.fields[9]["cfDataType"] = "date" />
		<cfset variables.metadata.fields[9]["cfSqlType"] = "cf_sql_timestamp" />
		<cfset variables.metadata.fields[9]["length"] = "0" />
		<cfset variables.metadata.fields[9]["scale"] = "0" />
		<cfset variables.metadata.fields[9]["default"] = "" />
		<cfset variables.metadata.fields[9]["object"] = "part" />
		<cfset variables.metadata.fields[9]["sequence"] = "" />
		<cfset variables.metadata.fields[9]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[10] = StructNew() />
		<cfset variables.metadata.fields[10]["name"] = "lastUpdateBy" />
		<cfset variables.metadata.fields[10]["alias"] = "lastUpdateBy" />
		<cfset variables.metadata.fields[10]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[10]["identity"] = "false" />
		<cfset variables.metadata.fields[10]["nullable"] = "false" />
		<cfset variables.metadata.fields[10]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[10]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[10]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[10]["length"] = "0" />
		<cfset variables.metadata.fields[10]["scale"] = "0" />
		<cfset variables.metadata.fields[10]["default"] = "0" />
		<cfset variables.metadata.fields[10]["object"] = "part" />
		<cfset variables.metadata.fields[10]["sequence"] = "" />
		<cfset variables.metadata.fields[10]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[11] = StructNew() />
		<cfset variables.metadata.fields[11]["name"] = "lastUpdateOn" />
		<cfset variables.metadata.fields[11]["alias"] = "lastUpdateOn" />
		<cfset variables.metadata.fields[11]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[11]["identity"] = "false" />
		<cfset variables.metadata.fields[11]["nullable"] = "false" />
		<cfset variables.metadata.fields[11]["dbDataType"] = "datetime" />
		<cfset variables.metadata.fields[11]["cfDataType"] = "date" />
		<cfset variables.metadata.fields[11]["cfSqlType"] = "cf_sql_timestamp" />
		<cfset variables.metadata.fields[11]["length"] = "0" />
		<cfset variables.metadata.fields[11]["scale"] = "0" />
		<cfset variables.metadata.fields[11]["default"] = "" />
		<cfset variables.metadata.fields[11]["object"] = "part" />
		<cfset variables.metadata.fields[11]["sequence"] = "" />
		<cfset variables.metadata.fields[11]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
