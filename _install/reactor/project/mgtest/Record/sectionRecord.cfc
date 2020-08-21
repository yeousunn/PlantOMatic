
<cfcomponent hint="I am the base record representing the section object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractRecord" >
	
	<cfset variables.signature = "7FD62144E70DCFC0665D8770CC11B04F" />

	<cffunction name="init" access="public" hint="I configure and return this record object." output="false" returntype="any" _returntype="reactor.project.mgtest.Record.sectionRecord">
		
			<cfargument name="sectionID" hint="I am the default value for the sectionID field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="areaID" hint="I am the default value for the areaID field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="sectionName" hint="I am the default value for the sectionName field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="sectionInstructions" hint="I am the default value for the sectionInstructions field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="sectionOrder" hint="I am the default value for the sectionOrder field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="displayTo" hint="I am the default value for the displayTo field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="sectionEvent" hint="I am the default value for the sectionEvent field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="neededCompleteForFinishAndPay" hint="I am the default value for the neededCompleteForFinishAndPay field." required="no" type="any" _type="string" default="false" />
		
			<cfargument name="createdBy" hint="I am the default value for the createdBy field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="createdOn" hint="I am the default value for the createdOn field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="lastUpdateBy" hint="I am the default value for the lastUpdateBy field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="lastUpdateOn" hint="I am the default value for the lastUpdateOn field." required="no" type="any" _type="string" default="" />
		
			<cfset setsectionID(arguments.sectionID) />
		
			<cfset setareaID(arguments.areaID) />
		
			<cfset setsectionName(arguments.sectionName) />
		
			<cfset setsectionInstructions(arguments.sectionInstructions) />
		
			<cfset setsectionOrder(arguments.sectionOrder) />
		
			<cfset setdisplayTo(arguments.displayTo) />
		
			<cfset setsectionEvent(arguments.sectionEvent) />
		
			<cfset setneededCompleteForFinishAndPay(arguments.neededCompleteForFinishAndPay) />
		
			<cfset setcreatedBy(arguments.createdBy) />
		
			<cfset setcreatedOn(arguments.createdOn) />
		
			<cfset setlastUpdateBy(arguments.lastUpdateBy) />
		
			<cfset setlastUpdateOn(arguments.lastUpdateOn) />
		
		<cfreturn this />
	</cffunction>
	
	
			<!--- sectionID --->
			<cffunction name="setsectionID" hint="I set the sectionID value ." access="public" output="false" returntype="void">
				<cfargument name="sectionID" hint="I am this record's sectionID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().sectionID = arguments.sectionID />
					
			</cffunction>
		
		
		<cffunction name="getsectionID" hint="I get the sectionID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().sectionID />
		</cffunction>	
	
			<!--- areaID --->
			<cffunction name="setareaID" hint="I set the areaID value ." access="public" output="false" returntype="void">
				<cfargument name="areaID" hint="I am this record's areaID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().areaID = arguments.areaID />
					
			</cffunction>
		
		
		<cffunction name="getareaID" hint="I get the areaID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().areaID />
		</cffunction>	
	
			<!--- sectionName --->
			<cffunction name="setsectionName" hint="I set the sectionName value ." access="public" output="false" returntype="void">
				<cfargument name="sectionName" hint="I am this record's sectionName value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().sectionName = arguments.sectionName />
					
			</cffunction>
		
		
		<cffunction name="getsectionName" hint="I get the sectionName value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().sectionName />
		</cffunction>	
	
			<!--- sectionInstructions --->
			<cffunction name="setsectionInstructions" hint="I set the sectionInstructions value ." access="public" output="false" returntype="void">
				<cfargument name="sectionInstructions" hint="I am this record's sectionInstructions value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().sectionInstructions = arguments.sectionInstructions />
					
			</cffunction>
		
		
		<cffunction name="getsectionInstructions" hint="I get the sectionInstructions value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().sectionInstructions />
		</cffunction>	
	
			<!--- sectionOrder --->
			<cffunction name="setsectionOrder" hint="I set the sectionOrder value ." access="public" output="false" returntype="void">
				<cfargument name="sectionOrder" hint="I am this record's sectionOrder value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().sectionOrder = arguments.sectionOrder />
					
			</cffunction>
		
		
		<cffunction name="getsectionOrder" hint="I get the sectionOrder value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().sectionOrder />
		</cffunction>	
	
			<!--- displayTo --->
			<cffunction name="setdisplayTo" hint="I set the displayTo value ." access="public" output="false" returntype="void">
				<cfargument name="displayTo" hint="I am this record's displayTo value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().displayTo = arguments.displayTo />
					
			</cffunction>
		
		
		<cffunction name="getdisplayTo" hint="I get the displayTo value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().displayTo />
		</cffunction>	
	
			<!--- sectionEvent --->
			<cffunction name="setsectionEvent" hint="I set the sectionEvent value ." access="public" output="false" returntype="void">
				<cfargument name="sectionEvent" hint="I am this record's sectionEvent value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().sectionEvent = arguments.sectionEvent />
					
			</cffunction>
		
		
		<cffunction name="getsectionEvent" hint="I get the sectionEvent value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().sectionEvent />
		</cffunction>	
	
			<!--- neededCompleteForFinishAndPay --->
			<cffunction name="setneededCompleteForFinishAndPay" hint="I set the neededCompleteForFinishAndPay value ." access="public" output="false" returntype="void">
				<cfargument name="neededCompleteForFinishAndPay" hint="I am this record's neededCompleteForFinishAndPay value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().neededCompleteForFinishAndPay = arguments.neededCompleteForFinishAndPay />
					
			</cffunction>
		
		
		<cffunction name="getneededCompleteForFinishAndPay" hint="I get the neededCompleteForFinishAndPay value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().neededCompleteForFinishAndPay />
		</cffunction>	
	
			<!--- createdBy --->
			<cffunction name="setcreatedBy" hint="I set the createdBy value ." access="public" output="false" returntype="void">
				<cfargument name="createdBy" hint="I am this record's createdBy value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().createdBy = arguments.createdBy />
					
			</cffunction>
		
		
		<cffunction name="getcreatedBy" hint="I get the createdBy value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().createdBy />
		</cffunction>	
	
			<!--- createdOn --->
			<cffunction name="setcreatedOn" hint="I set the createdOn value ." access="public" output="false" returntype="void">
				<cfargument name="createdOn" hint="I am this record's createdOn value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().createdOn = arguments.createdOn />
					
			</cffunction>
		
		
		<cffunction name="getcreatedOn" hint="I get the createdOn value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().createdOn />
		</cffunction>	
	
			<!--- lastUpdateBy --->
			<cffunction name="setlastUpdateBy" hint="I set the lastUpdateBy value ." access="public" output="false" returntype="void">
				<cfargument name="lastUpdateBy" hint="I am this record's lastUpdateBy value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().lastUpdateBy = arguments.lastUpdateBy />
					
			</cffunction>
		
		
		<cffunction name="getlastUpdateBy" hint="I get the lastUpdateBy value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().lastUpdateBy />
		</cffunction>	
	
			<!--- lastUpdateOn --->
			<cffunction name="setlastUpdateOn" hint="I set the lastUpdateOn value ." access="public" output="false" returntype="void">
				<cfargument name="lastUpdateOn" hint="I am this record's lastUpdateOn value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().lastUpdateOn = arguments.lastUpdateOn />
					
			</cffunction>
		
		
		<cffunction name="getlastUpdateOn" hint="I get the lastUpdateOn value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().lastUpdateOn />
		</cffunction>	
	
	<!--- exists --->
	<cffunction name="exists" access="public" hint="I check to see if this record exists." output="false" returntype="any" _returntype="boolean">
		<cfreturn _getDao().exists(_getTo()) />
	</cffunction>
		
	
	<!--- to --->
	<cffunction name="_setTo" access="public" output="false" returntype="void">
		<cfargument name="to" hint="I am this record's transfer object." required="yes" type="any" _type="reactor.project.mgtest.To.sectionTo" />
		<cfif isDeleted()>
			<cfthrow message="Record Deleted"
				detail="The record you're using has been deleted.  There are some properties which will continue to function after a record has been deleted, but not all of them.  Please create a new record and go from there."
				type="reactor.record.RecordDeleted" />
		</cfif>
		<cfset variables.to = arguments.to />
	</cffunction>
	<cffunction name="_getTo" access="public" output="false" returntype="any" _returntype="reactor.project.mgtest.To.sectionTo">
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
		<cfargument name="initialTo" hint="I am this record's initial transfer object." required="yes" type="any" _type="reactor.project.mgtest.To.sectionTo" />
		<cfset variables.initialTo = arguments.initialTo />
	</cffunction>
	<cffunction name="_getInitialTo" access="private" output="false" returntype="any" _returntype="reactor.project.mgtest.To.sectionTo">
		
		<cfif NOT StructKeyExists(variables, "initialTo") >
			<cfset variables.initialTo = _getReactorFactory().createTo(_getAlias()) >
		</cfif>
		
		<cfreturn variables.initialTo />
	</cffunction>	
	
	<!--- dao --->
	<cffunction name="_setDao" access="private" output="false" returntype="void">
	    <cfargument name="dao" hint="I am the Dao this Record uses to load and save itself." required="yes" type="any" _type="reactor.project.mgtest.Dao.sectionDao" />
	    <cfset variables.dao = arguments.dao />
	</cffunction>
	<cffunction name="_getDao" access="private" output="false" returntype="any" _returntype="reactor.project.mgtest.Dao.sectionDao" >
	   
	    <cfif NOT StructKeyExists(variables, "dao") >
			<cfset variables.dao = _getReactorFactory().createDao(_getAlias()) >
		</cfif>
		
	    <cfreturn variables.dao />
	</cffunction>
	
</cfcomponent>
	
