<cfcomponent hint="User Value object" output="false" accessors="true">  
      
    <cfproperty name="firstname" type="string" default="" />  
    <cfproperty name="lastname"  type="string" default="" />  
    <cfproperty name="email"     type="string" default="" />  
      
    <cffunction name="init">  
        <cfreturn this />  
    </cffunction>
   
    <cffunction name="getFullName">  
        <cfreturn getfirstname() & ' ' & getLastname() />  
    </cffunction>   
</cfcomponent>  