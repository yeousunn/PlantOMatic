<cfsilent>
<!--- 
filename:		cfMgmt/tags/renderValidationErrors.cfm
date created:	12/06/07
author:			Matt Quackenbush (cfMgmt@gmail.com)
purpose:		I display an xhtml list of error messages
				
	// **************************************** LICENSE INFO **************************************** \\
	
	Copyright 2007, Matt Quackenbush
	
	Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in 
	compliance with the License.  You may obtain a copy of the License at 
	
		http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software distributed under the License is 
	distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or 
	implied.  See the License for the specific language governing permissions and limitations under the 
	License.
	
	// ****************************************** REVISIONS ****************************************** \\
	
	DATE		DESCRIPTION OF CHANGES MADE												CHANGES MADE BY
	===================================================================================================
	12/06/07		New																				MQ
	
 --->

<!--- // use example
	
	// REQUIRED ATTRIBUTES
	@errors					Required (any)	An array or struct containing the error messages
	
	// OPTIONAL ATTRIBUTES
	@listType					Optional (string)	The type of list to render
																			Acceptable values are: 
																				ol
																				ul
																			Defaults to 'ul'.
	@listID						Optional (string)	CSS ID for the list (e.g. <ul id="{this id}"></ul>)
	@itemClass				Optional (string)	CSS class for list items
	@firstItemClass		Optional (string)	CSS class for the first list item
	@lastItemClass		Optional (string)	CSS class for the last list item
	
	<cfmodule template="/cfMgmt/tags/renderValidationErrors.cfm" fileName="#string#" filePath="#string#" isDelete="#boolean#" />
	
 --->

<!--- this tag should only run in "start" mode --->
<cfif thisTag.executionMode IS NOT "start">
	<cfexit method="exittag" />
</cfif>

<!--- define the tag attributes --->
	<!--- required attributes --->
	<cfparam name="attributes.errors" type="any" />
	
	<!--- optional attributes --->
	<cfparam name="attributes.listType" type="string" default="ul" />
	<cfparam name="attributes.listID" type="string" default="" />
	<cfparam name="attributes.itemClass" type="string" default="" />
	<cfparam name="attributes.firstItemClass" type="string" default="" />
	<cfparam name="attributes.lastItemClass" type="string" default="" />
	<cfparam name="attributes.errorListType" type="string" default="ul" />
	<cfparam name="attributes.showLabel" type="boolean" default="no" />

<!--- errors MUST be either an array or a struct --->
<cfif (NOT isArray(attributes.errors)) AND (NOT isStruct(attributes.errors))>
	<cfthrow message="The RenderValidationErrors tag requires either a struct or an array of errors" 
			errorcode="cfMgmt.tags.renderValidationErrors.invalidAttribute" />
</cfif>

<cfscript>
	listType = lCase(attributes.errorListType);
	if ( NOT listFind("ul,ol", listType) ) { listType = "ul"; }
</cfscript>
</cfsilent>

<cfoutput>
<#listType#<cfif len(attributes.listID) GT 0> id="#attributes.listID#"</cfif>>
<cfif isArray(attributes.errors)>
	<cfloop from="1" to="#arrayLen(attributes.errors)#" index="e">#chr(9)#<li<cfif len(attributes.firstItemClass) GT 0 AND e EQ 1> class="#attributes.firstItemClass#"<cfelseif len(attributes.lastItemClass) GT 0 AND e EQ arrayLen(attributes.errors)> class="#attributes.lastItemClass#"<cfelseif len(attributes.itemClass) GT 0> class="#attributes.itemClass#"</cfif>>#attributes.errors[e]#</li>#chr(10)#</cfloop>
<cfelse>
	<cfset keys = structKeyArray(attributes.errors) />
	<cfloop from="1" to="#arrayLen(keys)#" index="e">#chr(9)#<li<cfif len(attributes.firstItemClass) GT 0 AND e EQ 1> class="#attributes.firstItemClass#"<cfelseif len(attributes.lastItemClass) GT 0 AND e EQ structCount(attributes.errors)> class="#attributes.lastItemClass#"<cfelseif len(attributes.itemClass) GT 0> class="#attributes.itemClass#"</cfif>><cfif attributes.showLabel><strong>#keys[e]#</strong>: </cfif>#attributes.errors[keys[e]]#</li>#chr(10)#</cfloop>
</cfif>
</#listType#>
</cfoutput>
