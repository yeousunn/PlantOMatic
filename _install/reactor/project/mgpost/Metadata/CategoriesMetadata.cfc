
<cfcomponent hint="I am the base Metadata object for the categories object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "63A56B2956C8485949C39740D14D189C" >
	
	<cfset variables.metadata.name = "categories" />
	<cfset variables.metadata.alias = "categories" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "litepost" />
		
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "categoryID" />
		<cfset variables.metadata.fields[1]["alias"] = "categoryID" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "true" />
		<cfset variables.metadata.fields[1]["identity"] = "true" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["scale"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<cfset variables.metadata.fields[1]["object"] = "categories" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "category" />
		<cfset variables.metadata.fields[2]["alias"] = "category" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "varchar" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "string" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_varchar" />
		<cfset variables.metadata.fields[2]["length"] = "255" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "" />
		<cfset variables.metadata.fields[2]["object"] = "categories" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
