<cfcomponent hint="sends out a mass email to all users" output="false">
	
	<!--- instantiate userservice model --->
	<cfset this.userService = createObject("component", "models.UserService").init() />
	
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
		<cfset usersList = this.userService.listActive()>
		<cfset rc.users = #usersList# >
		
		<!---Loop over each active user and create the email mailout task --->
		<cfset tasks = ArrayNew(1) />
		<cfloop query="rc.users" >
			<cfset var user = new models.User()  
	            .setFirstname( #firstname# )  
	            .setLastname( #lastname# )  
	            .setEmail( #email# ) />
			<cfset arrayAppend( tasks, new tasks.MailoutTask( user ) )/>ds
		</cfloop>
		
		<!--- invoke all tasks in the executor service --->
		<cfset futures = application.executorService.invokeAll( tasks ) />
		<cfset futuresResults = ArrayNew(1) />
		<cfloop array=#futures# index="future">
			<cftry>
				<cfset  arrayAppend( futuresResults, future.get() )/>
				<cfcatch>
					<cfset  arrayAppend( futuresResults, "#cfcatch.Message#" )/>
				</cfcatch>
			</cftry>
		</cfloop>
	  
		<cfset rc.workerResponse = futuresResults>
		<cfset event.setView("mailout/send")>
	</cffunction>	
</cfcomponent>