<cfcomponent displayname="User Model" hint="Model for interacting with Users" output='false' singleton>

	<!--- Dependencies --->
	<cfset variables.dsn = "ezsignup">

	<!--- init --->
    <cffunction name="init" output="false" access="public" returntype="any" hint="Constructor">
    	<cfreturn this>
    </cffunction>
    
    <!--- get user by email --->
    <cffunction name="getUserByEmail" output="false" access="public" returntype="numeric" hint="Return a user by email address">
		<cfargument name="email" type="string" required="true" />
    	<cfset var q = "">
		
		<cfquery name="q" datasource="#variables.dsn#">
		SELECT id 
		    FROM users
		    WHERE email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">
		</cfquery>
    	
		<cfreturn q.id>
    </cffunction>

    <!--- list active --->
    <cffunction name="listActive" output="false" access="public" returntype="query" hint="Returns active users">
    	<cfset var q = "">
		
		<cfquery name="q" datasource="#variables.dsn#">
		SELECT * 
		    FROM users
		    WHERE active = 1
		ORDER BY lastname asc
		</cfquery>
    	
		<cfreturn q>
    </cffunction>

	<!--- create --->
    <cffunction name="create" output="false" access="public" returntype="void" hint="Creates a user">
    	<cfargument name="user"  type="User" required="true" />
		<cfset var q = "">
		
		<cfquery name="q" datasource="#variables.dsn#">
		INSERT INTO users(firstname, lastname, email)
		     VALUES (<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.user.getFirstname()#">,
			 		 <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.user.getLastname()#">,
			 		 <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.user.getEmail()#">)
		</cfquery>
    </cffunction>
	
    <!--- initial Email sent --->
    <cffunction name="initialEmailSent" output="false" access="public" returntype="any" hint="Updates user when initial email has been sent">
    	<cfargument name="id" type="any" required="true"/>
    	<cfset var q = "">
		
		<cfquery name="q" datasource="#variables.dsn#">
		UPDATE Users 
		  SET initialEmail = 1
		 WHERE id = #arguments.id#
		</cfquery>
    </cffunction>

</cfcomponent>