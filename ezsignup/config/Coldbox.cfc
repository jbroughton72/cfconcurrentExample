<cfcomponent output="false" hint="My App Configuration">
<cfscript>
// Configure ColdBox Application
function configure(){

	// coldbox directives
	coldbox = {
		//Application Setup
		appName 				= "ezsignup",

		//Development Settings
		debugMode				= false,
		debugPassword			= "",
		reinitPassword			= "",
		handlersIndexAutoReload = true,

		//Implicit Events
		defaultEvent			= "",
		requestStartHandler		= "",
		requestEndHandler		= "",
		applicationStartHandler = "CustomSettings.onAppInit",
		applicationEndHandler	= "CustomSettings.onAppEnd",
		sessionStartHandler 	= "",
		sessionEndHandler		= "",
		missingTemplateHandler	= "",

		//Error/Exception Handling
		exceptionHandler		= "",
		onInvalidEvent			= "",
		customErrorTemplate		= "",

		//Application Aspects
		handlerCaching 			= false,
		eventCaching			= false
	};

}

</cfscript>
</cfcomponent>