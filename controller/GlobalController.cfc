<cfcomponent output="false" hint="I am a Model-Glue controller." extends="ModelGlue.gesture.controller.Controller" 
			beans="CFUniFormConfigBean,SimpleInstanceFactory">

	<cffunction name="doSetUp" output="false" access="public" returntype="void" hint="">
		<cfargument name="event">
		<cfset event.setValue("CFUniformConfig", duplicate( beans.CFUniFormConfigBean ) )>
		<cfset arguments.event.setValue("MessageContainer", beans.SimpleInstanceFactory.new( "UserMessageContainer" ) ) />		
	</cffunction>

	<cffunction name="require" output="false" access="public" returntype="void" hint="I require the presence of a variable">
			<cfargument name="event">
			<cfset var requiredVariable = arguments.event.getArgument("requiredVariable") />
			<cfset var redirectIfNotProvided=arguments.event.getArgument("redirectIfNotProvided") />
			<cfif len( trim( arguments.event.getValue( requiredVariable ) ) ) IS 0>
				<cfset arguments.event.getValue("MessageContainer").addInfo("A vital parameter #requiredVariable# was not provided") />
				<cfset arguments.event.forward( redirectIfNotProvided ) />
			</cfif>
	</cffunction>	
</cfcomponent>
	
