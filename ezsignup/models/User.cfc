<cfcomponent hint="User Value object" output="false" accessors="true">

	<!--- Property Definition --->
    <cfproperty name="firstname" type="string" default="" />  
    <cfproperty name="lastname"  type="string" default="" />  
    <cfproperty name="email"     type="string" default="" />  

	<!---Constructor --->
    <cffunction name="init">  
        <cfreturn this />  
    </cffunction>
   
    <!--- Returns the full name as a string --->
    <cffunction name="getFullName" returntype="string" >  
        <cfreturn getfirstname() & ' ' & getLastname() />  
    </cffunction>   
</cfcomponent>  