
<cfcomponent hint="I am the base Metadata object for the Plant object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "ECEFC847F29B9C8140AD7B2D964D52ED" >
	
	<cfset variables.metadata.name = "Plant" />
	<cfset variables.metadata.alias = "Plant" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "plantdb" />
		
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "PlantID" />
		<cfset variables.metadata.fields[1]["alias"] = "PlantID" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "true" />
		<cfset variables.metadata.fields[1]["identity"] = "true" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["scale"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<cfset variables.metadata.fields[1]["object"] = "Plant" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "Symbol" />
		<cfset variables.metadata.fields[2]["alias"] = "Symbol" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[2]["length"] = "20" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "" />
		<cfset variables.metadata.fields[2]["object"] = "Plant" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "SynonymSymbol" />
		<cfset variables.metadata.fields[3]["alias"] = "SynonymSymbol" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "true" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[3]["length"] = "20" />
		<cfset variables.metadata.fields[3]["scale"] = "0" />
		<cfset variables.metadata.fields[3]["default"] = "" />
		<cfset variables.metadata.fields[3]["object"] = "Plant" />
		<cfset variables.metadata.fields[3]["sequence"] = "" />
		<cfset variables.metadata.fields[3]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[4] = StructNew() />
		<cfset variables.metadata.fields[4]["name"] = "ScientificNameWithAuthor" />
		<cfset variables.metadata.fields[4]["alias"] = "ScientificNameWithAuthor" />
		<cfset variables.metadata.fields[4]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[4]["identity"] = "false" />
		<cfset variables.metadata.fields[4]["nullable"] = "false" />
		<cfset variables.metadata.fields[4]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[4]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[4]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[4]["length"] = "250" />
		<cfset variables.metadata.fields[4]["scale"] = "0" />
		<cfset variables.metadata.fields[4]["default"] = "" />
		<cfset variables.metadata.fields[4]["object"] = "Plant" />
		<cfset variables.metadata.fields[4]["sequence"] = "" />
		<cfset variables.metadata.fields[4]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[5] = StructNew() />
		<cfset variables.metadata.fields[5]["name"] = "CommonName" />
		<cfset variables.metadata.fields[5]["alias"] = "CommonName" />
		<cfset variables.metadata.fields[5]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[5]["identity"] = "false" />
		<cfset variables.metadata.fields[5]["nullable"] = "true" />
		<cfset variables.metadata.fields[5]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[5]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[5]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[5]["length"] = "150" />
		<cfset variables.metadata.fields[5]["scale"] = "0" />
		<cfset variables.metadata.fields[5]["default"] = "" />
		<cfset variables.metadata.fields[5]["object"] = "Plant" />
		<cfset variables.metadata.fields[5]["sequence"] = "" />
		<cfset variables.metadata.fields[5]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[6] = StructNew() />
		<cfset variables.metadata.fields[6]["name"] = "Family" />
		<cfset variables.metadata.fields[6]["alias"] = "Family" />
		<cfset variables.metadata.fields[6]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[6]["identity"] = "false" />
		<cfset variables.metadata.fields[6]["nullable"] = "true" />
		<cfset variables.metadata.fields[6]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[6]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[6]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[6]["length"] = "150" />
		<cfset variables.metadata.fields[6]["scale"] = "0" />
		<cfset variables.metadata.fields[6]["default"] = "" />
		<cfset variables.metadata.fields[6]["object"] = "Plant" />
		<cfset variables.metadata.fields[6]["sequence"] = "" />
		<cfset variables.metadata.fields[6]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
