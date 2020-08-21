
<cfcomponent hint="I am the base Gateway object for the part object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractGateway" >
	
	<cfset variables.signature = "0551E3A4D8EEB20B4CDC436E2129E24A" />

	<cffunction name="getAll" access="public" hint="I return all rows from the part table." output="false" returntype="any" _returntype="query">
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfreturn getByFields(sortByFieldList=arguments.sortByFieldList) />
	</cffunction>
	
	<cffunction name="getByFields" access="public" hint="I return all matching rows from the part table." output="false" returntype="any" _returntype="query">
		
			<cfargument name="partID" hint="If provided, I match the provided value to the partID field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="sectionID" hint="If provided, I match the provided value to the sectionID field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="partName" hint="If provided, I match the provided value to the partName field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="partInstructions" hint="If provided, I match the provided value to the partInstructions field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="repeatCount" hint="If provided, I match the provided value to the repeatCount field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="partOrder" hint="If provided, I match the provided value to the partOrder field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="pdfFormat" hint="If provided, I match the provided value to the pdfFormat field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="createdBy" hint="If provided, I match the provided value to the createdBy field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="createdOn" hint="If provided, I match the provided value to the createdOn field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="lastUpdateBy" hint="If provided, I match the provided value to the lastUpdateBy field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="lastUpdateOn" hint="If provided, I match the provided value to the lastUpdateOn field in the part object." required="no" type="any" _type="string" />
		
		<cfargument name="sortByFieldList" hint="I am a comma sepeared list of fields to sort this query by." required="no" type="any" _type="string" default="" />
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		<cfset var x = 0 />
		
		
			<cfif structKeyExists(arguments, 'partID')>
				<cfset Where.isEqual(_getAlias(), "partID", arguments.partID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'sectionID')>
				<cfset Where.isEqual(_getAlias(), "sectionID", arguments.sectionID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'partName')>
				<cfset Where.isEqual(_getAlias(), "partName", arguments.partName) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'partInstructions')>
				<cfset Where.isEqual(_getAlias(), "partInstructions", arguments.partInstructions) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'repeatCount')>
				<cfset Where.isEqual(_getAlias(), "repeatCount", arguments.repeatCount) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'partOrder')>
				<cfset Where.isEqual(_getAlias(), "partOrder", arguments.partOrder) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'pdfFormat')>
				<cfset Where.isEqual(_getAlias(), "pdfFormat", arguments.pdfFormat) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'createdBy')>
				<cfset Where.isEqual(_getAlias(), "createdBy", arguments.createdBy) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'createdOn')>
				<cfset Where.isEqual(_getAlias(), "createdOn", arguments.createdOn) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'lastUpdateBy')>
				<cfset Where.isEqual(_getAlias(), "lastUpdateBy", arguments.lastUpdateBy) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'lastUpdateOn')>
				<cfset Where.isEqual(_getAlias(), "lastUpdateOn", arguments.lastUpdateOn) />
			</cfif>
		
		
		<cfloop list="#arguments.sortByFieldList#" index="x">
			<cfset Query.getOrder().setAsc("part", trim(x)) />
		</cfloop>
		
		<cfreturn getByQuery(Query,true) />
	</cffunction>
	
	<!--- deleteByFields --->
	<cffunction name="deleteByFields" access="public" hint="I delete all matching rows from the object." output="false" returntype="void">
		
			<cfargument name="partID" hint="If provided, I match the provided value to the partID field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="sectionID" hint="If provided, I match the provided value to the sectionID field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="partName" hint="If provided, I match the provided value to the partName field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="partInstructions" hint="If provided, I match the provided value to the partInstructions field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="repeatCount" hint="If provided, I match the provided value to the repeatCount field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="partOrder" hint="If provided, I match the provided value to the partOrder field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="pdfFormat" hint="If provided, I match the provided value to the pdfFormat field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="createdBy" hint="If provided, I match the provided value to the createdBy field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="createdOn" hint="If provided, I match the provided value to the createdOn field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="lastUpdateBy" hint="If provided, I match the provided value to the lastUpdateBy field in the part object." required="no" type="any" _type="string" />
		
			<cfargument name="lastUpdateOn" hint="If provided, I match the provided value to the lastUpdateOn field in the part object." required="no" type="any" _type="string" />
		
		<cfset var Query = createQuery() />
		<cfset var Where = Query.getWhere() />
		
		
			<cfif structKeyExists(arguments, 'partID')>
				<cfset Where.isEqual(_getAlias(), "partID", arguments.partID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'sectionID')>
				<cfset Where.isEqual(_getAlias(), "sectionID", arguments.sectionID) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'partName')>
				<cfset Where.isEqual(_getAlias(), "partName", arguments.partName) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'partInstructions')>
				<cfset Where.isEqual(_getAlias(), "partInstructions", arguments.partInstructions) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'repeatCount')>
				<cfset Where.isEqual(_getAlias(), "repeatCount", arguments.repeatCount) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'partOrder')>
				<cfset Where.isEqual(_getAlias(), "partOrder", arguments.partOrder) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'pdfFormat')>
				<cfset Where.isEqual(_getAlias(), "pdfFormat", arguments.pdfFormat) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'createdBy')>
				<cfset Where.isEqual(_getAlias(), "createdBy", arguments.createdBy) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'createdOn')>
				<cfset Where.isEqual(_getAlias(), "createdOn", arguments.createdOn) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'lastUpdateBy')>
				<cfset Where.isEqual(_getAlias(), "lastUpdateBy", arguments.lastUpdateBy) />
			</cfif>
		
			<cfif structKeyExists(arguments, 'lastUpdateOn')>
				<cfset Where.isEqual(_getAlias(), "lastUpdateOn", arguments.lastUpdateOn) />
			</cfif>
		
		
		<cfset deleteByQuery(Query,true) />
		<cfreturn />
	</cffunction>
	
</cfcomponent>
	
