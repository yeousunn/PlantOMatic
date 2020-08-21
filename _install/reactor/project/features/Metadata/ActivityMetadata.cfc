
<cfcomponent hint="I am the base Metadata object for the Activity object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "233DA4675663F37F8BB5A5074C275181" >
	
	<cfset variables.metadata.name = "Activity" />
	<cfset variables.metadata.alias = "Activity" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "healthchallenge" />
		
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "ActivityID" />
		<cfset variables.metadata.fields[1]["alias"] = "ActivityID" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "true" />
		<cfset variables.metadata.fields[1]["identity"] = "true" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["scale"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<cfset variables.metadata.fields[1]["object"] = "Activity" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "MemberID" />
		<cfset variables.metadata.fields[2]["alias"] = "MemberID" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[2]["length"] = "0" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "0" />
		<cfset variables.metadata.fields[2]["object"] = "Activity" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "ActivityTypeID" />
		<cfset variables.metadata.fields[3]["alias"] = "ActivityTypeID" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "true" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[3]["length"] = "0" />
		<cfset variables.metadata.fields[3]["scale"] = "0" />
		<cfset variables.metadata.fields[3]["default"] = "" />
		<cfset variables.metadata.fields[3]["object"] = "Activity" />
		<cfset variables.metadata.fields[3]["sequence"] = "" />
		<cfset variables.metadata.fields[3]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[4] = StructNew() />
		<cfset variables.metadata.fields[4]["name"] = "ActivityDate" />
		<cfset variables.metadata.fields[4]["alias"] = "ActivityDate" />
		<cfset variables.metadata.fields[4]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[4]["identity"] = "false" />
		<cfset variables.metadata.fields[4]["nullable"] = "true" />
		<cfset variables.metadata.fields[4]["dbDataType"] = "date" />
		<cfset variables.metadata.fields[4]["cfDataType"] = "date" />
		<cfset variables.metadata.fields[4]["cfSqlType"] = "cf_sql_date" />
		<cfset variables.metadata.fields[4]["length"] = "0" />
		<cfset variables.metadata.fields[4]["scale"] = "0" />
		<cfset variables.metadata.fields[4]["default"] = "" />
		<cfset variables.metadata.fields[4]["object"] = "Activity" />
		<cfset variables.metadata.fields[4]["sequence"] = "" />
		<cfset variables.metadata.fields[4]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[5] = StructNew() />
		<cfset variables.metadata.fields[5]["name"] = "UnitOfMeasure" />
		<cfset variables.metadata.fields[5]["alias"] = "UnitOfMeasure" />
		<cfset variables.metadata.fields[5]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[5]["identity"] = "false" />
		<cfset variables.metadata.fields[5]["nullable"] = "true" />
		<cfset variables.metadata.fields[5]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[5]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[5]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[5]["length"] = "50" />
		<cfset variables.metadata.fields[5]["scale"] = "0" />
		<cfset variables.metadata.fields[5]["default"] = "" />
		<cfset variables.metadata.fields[5]["object"] = "Activity" />
		<cfset variables.metadata.fields[5]["sequence"] = "" />
		<cfset variables.metadata.fields[5]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[6] = StructNew() />
		<cfset variables.metadata.fields[6]["name"] = "MetricValue" />
		<cfset variables.metadata.fields[6]["alias"] = "MetricValue" />
		<cfset variables.metadata.fields[6]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[6]["identity"] = "false" />
		<cfset variables.metadata.fields[6]["nullable"] = "true" />
		<cfset variables.metadata.fields[6]["dbDataType"] = "float" />
		<cfset variables.metadata.fields[6]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[6]["cfSqlType"] = "cf_sql_float" />
		<cfset variables.metadata.fields[6]["length"] = "0" />
		<cfset variables.metadata.fields[6]["scale"] = "0" />
		<cfset variables.metadata.fields[6]["default"] = "" />
		<cfset variables.metadata.fields[6]["object"] = "Activity" />
		<cfset variables.metadata.fields[6]["sequence"] = "" />
		<cfset variables.metadata.fields[6]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[7] = StructNew() />
		<cfset variables.metadata.fields[7]["name"] = "StandardValue" />
		<cfset variables.metadata.fields[7]["alias"] = "StandardValue" />
		<cfset variables.metadata.fields[7]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[7]["identity"] = "false" />
		<cfset variables.metadata.fields[7]["nullable"] = "true" />
		<cfset variables.metadata.fields[7]["dbDataType"] = "float" />
		<cfset variables.metadata.fields[7]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[7]["cfSqlType"] = "cf_sql_float" />
		<cfset variables.metadata.fields[7]["length"] = "0" />
		<cfset variables.metadata.fields[7]["scale"] = "0" />
		<cfset variables.metadata.fields[7]["default"] = "" />
		<cfset variables.metadata.fields[7]["object"] = "Activity" />
		<cfset variables.metadata.fields[7]["sequence"] = "" />
		<cfset variables.metadata.fields[7]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[8] = StructNew() />
		<cfset variables.metadata.fields[8]["name"] = "ElapsedTime" />
		<cfset variables.metadata.fields[8]["alias"] = "ElapsedTime" />
		<cfset variables.metadata.fields[8]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[8]["identity"] = "false" />
		<cfset variables.metadata.fields[8]["nullable"] = "true" />
		<cfset variables.metadata.fields[8]["dbDataType"] = "time" />
		<cfset variables.metadata.fields[8]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[8]["cfSqlType"] = "cf_sql_time" />
		<cfset variables.metadata.fields[8]["length"] = "0" />
		<cfset variables.metadata.fields[8]["scale"] = "0" />
		<cfset variables.metadata.fields[8]["default"] = "" />
		<cfset variables.metadata.fields[8]["object"] = "Activity" />
		<cfset variables.metadata.fields[8]["sequence"] = "" />
		<cfset variables.metadata.fields[8]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[9] = StructNew() />
		<cfset variables.metadata.fields[9]["name"] = "Description" />
		<cfset variables.metadata.fields[9]["alias"] = "Description" />
		<cfset variables.metadata.fields[9]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[9]["identity"] = "false" />
		<cfset variables.metadata.fields[9]["nullable"] = "true" />
		<cfset variables.metadata.fields[9]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[9]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[9]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[9]["length"] = "4000" />
		<cfset variables.metadata.fields[9]["scale"] = "0" />
		<cfset variables.metadata.fields[9]["default"] = "" />
		<cfset variables.metadata.fields[9]["object"] = "Activity" />
		<cfset variables.metadata.fields[9]["sequence"] = "" />
		<cfset variables.metadata.fields[9]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[10] = StructNew() />
		<cfset variables.metadata.fields[10]["name"] = "CreatedOn" />
		<cfset variables.metadata.fields[10]["alias"] = "CreatedOn" />
		<cfset variables.metadata.fields[10]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[10]["identity"] = "false" />
		<cfset variables.metadata.fields[10]["nullable"] = "false" />
		<cfset variables.metadata.fields[10]["dbDataType"] = "timestamp" />
		<cfset variables.metadata.fields[10]["cfDataType"] = "date" />
		<cfset variables.metadata.fields[10]["cfSqlType"] = "cf_sql_timestamp" />
		<cfset variables.metadata.fields[10]["length"] = "0" />
		<cfset variables.metadata.fields[10]["scale"] = "0" />
		<cfset variables.metadata.fields[10]["default"] = "" />
		<cfset variables.metadata.fields[10]["object"] = "Activity" />
		<cfset variables.metadata.fields[10]["sequence"] = "" />
		<cfset variables.metadata.fields[10]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[11] = StructNew() />
		<cfset variables.metadata.fields[11]["name"] = "CreatedBy" />
		<cfset variables.metadata.fields[11]["alias"] = "CreatedBy" />
		<cfset variables.metadata.fields[11]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[11]["identity"] = "false" />
		<cfset variables.metadata.fields[11]["nullable"] = "true" />
		<cfset variables.metadata.fields[11]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[11]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[11]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[11]["length"] = "0" />
		<cfset variables.metadata.fields[11]["scale"] = "0" />
		<cfset variables.metadata.fields[11]["default"] = "" />
		<cfset variables.metadata.fields[11]["object"] = "Activity" />
		<cfset variables.metadata.fields[11]["sequence"] = "" />
		<cfset variables.metadata.fields[11]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[12] = StructNew() />
		<cfset variables.metadata.fields[12]["name"] = "UpdatedOn" />
		<cfset variables.metadata.fields[12]["alias"] = "UpdatedOn" />
		<cfset variables.metadata.fields[12]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[12]["identity"] = "false" />
		<cfset variables.metadata.fields[12]["nullable"] = "false" />
		<cfset variables.metadata.fields[12]["dbDataType"] = "timestamp" />
		<cfset variables.metadata.fields[12]["cfDataType"] = "date" />
		<cfset variables.metadata.fields[12]["cfSqlType"] = "cf_sql_timestamp" />
		<cfset variables.metadata.fields[12]["length"] = "0" />
		<cfset variables.metadata.fields[12]["scale"] = "0" />
		<cfset variables.metadata.fields[12]["default"] = "" />
		<cfset variables.metadata.fields[12]["object"] = "Activity" />
		<cfset variables.metadata.fields[12]["sequence"] = "" />
		<cfset variables.metadata.fields[12]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[13] = StructNew() />
		<cfset variables.metadata.fields[13]["name"] = "UpdatedBy" />
		<cfset variables.metadata.fields[13]["alias"] = "UpdatedBy" />
		<cfset variables.metadata.fields[13]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[13]["identity"] = "false" />
		<cfset variables.metadata.fields[13]["nullable"] = "true" />
		<cfset variables.metadata.fields[13]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[13]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[13]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[13]["length"] = "0" />
		<cfset variables.metadata.fields[13]["scale"] = "0" />
		<cfset variables.metadata.fields[13]["default"] = "" />
		<cfset variables.metadata.fields[13]["object"] = "Activity" />
		<cfset variables.metadata.fields[13]["sequence"] = "" />
		<cfset variables.metadata.fields[13]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
