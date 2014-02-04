<cfcomponent hint="sends out a mass email to all users" output="false">
	<!---Default Action --->
	<cffunction name="index" returntype="void" output="false" hint="My main event">
		<cfargument name="event">
		<cfargument name="rc">
		<cfargument name="prc">
		<cfset event.setView("mailout/index")>
	</cffunction>

		<!--- send a mail out to all active users --->
	<cffunction name="send" access="public" returntype="void" output="false">
		<cfargument name="Event" type="any">
		<cfset var rc = event.getCollection()>
		<!---get all active users
		loop through users
		create a task for each user and add them to an array of tasks
		futures = application.executorService.invokeAll( tasks ); --->
		
		
	</cffunction>	
</cfcomponent>