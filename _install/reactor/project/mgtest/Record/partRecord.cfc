
<cfcomponent hint="I am the base record representing the part object.  I am generated.  DO NOT EDIT ME (but feel free to delete me)."
	extends="reactor.base.abstractRecord" >
	
	<cfset variables.signature = "0551E3A4D8EEB20B4CDC436E2129E24A" />

	<cffunction name="init" access="public" hint="I configure and return this record object." output="false" returntype="any" _returntype="reactor.project.mgtest.Record.partRecord">
		
			<cfargument name="partID" hint="I am the default value for the partID field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="sectionID" hint="I am the default value for the sectionID field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="partName" hint="I am the default value for the partName field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="partInstructions" hint="I am the default value for the partInstructions field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="repeatCount" hint="I am the default value for the repeatCount field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="partOrder" hint="I am the default value for the partOrder field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="pdfFormat" hint="I am the default value for the pdfFormat field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="createdBy" hint="I am the default value for the createdBy field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="createdOn" hint="I am the default value for the createdOn field." required="no" type="any" _type="string" default="" />
		
			<cfargument name="lastUpdateBy" hint="I am the default value for the lastUpdateBy field." required="no" type="any" _type="string" default="0" />
		
			<cfargument name="lastUpdateOn" hint="I am the default value for the lastUpdateOn field." required="no" type="any" _type="string" default="" />
		
			<cfset setpartID(arguments.partID) />
		
			<cfset setsectionID(arguments.sectionID) />
		
			<cfset setpartName(arguments.partName) />
		
			<cfset setpartInstructions(arguments.partInstructions) />
		
			<cfset setrepeatCount(arguments.repeatCount) />
		
			<cfset setpartOrder(arguments.partOrder) />
		
			<cfset setpdfFormat(arguments.pdfFormat) />
		
			<cfset setcreatedBy(arguments.createdBy) />
		
			<cfset setcreatedOn(arguments.createdOn) />
		
			<cfset setlastUpdateBy(arguments.lastUpdateBy) />
		
			<cfset setlastUpdateOn(arguments.lastUpdateOn) />
		
		<cfreturn this />
	</cffunction>
	
	
			<!--- partID --->
			<cffunction name="setpartID" hint="I set the partID value ." access="public" output="false" returntype="void">
				<cfargument name="partID" hint="I am this record's partID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().partID = arguments.partID />
					
			</cffunction>
		
		
		<cffunction name="getpartID" hint="I get the partID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().partID />
		</cffunction>	
	
			<!--- sectionID --->
			<cffunction name="setsectionID" hint="I set the sectionID value ." access="public" output="false" returntype="void">
				<cfargument name="sectionID" hint="I am this record's sectionID value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().sectionID = arguments.sectionID />
					
			</cffunction>
		
		
		<cffunction name="getsectionID" hint="I get the sectionID value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().sectionID />
		</cffunction>	
	
			<!--- partName --->
			<cffunction name="setpartName" hint="I set the partName value ." access="public" output="false" returntype="void">
				<cfargument name="partName" hint="I am this record's partName value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().partName = arguments.partName />
					
			</cffunction>
		
		
		<cffunction name="getpartName" hint="I get the partName value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().partName />
		</cffunction>	
	
			<!--- partInstructions --->
			<cffunction name="setpartInstructions" hint="I set the partInstructions value ." access="public" output="false" returntype="void">
				<cfargument name="partInstructions" hint="I am this record's partInstructions value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().partInstructions = arguments.partInstructions />
					
			</cffunction>
		
		
		<cffunction name="getpartInstructions" hint="I get the partInstructions value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().partInstructions />
		</cffunction>	
	
			<!--- repeatCount --->
			<cffunction name="setrepeatCount" hint="I set the repeatCount value ." access="public" output="false" returntype="void">
				<cfargument name="repeatCount" hint="I am this record's repeatCount value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().repeatCount = arguments.repeatCount />
					
			</cffunction>
		
		
		<cffunction name="getrepeatCount" hint="I get the repeatCount value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().repeatCount />
		</cffunction>	
	
			<!--- partOrder --->
			<cffunction name="setpartOrder" hint="I set the partOrder value ." access="public" output="false" returntype="void">
				<cfargument name="partOrder" hint="I am this record's partOrder value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().partOrder = arguments.partOrder />
					
			</cffunction>
		
		
		<cffunction name="getpartOrder" hint="I get the partOrder value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().partOrder />
		</cffunction>	
	
			<!--- pdfFormat --->
			<cffunction name="setpdfFormat" hint="I set the pdfFormat value ." access="public" output="false" returntype="void">
				<cfargument name="pdfFormat" hint="I am this record's pdfFormat value." required="yes" type="any" _type="string" />
				
						<cfset _getTo().pdfFormat = arguments.pdfFormat />
					
			</cffunction>
		
		
		<cffunction name="getpdfFormat" hint="I get the pdfFormat value." access="public" output="false" returntype="any" _returntype="string">
			<cfreturn _getTo().pdfFormat />
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
	
	<!--- Record For section --->
	<cffunction name="setsection" access="public" output="false" returntype="void">
	    <cfargument name="section" hint="I am the Record to set the section value from." required="yes" type="any" _type="reactor.project.mgtest.Record.sectionRecord" />
		
		<!--- replace the cached version of this section --->
		<cfset arguments.section._setParent(this, "section") />
		<cfset variables.children.section = arguments.section />
		
		<!--- set this object's section record to reflect the object's related values.  This is going directly to the TO to avoid reloading the object and to facilitate compound relationships --->
		
			<cfset _getTo().sectionid = arguments.section.getsectionid()>
		
	</cffunction>
	
	<cffunction name="getsection" access="public" output="false" returntype="any" _returntype="reactor.project.mgtest.Record.sectionRecord">
		<cfset var section = 0 />
		
		<!--- load the initial section record.  this will be empty --->
		<cfif NOT StructKeyExists(variables.children, "section") OR (
				StructKeyExists(variables.children, "section")
				AND NOT IsObject(variables.children.section)
		) >
			<cfset section = _getReactorFactory().createRecord("section") />
			<cfset section._setParent(this, "section") />
			<cfset variables.children.section = section />
		</cfif>
		
		<!--- if this object has an related values that are not the same as the values in this object then load the correct values --->
		<cfif 
			
				(Len(getsectionid()) AND getsectionid() IS NOT variables.children.section.getsectionid())
				
			>
			
				<cfset variables.children.section.setsectionid(getsectionid()) />
			
			<cfset variables.children.section.load('sectionid') /> 
		</cfif>
		
		<cfreturn variables.children.section />
	</cffunction>
	
	<cffunction name="removesection" access="public" output="false" returntype="any" _returntype="reactor.project.mgtest.Record.sectionRecord">
		<cfset var oldRecord = getsection() />
		
			<cfset setsectionid("") />
		
		<cfreturn oldRecord />
	</cffunction>
	
	<!--- exists --->
	<cffunction name="exists" access="public" hint="I check to see if this record exists." output="false" returntype="any" _returntype="boolean">
		<cfreturn _getDao().exists(_getTo()) />
	</cffunction>
		
	
	<!--- to --->
	<cffunction name="_setTo" access="public" output="false" returntype="void">
		<cfargument name="to" hint="I am this record's transfer object." required="yes" type="any" _type="reactor.project.mgtest.To.partTo" />
		<cfif isDeleted()>
			<cfthrow message="Record Deleted"
				detail="The record you're using has been deleted.  There are some properties which will continue to function after a record has been deleted, but not all of them.  Please create a new record and go from there."
				type="reactor.record.RecordDeleted" />
		</cfif>
		<cfset variables.to = arguments.to />
	</cffunction>
	<cffunction name="_getTo" access="public" output="false" returntype="any" _returntype="reactor.project.mgtest.To.partTo">
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
		<cfargument name="initialTo" hint="I am this record's initial transfer object." required="yes" type="any" _type="reactor.project.mgtest.To.partTo" />
		<cfset variables.initialTo = arguments.initialTo />
	</cffunction>
	<cffunction name="_getInitialTo" access="private" output="false" returntype="any" _returntype="reactor.project.mgtest.To.partTo">
		
		<cfif NOT StructKeyExists(variables, "initialTo") >
			<cfset variables.initialTo = _getReactorFactory().createTo(_getAlias()) >
		</cfif>
		
		<cfreturn variables.initialTo />
	</cffunction>	
	
	<!--- dao --->
	<cffunction name="_setDao" access="private" output="false" returntype="void">
	    <cfargument name="dao" hint="I am the Dao this Record uses to load and save itself." required="yes" type="any" _type="reactor.project.mgtest.Dao.partDao" />
	    <cfset variables.dao = arguments.dao />
	</cffunction>
	<cffunction name="_getDao" access="private" output="false" returntype="any" _returntype="reactor.project.mgtest.Dao.partDao" >
	   
	    <cfif NOT StructKeyExists(variables, "dao") >
			<cfset variables.dao = _getReactorFactory().createDao(_getAlias()) >
		</cfif>
		
	    <cfreturn variables.dao />
	</cffunction>
	
</cfcomponent>
	
