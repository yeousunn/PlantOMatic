<cfcomponent>

	<cfset variables.config = structNew() />
	
	<cffunction name="init" output="false" hint="I need a configuration struct of paths">
		<cfargument name="ObjectPathMap" type="struct" required="true" />
		<cfset variables.config = arguments.ObjectPathMap />
		
		<cfreturn this />
	</cffunction>
	
	<cffunction name="new" output="false" hint="I need the key of a config and I'll make an instance object for you">
		<cfargument name="KeyName" type="string" required="true" />
		<cfreturn createobject("component", variables.config[ arguments.Keyname ] ).init() />
	</cffunction>

</cfcomponent>