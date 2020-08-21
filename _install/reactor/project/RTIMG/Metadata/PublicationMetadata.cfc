
<cfcomponent hint="I am the base Metadata object for the Publication object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractMetadata" >
	
	<cfset variables.signature = "C032C78F2F8D75993D1E4E3DBE4FF756" >
	
	<cfset variables.metadata.name = "Publication" />
	<cfset variables.metadata.alias = "Publication" />
	<cfset variables.metadata.type = "table" />
	<cfset variables.metadata.database = "rtimeta" />
		
	<!--- Has One --->
	<cfset variables.metadata.hasOne = ArrayNew(1) />
	
	
	<!--- Has Many --->
	<cfset variables.metadata.hasMany = ArrayNew(1) />
	
	
	<!--- Fields --->
	<cfset variables.metadata.fields = ArrayNew(1) />
	
		<cfset variables.metadata.fields[1] = StructNew() />
		<cfset variables.metadata.fields[1]["name"] = "Search" />
		<cfset variables.metadata.fields[1]["alias"] = "Search" />
		<cfset variables.metadata.fields[1]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[1]["identity"] = "false" />
		<cfset variables.metadata.fields[1]["nullable"] = "false" />
		<cfset variables.metadata.fields[1]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[1]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[1]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[1]["length"] = "0" />
		<cfset variables.metadata.fields[1]["scale"] = "0" />
		<cfset variables.metadata.fields[1]["default"] = "0" />
		<cfset variables.metadata.fields[1]["object"] = "Publication" />
		<cfset variables.metadata.fields[1]["sequence"] = "" />
		<cfset variables.metadata.fields[1]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[2] = StructNew() />
		<cfset variables.metadata.fields[2]["name"] = "Results" />
		<cfset variables.metadata.fields[2]["alias"] = "Results" />
		<cfset variables.metadata.fields[2]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[2]["identity"] = "false" />
		<cfset variables.metadata.fields[2]["nullable"] = "false" />
		<cfset variables.metadata.fields[2]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[2]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[2]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[2]["length"] = "0" />
		<cfset variables.metadata.fields[2]["scale"] = "0" />
		<cfset variables.metadata.fields[2]["default"] = "0" />
		<cfset variables.metadata.fields[2]["object"] = "Publication" />
		<cfset variables.metadata.fields[2]["sequence"] = "" />
		<cfset variables.metadata.fields[2]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[3] = StructNew() />
		<cfset variables.metadata.fields[3]["name"] = "Print" />
		<cfset variables.metadata.fields[3]["alias"] = "Print" />
		<cfset variables.metadata.fields[3]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[3]["identity"] = "false" />
		<cfset variables.metadata.fields[3]["nullable"] = "false" />
		<cfset variables.metadata.fields[3]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[3]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[3]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[3]["length"] = "0" />
		<cfset variables.metadata.fields[3]["scale"] = "0" />
		<cfset variables.metadata.fields[3]["default"] = "0" />
		<cfset variables.metadata.fields[3]["object"] = "Publication" />
		<cfset variables.metadata.fields[3]["sequence"] = "" />
		<cfset variables.metadata.fields[3]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[4] = StructNew() />
		<cfset variables.metadata.fields[4]["name"] = "Download" />
		<cfset variables.metadata.fields[4]["alias"] = "Download" />
		<cfset variables.metadata.fields[4]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[4]["identity"] = "false" />
		<cfset variables.metadata.fields[4]["nullable"] = "false" />
		<cfset variables.metadata.fields[4]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[4]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[4]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[4]["length"] = "0" />
		<cfset variables.metadata.fields[4]["scale"] = "0" />
		<cfset variables.metadata.fields[4]["default"] = "0" />
		<cfset variables.metadata.fields[4]["object"] = "Publication" />
		<cfset variables.metadata.fields[4]["sequence"] = "" />
		<cfset variables.metadata.fields[4]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[5] = StructNew() />
		<cfset variables.metadata.fields[5]["name"] = "BibliographySet" />
		<cfset variables.metadata.fields[5]["alias"] = "BibliographySet" />
		<cfset variables.metadata.fields[5]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[5]["identity"] = "false" />
		<cfset variables.metadata.fields[5]["nullable"] = "false" />
		<cfset variables.metadata.fields[5]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[5]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[5]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[5]["length"] = "0" />
		<cfset variables.metadata.fields[5]["scale"] = "0" />
		<cfset variables.metadata.fields[5]["default"] = "0" />
		<cfset variables.metadata.fields[5]["object"] = "Publication" />
		<cfset variables.metadata.fields[5]["sequence"] = "" />
		<cfset variables.metadata.fields[5]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[6] = StructNew() />
		<cfset variables.metadata.fields[6]["name"] = "BibliographyUpdate" />
		<cfset variables.metadata.fields[6]["alias"] = "BibliographyUpdate" />
		<cfset variables.metadata.fields[6]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[6]["identity"] = "false" />
		<cfset variables.metadata.fields[6]["nullable"] = "false" />
		<cfset variables.metadata.fields[6]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[6]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[6]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[6]["length"] = "0" />
		<cfset variables.metadata.fields[6]["scale"] = "0" />
		<cfset variables.metadata.fields[6]["default"] = "0" />
		<cfset variables.metadata.fields[6]["object"] = "Publication" />
		<cfset variables.metadata.fields[6]["sequence"] = "" />
		<cfset variables.metadata.fields[6]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[7] = StructNew() />
		<cfset variables.metadata.fields[7]["name"] = "BibliographyAdd" />
		<cfset variables.metadata.fields[7]["alias"] = "BibliographyAdd" />
		<cfset variables.metadata.fields[7]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[7]["identity"] = "false" />
		<cfset variables.metadata.fields[7]["nullable"] = "false" />
		<cfset variables.metadata.fields[7]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[7]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[7]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[7]["length"] = "0" />
		<cfset variables.metadata.fields[7]["scale"] = "0" />
		<cfset variables.metadata.fields[7]["default"] = "0" />
		<cfset variables.metadata.fields[7]["object"] = "Publication" />
		<cfset variables.metadata.fields[7]["sequence"] = "" />
		<cfset variables.metadata.fields[7]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[8] = StructNew() />
		<cfset variables.metadata.fields[8]["name"] = "BibliographyInsert" />
		<cfset variables.metadata.fields[8]["alias"] = "BibliographyInsert" />
		<cfset variables.metadata.fields[8]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[8]["identity"] = "false" />
		<cfset variables.metadata.fields[8]["nullable"] = "false" />
		<cfset variables.metadata.fields[8]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[8]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[8]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[8]["length"] = "0" />
		<cfset variables.metadata.fields[8]["scale"] = "0" />
		<cfset variables.metadata.fields[8]["default"] = "0" />
		<cfset variables.metadata.fields[8]["object"] = "Publication" />
		<cfset variables.metadata.fields[8]["sequence"] = "" />
		<cfset variables.metadata.fields[8]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[9] = StructNew() />
		<cfset variables.metadata.fields[9]["name"] = "Add" />
		<cfset variables.metadata.fields[9]["alias"] = "Add" />
		<cfset variables.metadata.fields[9]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[9]["identity"] = "false" />
		<cfset variables.metadata.fields[9]["nullable"] = "false" />
		<cfset variables.metadata.fields[9]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[9]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[9]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[9]["length"] = "0" />
		<cfset variables.metadata.fields[9]["scale"] = "0" />
		<cfset variables.metadata.fields[9]["default"] = "0" />
		<cfset variables.metadata.fields[9]["object"] = "Publication" />
		<cfset variables.metadata.fields[9]["sequence"] = "" />
		<cfset variables.metadata.fields[9]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[10] = StructNew() />
		<cfset variables.metadata.fields[10]["name"] = "Insert" />
		<cfset variables.metadata.fields[10]["alias"] = "Insert" />
		<cfset variables.metadata.fields[10]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[10]["identity"] = "false" />
		<cfset variables.metadata.fields[10]["nullable"] = "false" />
		<cfset variables.metadata.fields[10]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[10]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[10]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[10]["length"] = "0" />
		<cfset variables.metadata.fields[10]["scale"] = "0" />
		<cfset variables.metadata.fields[10]["default"] = "0" />
		<cfset variables.metadata.fields[10]["object"] = "Publication" />
		<cfset variables.metadata.fields[10]["sequence"] = "" />
		<cfset variables.metadata.fields[10]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[11] = StructNew() />
		<cfset variables.metadata.fields[11]["name"] = "Edit" />
		<cfset variables.metadata.fields[11]["alias"] = "Edit" />
		<cfset variables.metadata.fields[11]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[11]["identity"] = "false" />
		<cfset variables.metadata.fields[11]["nullable"] = "false" />
		<cfset variables.metadata.fields[11]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[11]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[11]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[11]["length"] = "0" />
		<cfset variables.metadata.fields[11]["scale"] = "0" />
		<cfset variables.metadata.fields[11]["default"] = "0" />
		<cfset variables.metadata.fields[11]["object"] = "Publication" />
		<cfset variables.metadata.fields[11]["sequence"] = "" />
		<cfset variables.metadata.fields[11]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[12] = StructNew() />
		<cfset variables.metadata.fields[12]["name"] = "Update" />
		<cfset variables.metadata.fields[12]["alias"] = "Update" />
		<cfset variables.metadata.fields[12]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[12]["identity"] = "false" />
		<cfset variables.metadata.fields[12]["nullable"] = "false" />
		<cfset variables.metadata.fields[12]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[12]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[12]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[12]["length"] = "0" />
		<cfset variables.metadata.fields[12]["scale"] = "0" />
		<cfset variables.metadata.fields[12]["default"] = "0" />
		<cfset variables.metadata.fields[12]["object"] = "Publication" />
		<cfset variables.metadata.fields[12]["sequence"] = "" />
		<cfset variables.metadata.fields[12]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[13] = StructNew() />
		<cfset variables.metadata.fields[13]["name"] = "Delete" />
		<cfset variables.metadata.fields[13]["alias"] = "Delete" />
		<cfset variables.metadata.fields[13]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[13]["identity"] = "false" />
		<cfset variables.metadata.fields[13]["nullable"] = "false" />
		<cfset variables.metadata.fields[13]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[13]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[13]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[13]["length"] = "0" />
		<cfset variables.metadata.fields[13]["scale"] = "0" />
		<cfset variables.metadata.fields[13]["default"] = "0" />
		<cfset variables.metadata.fields[13]["object"] = "Publication" />
		<cfset variables.metadata.fields[13]["sequence"] = "" />
		<cfset variables.metadata.fields[13]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[14] = StructNew() />
		<cfset variables.metadata.fields[14]["name"] = "Publish" />
		<cfset variables.metadata.fields[14]["alias"] = "Publish" />
		<cfset variables.metadata.fields[14]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[14]["identity"] = "false" />
		<cfset variables.metadata.fields[14]["nullable"] = "false" />
		<cfset variables.metadata.fields[14]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[14]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[14]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[14]["length"] = "0" />
		<cfset variables.metadata.fields[14]["scale"] = "0" />
		<cfset variables.metadata.fields[14]["default"] = "0" />
		<cfset variables.metadata.fields[14]["object"] = "Publication" />
		<cfset variables.metadata.fields[14]["sequence"] = "" />
		<cfset variables.metadata.fields[14]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[15] = StructNew() />
		<cfset variables.metadata.fields[15]["name"] = "Compare" />
		<cfset variables.metadata.fields[15]["alias"] = "Compare" />
		<cfset variables.metadata.fields[15]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[15]["identity"] = "false" />
		<cfset variables.metadata.fields[15]["nullable"] = "false" />
		<cfset variables.metadata.fields[15]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[15]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[15]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[15]["length"] = "0" />
		<cfset variables.metadata.fields[15]["scale"] = "0" />
		<cfset variables.metadata.fields[15]["default"] = "0" />
		<cfset variables.metadata.fields[15]["object"] = "Publication" />
		<cfset variables.metadata.fields[15]["sequence"] = "" />
		<cfset variables.metadata.fields[15]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[16] = StructNew() />
		<cfset variables.metadata.fields[16]["name"] = "Abstract" />
		<cfset variables.metadata.fields[16]["alias"] = "Abstract" />
		<cfset variables.metadata.fields[16]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[16]["identity"] = "false" />
		<cfset variables.metadata.fields[16]["nullable"] = "false" />
		<cfset variables.metadata.fields[16]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[16]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[16]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[16]["length"] = "0" />
		<cfset variables.metadata.fields[16]["scale"] = "0" />
		<cfset variables.metadata.fields[16]["default"] = "0" />
		<cfset variables.metadata.fields[16]["object"] = "Publication" />
		<cfset variables.metadata.fields[16]["sequence"] = "" />
		<cfset variables.metadata.fields[16]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[17] = StructNew() />
		<cfset variables.metadata.fields[17]["name"] = "Resources" />
		<cfset variables.metadata.fields[17]["alias"] = "Resources" />
		<cfset variables.metadata.fields[17]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[17]["identity"] = "false" />
		<cfset variables.metadata.fields[17]["nullable"] = "false" />
		<cfset variables.metadata.fields[17]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[17]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[17]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[17]["length"] = "0" />
		<cfset variables.metadata.fields[17]["scale"] = "0" />
		<cfset variables.metadata.fields[17]["default"] = "0" />
		<cfset variables.metadata.fields[17]["object"] = "Publication" />
		<cfset variables.metadata.fields[17]["sequence"] = "" />
		<cfset variables.metadata.fields[17]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[18] = StructNew() />
		<cfset variables.metadata.fields[18]["name"] = "ResourcesInsert" />
		<cfset variables.metadata.fields[18]["alias"] = "ResourcesInsert" />
		<cfset variables.metadata.fields[18]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[18]["identity"] = "false" />
		<cfset variables.metadata.fields[18]["nullable"] = "false" />
		<cfset variables.metadata.fields[18]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[18]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[18]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[18]["length"] = "0" />
		<cfset variables.metadata.fields[18]["scale"] = "0" />
		<cfset variables.metadata.fields[18]["default"] = "0" />
		<cfset variables.metadata.fields[18]["object"] = "Publication" />
		<cfset variables.metadata.fields[18]["sequence"] = "" />
		<cfset variables.metadata.fields[18]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[19] = StructNew() />
		<cfset variables.metadata.fields[19]["name"] = "ResourcesUpdate" />
		<cfset variables.metadata.fields[19]["alias"] = "ResourcesUpdate" />
		<cfset variables.metadata.fields[19]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[19]["identity"] = "false" />
		<cfset variables.metadata.fields[19]["nullable"] = "false" />
		<cfset variables.metadata.fields[19]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[19]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[19]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[19]["length"] = "0" />
		<cfset variables.metadata.fields[19]["scale"] = "0" />
		<cfset variables.metadata.fields[19]["default"] = "0" />
		<cfset variables.metadata.fields[19]["object"] = "Publication" />
		<cfset variables.metadata.fields[19]["sequence"] = "" />
		<cfset variables.metadata.fields[19]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[20] = StructNew() />
		<cfset variables.metadata.fields[20]["name"] = "ResourcesDelete" />
		<cfset variables.metadata.fields[20]["alias"] = "ResourcesDelete" />
		<cfset variables.metadata.fields[20]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[20]["identity"] = "false" />
		<cfset variables.metadata.fields[20]["nullable"] = "false" />
		<cfset variables.metadata.fields[20]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[20]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[20]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[20]["length"] = "0" />
		<cfset variables.metadata.fields[20]["scale"] = "0" />
		<cfset variables.metadata.fields[20]["default"] = "0" />
		<cfset variables.metadata.fields[20]["object"] = "Publication" />
		<cfset variables.metadata.fields[20]["sequence"] = "" />
		<cfset variables.metadata.fields[20]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[21] = StructNew() />
		<cfset variables.metadata.fields[21]["name"] = "AuthorSearch" />
		<cfset variables.metadata.fields[21]["alias"] = "AuthorSearch" />
		<cfset variables.metadata.fields[21]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[21]["identity"] = "false" />
		<cfset variables.metadata.fields[21]["nullable"] = "false" />
		<cfset variables.metadata.fields[21]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[21]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[21]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[21]["length"] = "0" />
		<cfset variables.metadata.fields[21]["scale"] = "0" />
		<cfset variables.metadata.fields[21]["default"] = "0" />
		<cfset variables.metadata.fields[21]["object"] = "Publication" />
		<cfset variables.metadata.fields[21]["sequence"] = "" />
		<cfset variables.metadata.fields[21]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[22] = StructNew() />
		<cfset variables.metadata.fields[22]["name"] = "AuthorResults" />
		<cfset variables.metadata.fields[22]["alias"] = "AuthorResults" />
		<cfset variables.metadata.fields[22]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[22]["identity"] = "false" />
		<cfset variables.metadata.fields[22]["nullable"] = "false" />
		<cfset variables.metadata.fields[22]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[22]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[22]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[22]["length"] = "0" />
		<cfset variables.metadata.fields[22]["scale"] = "0" />
		<cfset variables.metadata.fields[22]["default"] = "0" />
		<cfset variables.metadata.fields[22]["object"] = "Publication" />
		<cfset variables.metadata.fields[22]["sequence"] = "" />
		<cfset variables.metadata.fields[22]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[23] = StructNew() />
		<cfset variables.metadata.fields[23]["name"] = "AuthorInsert" />
		<cfset variables.metadata.fields[23]["alias"] = "AuthorInsert" />
		<cfset variables.metadata.fields[23]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[23]["identity"] = "false" />
		<cfset variables.metadata.fields[23]["nullable"] = "false" />
		<cfset variables.metadata.fields[23]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[23]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[23]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[23]["length"] = "0" />
		<cfset variables.metadata.fields[23]["scale"] = "0" />
		<cfset variables.metadata.fields[23]["default"] = "0" />
		<cfset variables.metadata.fields[23]["object"] = "Publication" />
		<cfset variables.metadata.fields[23]["sequence"] = "" />
		<cfset variables.metadata.fields[23]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[24] = StructNew() />
		<cfset variables.metadata.fields[24]["name"] = "SubmissionAdd" />
		<cfset variables.metadata.fields[24]["alias"] = "SubmissionAdd" />
		<cfset variables.metadata.fields[24]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[24]["identity"] = "false" />
		<cfset variables.metadata.fields[24]["nullable"] = "false" />
		<cfset variables.metadata.fields[24]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[24]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[24]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[24]["length"] = "0" />
		<cfset variables.metadata.fields[24]["scale"] = "0" />
		<cfset variables.metadata.fields[24]["default"] = "0" />
		<cfset variables.metadata.fields[24]["object"] = "Publication" />
		<cfset variables.metadata.fields[24]["sequence"] = "" />
		<cfset variables.metadata.fields[24]["readOnly"] = "false" />
	
		<cfset variables.metadata.fields[25] = StructNew() />
		<cfset variables.metadata.fields[25]["name"] = "SubmissionInsert" />
		<cfset variables.metadata.fields[25]["alias"] = "SubmissionInsert" />
		<cfset variables.metadata.fields[25]["primaryKey"] = "false" />
		<cfset variables.metadata.fields[25]["identity"] = "false" />
		<cfset variables.metadata.fields[25]["nullable"] = "false" />
		<cfset variables.metadata.fields[25]["dbDataType"] = "int" />
		<cfset variables.metadata.fields[25]["cfDataType"] = "numeric" />
		<cfset variables.metadata.fields[25]["cfSqlType"] = "cf_sql_integer" />
		<cfset variables.metadata.fields[25]["length"] = "0" />
		<cfset variables.metadata.fields[25]["scale"] = "0" />
		<cfset variables.metadata.fields[25]["default"] = "0" />
		<cfset variables.metadata.fields[25]["object"] = "Publication" />
		<cfset variables.metadata.fields[25]["sequence"] = "" />
		<cfset variables.metadata.fields[25]["readOnly"] = "false" />
	
	
	
	<!--- External Fields --->
	<cfset variables.metadata.externalFields = ArrayNew(1) />
	
	
</cfcomponent>
	
