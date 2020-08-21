
<cfcomponent hint="I am the base record representing the plant object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractRecord" >
	
	<cfset variables.signature = "06E1CD302A971A3BA8A86C956E608391" />

	<cffunction name="init" access="public" hint="I configure and return this record object." output="false" returntype="any" _returntype="reactor.project.PlantOMatic.Record.plantRecord">
		
			<cfargument name="PlantID" hint="I am the default value for the PlantID field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="Symbol" hint="I am the default value for the Symbol field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="SynonymSymbol" hint="I am the default value for the SynonymSymbol field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="ScientificNameWithAuthor" hint="I am the default value for the ScientificNameWithAuthor field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="CommonName" hint="I am the default value for the CommonName field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="Family" hint="I am the default value for the Family field." required="no" type="any" _type="string" default="" />
		
			<cfset setPlantID(arguments.PlantID) />
		
			<cfset setSymbol(arguments.Symbol) />
		
			<cfset setSynonymSymbol(arguments.SynonymSymbol) />
		
			<cfset setScientificNameWithAuthor(arguments.ScientificNameWithAuthor) />
		
			<cfset setCommonName(arguments.CommonName) />
		
			<cfset setFamily(arguments.Family) />
		
		<cfreturn this />
	</cffunction>
	
	
			<!--- PlantID --->
			<cffunction name="setPlantID" hint="I set the PlantID value ." access="public" output="false" returntype="void">
				<cfargument name="PlantID" hint="I am this record's PlantID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().PlantID = arguments.PlantID />
					
			</cffunction>
		
		
		<cffunction name="getPlantID" hint="I get the PlantID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().PlantID />
		</cffunction>	
	
			<!--- Symbol --->
			<cffunction name="setSymbol" hint="I set the Symbol value ." access="public" output="false" returntype="void">
				<cfargument name="Symbol" hint="I am this record's Symbol value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().Symbol = arguments.Symbol />
					
			</cffunction>
		
		
		<cffunction name="getSymbol" hint="I get the Symbol value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().Symbol />
		</cffunction>	
	
			<!--- SynonymSymbol --->
			<cffunction name="setSynonymSymbol" hint="I set the SynonymSymbol value ." access="public" output="false" returntype="void">
				<cfargument name="SynonymSymbol" hint="I am this record's SynonymSymbol value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().SynonymSymbol = arguments.SynonymSymbol />
					
			</cffunction>
		
		
		<cffunction name="getSynonymSymbol" hint="I get the SynonymSymbol value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().SynonymSymbol />
		</cffunction>	
	
			<!--- ScientificNameWithAuthor --->
			<cffunction name="setScientificNameWithAuthor" hint="I set the ScientificNameWithAuthor value ." access="public" output="false" returntype="void">
				<cfargument name="ScientificNameWithAuthor" hint="I am this record's ScientificNameWithAuthor value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().ScientificNameWithAuthor = arguments.ScientificNameWithAuthor />
					
			</cffunction>
		
		
		<cffunction name="getScientificNameWithAuthor" hint="I get the ScientificNameWithAuthor value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().ScientificNameWithAuthor />
		</cffunction>	
	
			<!--- CommonName --->
			<cffunction name="setCommonName" hint="I set the CommonName value ." access="public" output="false" returntype="void">
				<cfargument name="CommonName" hint="I am this record's CommonName value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().CommonName = arguments.CommonName />
					
			</cffunction>
		
		
		<cffunction name="getCommonName" hint="I get the CommonName value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().CommonName />
		</cffunction>	
	
			<!--- Family --->
			<cffunction name="setFamily" hint="I set the Family value ." access="public" output="false" returntype="void">
				<cfargument name="Family" hint="I am this record's Family value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().Family = arguments.Family />
					
			</cffunction>
		
		
		<cffunction name="getFamily" hint="I get the Family value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().Family />
		</cffunction>	
	
	<!--- exists --->
	<cffunction name="exists" access="public" hint="I check to see if this record exists." output="false" returntype="any" _returntype="boolean">
		<cfreturn _getDao().exists(_getTo()) />
	</cffunction>
		
	
	<!--- to --->
	<cffunction name="_setTo" access="public" output="false" returntype="void">
		<cfargument name="to" hint="I am this record's transfer object." required="yes" type="any" _type="reactor.project.PlantOMatic.To.plantTo" />
		<cfif isDeleted()>
			<cfthrow message="Record Deleted"
				detail="The record you're using has been deleted.  There are some properties which will continue to function after a record has been deleted, but not all of them.  Please create a new record and go from there."
				type="reactor.record.RecordDeleted" />
		</cfif>
		<cfset variables.to = arguments.to />
	</cffunction>
	<cffunction name="_getTo" access="public" output="false" returntype="any" _returntype="reactor.project.PlantOMatic.To.plantTo">
		<cfif isDeleted()>
			<cfthrow message="Record Deleted"
				detail="The record you're using has been deleted.  There are some properties which will continue to function after a record has been deleted, but not all of them.  Please create a new record and go from there."
				type="reactor.record.RecordDeleted" />
		</cfif>
		
		<cfif NOT StructKeyExists(variables, "to") >
			<cfset variables.to = _getReactorFactory().createTo(_getAlias()) >
		</cfif>
		
		<cfreturn variables.to />
	</cffunction>	
	
	<!--- initialTo --->
	<cffunction name="_setInitialTo" access="private" output="false" returntype="void">
		<cfargument name="initialTo" hint="I am this record's initial transfer object." required="yes" type="any" _type="reactor.project.PlantOMatic.To.plantTo" />
		<cfset variables.initialTo = arguments.initialTo />
	</cffunction>
	<cffunction name="_getInitialTo" access="private" output="false" returntype="any" _returntype="reactor.project.PlantOMatic.To.plantTo">
		
		<cfif NOT StructKeyExists(variables, "initialTo") >
			<cfset variables.initialTo = _getReactorFactory().createTo(_getAlias()) >
		</cfif>
		
		<cfreturn variables.initialTo />
	</cffunction>	
	
	<!--- dao --->
	<cffunction name="_setDao" access="private" output="false" returntype="void">
	    <cfargument name="dao" hint="I am the Dao this Record uses to load and save itself." required="yes" type="any" _type="reactor.project.PlantOMatic.Dao.plantDao" />
	    <cfset variables.dao = arguments.dao />
	</cffunction>
	<cffunction name="_getDao" access="private" output="false" returntype="any" _returntype="reactor.project.PlantOMatic.Dao.plantDao" >
	   
	    <cfif NOT StructKeyExists(variables, "dao") >
			<cfset variables.dao = _getReactorFactory().createDao(_getAlias()) >
		</cfif>
		
	    <cfreturn variables.dao />
	</cffunction>
	
</cfcomponent>
	
