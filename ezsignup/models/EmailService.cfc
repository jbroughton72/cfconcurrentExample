<cfcomponent hint="Sends emails to users and administrators" output="false">

	<!--- init --->
    <cffunction name="init" output="false" access="public" returntype="any" hint="Constructor">
    	<cfreturn this>
    </cffunction>
    <!--- sends initial mail to a new subscribing user --->
    <cffunction name="sendInitialEmail" output="false" access="public" returntype="string" hint="Sends the welcome email when user successully signs up">
		<cfargument name="user" type="User" required="true" />
		<cftry>
			<cfmail from="noreply@ezsignup.com" subject="Welcome to EZ-Signup Mailing List" to="#arguments.user.getEmail()#" type="html" >
				<p>
				Congratulations #arguments.user.getFirstname()# #arguments.user.getLastname()#. You are now set to receive emails from EZ-Signup!
				</p>
			</cfmail>
			<cfreturn 'Success'>
			
			<cfcatch type="any" > 
				<cfreturn #cfcatch.Message#>
			</cfcatch>
			</cftry>
    </cffunction>
    
    <!--- sends initial mail to a new subscribing user --->
    <cffunction name="sendMailoutEmail" output="false" access="public" returntype="string" hint="Sends the welcome email when user successully signs up">
		<cfargument name="user" type="User" required="true" />
		<cftry>
			<cfmail from="noreply@ezsignup.com" subject="EZ-Signup's Monthly Mailout" to="#arguments.user.getEmail()#" type="html" >
				<p>
				Greetings #arguments.user.getFirstname()# #arguments.user.getLastname()#. Here is the latest mailout from EZ-Signup!
				</p>
			</cfmail>
			<cfreturn 'Success'>
			
			<cfcatch type="any" > 
				<cfreturn #cfcatch.Message#>
			</cfcatch>
			</cftry>
    </cffunction>		

</cfcomponent>