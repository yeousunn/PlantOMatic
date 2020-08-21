
<cfcomponent hint="I am the base Metadata object for the Admin object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "E7496FAF4FE11B2A363963E9BECB39D2" >
	
	<cfset variables.metadata.name = "Admin" />
	<cfset variables.metadata.alias = "Admin" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "rtimeta" />
		
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "Home" />
		<cfset variables.metadata.fields[1]["alias"] = "Home" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[1]["identity"] = "false" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["scale"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<cfset variables.metadata.fields[1]["object"] = "Admin" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "Compare" />
		<cfset variables.metadata.fields[2]["alias"] = "Compare" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[2]["length"] = "0" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "0" />
		<cfset variables.metadata.fields[2]["object"] = "Admin" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "Publish" />
		<cfset variables.metadata.fields[3]["alias"] = "Publish" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "false" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[3]["length"] = "0" />
		<cfset variables.metadata.fields[3]["scale"] = "0" />
		<cfset variables.metadata.fields[3]["default"] = "0" />
		<cfset variables.metadata.fields[3]["object"] = "Admin" />
		<cfset variables.metadata.fields[3]["sequence"] = "" />
		<cfset variables.metadata.fields[3]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[4] = StructNew() />
		<cfset variables.metadata.fields[4]["name"] = "CompareDuplicates" />
		<cfset variables.metadata.fields[4]["alias"] = "CompareDuplicates" />
		<cfset variables.metadata.fields[4]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[4]["identity"] = "false" />
		<cfset variables.metadata.fields[4]["nullable"] = "false" />
		<cfset variables.metadata.fields[4]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[4]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[4]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[4]["length"] = "0" />
		<cfset variables.metadata.fields[4]["scale"] = "0" />
		<cfset variables.metadata.fields[4]["default"] = "0" />
		<cfset variables.metadata.fields[4]["object"] = "Admin" />
		<cfset variables.metadata.fields[4]["sequence"] = "" />
		<cfset variables.metadata.fields[4]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[5] = StructNew() />
		<cfset variables.metadata.fields[5]["name"] = "EmployeeAssign" />
		<cfset variables.metadata.fields[5]["alias"] = "EmployeeAssign" />
		<cfset variables.metadata.fields[5]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[5]["identity"] = "false" />
		<cfset variables.metadata.fields[5]["nullable"] = "false" />
		<cfset variables.metadata.fields[5]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[5]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[5]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[5]["length"] = "0" />
		<cfset variables.metadata.fields[5]["scale"] = "0" />
		<cfset variables.metadata.fields[5]["default"] = "0" />
		<cfset variables.metadata.fields[5]["object"] = "Admin" />
		<cfset variables.metadata.fields[5]["sequence"] = "" />
		<cfset variables.metadata.fields[5]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[6] = StructNew() />
		<cfset variables.metadata.fields[6]["name"] = "AuthorAssign" />
		<cfset variables.metadata.fields[6]["alias"] = "AuthorAssign" />
		<cfset variables.metadata.fields[6]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[6]["identity"] = "false" />
		<cfset variables.metadata.fields[6]["nullable"] = "false" />
		<cfset variables.metadata.fields[6]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[6]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[6]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[6]["length"] = "0" />
		<cfset variables.metadata.fields[6]["scale"] = "0" />
		<cfset variables.metadata.fields[6]["default"] = "0" />
		<cfset variables.metadata.fields[6]["object"] = "Admin" />
		<cfset variables.metadata.fields[6]["sequence"] = "" />
		<cfset variables.metadata.fields[6]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[7] = StructNew() />
		<cfset variables.metadata.fields[7]["name"] = "EmployeeValidate" />
		<cfset variables.metadata.fields[7]["alias"] = "EmployeeValidate" />
		<cfset variables.metadata.fields[7]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[7]["identity"] = "false" />
		<cfset variables.metadata.fields[7]["nullable"] = "false" />
		<cfset variables.metadata.fields[7]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[7]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[7]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[7]["length"] = "0" />
		<cfset variables.metadata.fields[7]["scale"] = "0" />
		<cfset variables.metadata.fields[7]["default"] = "0" />
		<cfset variables.metadata.fields[7]["object"] = "Admin" />
		<cfset variables.metadata.fields[7]["sequence"] = "" />
		<cfset variables.metadata.fields[7]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[8] = StructNew() />
		<cfset variables.metadata.fields[8]["name"] = "EmployeeAdd" />
		<cfset variables.metadata.fields[8]["alias"] = "EmployeeAdd" />
		<cfset variables.metadata.fields[8]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[8]["identity"] = "false" />
		<cfset variables.metadata.fields[8]["nullable"] = "false" />
		<cfset variables.metadata.fields[8]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[8]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[8]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[8]["length"] = "0" />
		<cfset variables.metadata.fields[8]["scale"] = "0" />
		<cfset variables.metadata.fields[8]["default"] = "0" />
		<cfset variables.metadata.fields[8]["object"] = "Admin" />
		<cfset variables.metadata.fields[8]["sequence"] = "" />
		<cfset variables.metadata.fields[8]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[9] = StructNew() />
		<cfset variables.metadata.fields[9]["name"] = "EmployeeInsert" />
		<cfset variables.metadata.fields[9]["alias"] = "EmployeeInsert" />
		<cfset variables.metadata.fields[9]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[9]["identity"] = "false" />
		<cfset variables.metadata.fields[9]["nullable"] = "false" />
		<cfset variables.metadata.fields[9]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[9]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[9]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[9]["length"] = "0" />
		<cfset variables.metadata.fields[9]["scale"] = "0" />
		<cfset variables.metadata.fields[9]["default"] = "0" />
		<cfset variables.metadata.fields[9]["object"] = "Admin" />
		<cfset variables.metadata.fields[9]["sequence"] = "" />
		<cfset variables.metadata.fields[9]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[10] = StructNew() />
		<cfset variables.metadata.fields[10]["name"] = "EmployeeRemove" />
		<cfset variables.metadata.fields[10]["alias"] = "EmployeeRemove" />
		<cfset variables.metadata.fields[10]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[10]["identity"] = "false" />
		<cfset variables.metadata.fields[10]["nullable"] = "false" />
		<cfset variables.metadata.fields[10]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[10]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[10]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[10]["length"] = "0" />
		<cfset variables.metadata.fields[10]["scale"] = "0" />
		<cfset variables.metadata.fields[10]["default"] = "0" />
		<cfset variables.metadata.fields[10]["object"] = "Admin" />
		<cfset variables.metadata.fields[10]["sequence"] = "" />
		<cfset variables.metadata.fields[10]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[11] = StructNew() />
		<cfset variables.metadata.fields[11]["name"] = "EmployeeDelete" />
		<cfset variables.metadata.fields[11]["alias"] = "EmployeeDelete" />
		<cfset variables.metadata.fields[11]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[11]["identity"] = "false" />
		<cfset variables.metadata.fields[11]["nullable"] = "false" />
		<cfset variables.metadata.fields[11]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[11]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[11]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[11]["length"] = "0" />
		<cfset variables.metadata.fields[11]["scale"] = "0" />
		<cfset variables.metadata.fields[11]["default"] = "0" />
		<cfset variables.metadata.fields[11]["object"] = "Admin" />
		<cfset variables.metadata.fields[11]["sequence"] = "" />
		<cfset variables.metadata.fields[11]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
