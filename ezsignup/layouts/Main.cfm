﻿<cfoutput>#html.doctype()#<html lang="en"><head>	<meta charset="utf-8">	<title>Welcome to EZ-Signup!</title>	<meta name="description" content="A ColdBox, CFConcurrnet demo app">    <meta name="author" content="Jason Broughton">	<!---css --->	<link href="includes/styles/bootstrap.min.css" rel="stylesheet">	<link href="includes/styles/bootstrap-responsive.min.css" rel="stylesheet">	<!---js --->    <script src="includes/javascript/jquery.js"></script>	<script src="includes/javascript/bootstrap.min.js"></script>	<style>	 /* Utility */	.centered { text-align: center !important; }	.inline{ display: inline !important; }	.margin10{ margin: 10px; }	.padding10{ padding: 10px; }	.margin0{ margin: 0px; }	.padding0{ padding: 0px; }	.brandcolor{ 	  color: ##5bc0de;	}	.footer {	  margin-top: 45px;	  padding: 35px 35px;	  border-top: 1px solid ##e5e5e5;	}	.footer p {	  margin-bottom: 0;	  color: ##555;	}	body{ padding-top: 100px; }	</style></head><body data-spy="scroll">	<!---Top NavBar --->	<div class="navbar navbar-inverse navbar-fixed-top brand-info" >		<div class="navbar-inner">			<!---Brand --->			<H3 class="padding10 brandcolor">EZ-Singup redefining email lists!</H3>		</div> <!---end navbar-inner --->	</div> <!---end navbar --->	<!---Container And Views --->	<div class="container">		#renderView()#	</div></body></html></cfoutput>