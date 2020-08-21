
<cfcomponent hint="I am the base Metadata object for the section object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "7FD62144E70DCFC0665D8770CC11B04F" >
	
	<cfset variables.metadata.name = "section" />
	<cfset variables.metadata.alias = "section" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "surveyengine" />
		
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "sectionID" />
		<cfset variables.metadata.fields[1]["alias"] = "sectionID" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "true" />
		<cfset variables.metadata.fields[1]["identity"] = "true" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["scale"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<cfset variables.metadata.fields[1]["object"] = "section" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "areaID" />
		<cfset variables.metadata.fields[2]["alias"] = "areaID" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[2]["length"] = "0" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "0" />
		<cfset variables.metadata.fields[2]["object"] = "section" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "sectionName" />
		<cfset variables.metadata.fields[3]["alias"] = "sectionName" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "false" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[3]["length"] = "60" />
		<cfset variables.metadata.fields[3]["scale"] = "0" />
		<cfset variables.metadata.fields[3]["default"] = "" />
		<cfset variables.metadata.fields[3]["object"] = "section" />
		<cfset variables.metadata.fields[3]["sequence"] = "" />
		<cfset variables.metadata.fields[3]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[4] = StructNew() />
		<cfset variables.metadata.fields[4]["name"] = "sectionInstructions" />
		<cfset variables.metadata.fields[4]["alias"] = "sectionInstructions" />
		<cfset variables.metadata.fields[4]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[4]["identity"] = "false" />
		<cfset variables.metadata.fields[4]["nullable"] = "true" />
		<cfset variables.metadata.fields[4]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[4]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[4]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[4]["length"] = "500" />
		<cfset variables.metadata.fields[4]["scale"] = "0" />
		<cfset variables.metadata.fields[4]["default"] = "" />
		<cfset variables.metadata.fields[4]["object"] = "section" />
		<cfset variables.metadata.fields[4]["sequence"] = "" />
		<cfset variables.metadata.fields[4]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[5] = StructNew() />
		<cfset variables.metadata.fields[5]["name"] = "sectionOrder" />
		<cfset variables.metadata.fields[5]["alias"] = "sectionOrder" />
		<cfset variables.metadata.fields[5]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[5]["identity"] = "false" />
		<cfset variables.metadata.fields[5]["nullable"] = "false" />
		<cfset variables.metadata.fields[5]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[5]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[5]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[5]["length"] = "0" />
		<cfset variables.metadata.fields[5]["scale"] = "0" />
		<cfset variables.metadata.fields[5]["default"] = "0" />
		<cfset variables.metadata.fields[5]["object"] = "section" />
		<cfset variables.metadata.fields[5]["sequence"] = "" />
		<cfset variables.metadata.fields[5]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[6] = StructNew() />
		<cfset variables.metadata.fields[6]["name"] = "displayTo" />
		<cfset variables.metadata.fields[6]["alias"] = "displayTo" />
		<cfset variables.metadata.fields[6]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[6]["identity"] = "false" />
		<cfset variables.metadata.fields[6]["nullable"] = "true" />
		<cfset variables.metadata.fields[6]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[6]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[6]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[6]["length"] = "50" />
		<cfset variables.metadata.fields[6]["scale"] = "0" />
		<cfset variables.metadata.fields[6]["default"] = "" />
		<cfset variables.metadata.fields[6]["object"] = "section" />
		<cfset variables.metadata.fields[6]["sequence"] = "" />
		<cfset variables.metadata.fields[6]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[7] = StructNew() />
		<cfset variables.metadata.fields[7]["name"] = "sectionEvent" />
		<cfset variables.metadata.fields[7]["alias"] = "sectionEvent" />
		<cfset variables.metadata.fields[7]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[7]["identity"] = "false" />
		<cfset variables.metadata.fields[7]["nullable"] = "true" />
		<cfset variables.metadata.fields[7]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[7]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[7]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[7]["length"] = "50" />
		<cfset variables.metadata.fields[7]["scale"] = "0" />
		<cfset variables.metadata.fields[7]["default"] = "" />
		<cfset variables.metadata.fields[7]["object"] = "section" />
		<cfset variables.metadata.fields[7]["sequence"] = "" />
		<cfset variables.metadata.fields[7]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[8] = StructNew() />
		<cfset variables.metadata.fields[8]["name"] = "neededCompleteForFinishAndPay" />
		<cfset variables.metadata.fields[8]["alias"] = "neededCompleteForFinishAndPay" />
		<cfset variables.metadata.fields[8]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[8]["identity"] = "false" />
		<cfset variables.metadata.fields[8]["nullable"] = "true" />
		<cfset variables.metadata.fields[8]["dbDataType"] = "bit" />
		<cfset variables.metadata.fields[8]["cfDataType"] = "boolean" />
		<cfset variables.metadata.fields[8]["cfSqlType"] = "cf_sql_bit" />
		<cfset variables.metadata.fields[8]["length"] = "0" />
		<cfset variables.metadata.fields[8]["scale"] = "0" />
		<cfset variables.metadata.fields[8]["default"] = "false" />
		<cfset variables.metadata.fields[8]["object"] = "section" />
		<cfset variables.metadata.fields[8]["sequence"] = "" />
		<cfset variables.metadata.fields[8]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[9] = StructNew() />
		<cfset variables.metadata.fields[9]["name"] = "createdBy" />
		<cfset variables.metadata.fields[9]["alias"] = "createdBy" />
		<cfset variables.metadata.fields[9]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[9]["identity"] = "false" />
		<cfset variables.metadata.fields[9]["nullable"] = "false" />
		<cfset variables.metadata.fields[9]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[9]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[9]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[9]["length"] = "0" />
		<cfset variables.metadata.fields[9]["scale"] = "0" />
		<cfset variables.metadata.fields[9]["default"] = "0" />
		<cfset variables.metadata.fields[9]["object"] = "section" />
		<cfset variables.metadata.fields[9]["sequence"] = "" />
		<cfset variables.metadata.fields[9]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[10] = StructNew() />
		<cfset variables.metadata.fields[10]["name"] = "createdOn" />
		<cfset variables.metadata.fields[10]["alias"] = "createdOn" />
		<cfset variables.metadata.fields[10]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[10]["identity"] = "false" />
		<cfset variables.metadata.fields[10]["nullable"] = "false" />
		<cfset variables.metadata.fields[10]["dbDataType"] = "datetime" />
		<cfset variables.metadata.fields[10]["cfDataType"] = "date" />
		<cfset variables.metadata.fields[10]["cfSqlType"] = "cf_sql_timestamp" />
		<cfset variables.metadata.fields[10]["length"] = "0" />
		<cfset variables.metadata.fields[10]["scale"] = "0" />
		<cfset variables.metadata.fields[10]["default"] = "" />
		<cfset variables.metadata.fields[10]["object"] = "section" />
		<cfset variables.metadata.fields[10]["sequence"] = "" />
		<cfset variables.metadata.fields[10]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[11] = StructNew() />
		<cfset variables.metadata.fields[11]["name"] = "lastUpdateBy" />
		<cfset variables.metadata.fields[11]["alias"] = "lastUpdateBy" />
		<cfset variables.metadata.fields[11]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[11]["identity"] = "false" />
		<cfset variables.metadata.fields[11]["nullable"] = "false" />
		<cfset variables.metadata.fields[11]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[11]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[11]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[11]["length"] = "0" />
		<cfset variables.metadata.fields[11]["scale"] = "0" />
		<cfset variables.metadata.fields[11]["default"] = "0" />
		<cfset variables.metadata.fields[11]["object"] = "section" />
		<cfset variables.metadata.fields[11]["sequence"] = "" />
		<cfset variables.metadata.fields[11]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[12] = StructNew() />
		<cfset variables.metadata.fields[12]["name"] = "lastUpdateOn" />
		<cfset variables.metadata.fields[12]["alias"] = "lastUpdateOn" />
		<cfset variables.metadata.fields[12]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[12]["identity"] = "false" />
		<cfset variables.metadata.fields[12]["nullable"] = "false" />
		<cfset variables.metadata.fields[12]["dbDataType"] = "datetime" />
		<cfset variables.metadata.fields[12]["cfDataType"] = "date" />
		<cfset variables.metadata.fields[12]["cfSqlType"] = "cf_sql_timestamp" />
		<cfset variables.metadata.fields[12]["length"] = "0" />
		<cfset variables.metadata.fields[12]["scale"] = "0" />
		<cfset variables.metadata.fields[12]["default"] = "" />
		<cfset variables.metadata.fields[12]["object"] = "section" />
		<cfset variables.metadata.fields[12]["sequence"] = "" />
		<cfset variables.metadata.fields[12]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
