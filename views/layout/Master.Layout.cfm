<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<cfsilent>
	<cfset navigationcontent = viewcollection.getView("navigation") />
	<cfset primarycontent = viewcollection.getView("primary") />
	<cfset messagecontent = viewcollection.getView("message") />
	<cfset secondaryexists = viewcollection.exists("secondary")>
	<cfset secondarycontent = viewcollection.getView("secondary") />
	<cfset footercontent = viewcollection.getView("footer") />
</cfsilent>
<!-- ==========================================================	-->
<!--	Created by Devit Schizoper                          	-->
<!--	Created HomePages http://LoadFoo.starzonewebhost.com   	-->
<!--	Created Day 01.12.2006                              	-->
<!-- ========================================================== -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
   <meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="author" content="LoadFoO" />
	<meta name="description" content="Site description" />
	<meta name="keywords" content="key, words" />
	<title>PlantOMatic</title>
	<link rel="stylesheet" type="text/css" href="www/css/style.css" media="screen" />
	<link rel="shortcut icon" href="favicon.ico" />
	<script type="text/javascript" src="www/js/textsizer.js"></script>
	<script type="text/javascript" src="www/js/rel.js"></script>
</head>

<body>
<cfoutput>
<div id="wrap">
	<div id="top">
		<div id="menu">
		<!-- Start views/templates/navigation.cfm -->
			#navigationcontent#
		<!-- End views/templates/navigation.cfm -->
		</div>
	</div>
	<div id="content">
		<div style="float: right;">#messagecontent#</div>
		<div id="left" <cfif secondaryexists IS false>class="fullLeft"</cfif>>
		#primarycontent#
		</div>
		<cfif secondaryexists IS true>
		<div id="right">
			#secondarycontent#
		</div>
		</cfif>
		<div id="clear"></div>
	</div>
	<!-- Start views/templates/footer.cfm -->
	#footercontent#
	<!-- End views/templates/footer.cfm -->
</div>
</cfoutput>
</body>
</html>


