<cfoutput>
<div class="row">
	<div class="span9">
		<div class="page-header">
			<h3 class="brandcolor">
				Congratulations! You have sent emails to #rc.users.recordcount# users
			</h3>
			
			<div class="well brandcolor">
				<cfloop query="rc.users" >
				<p>#firstname# #lastname# - #email#</p>
				
				</cfloop>
			</div>
		</div>
	</div>
</div>
</cfoutput>
<cfdump var="#rc.workerResponse#"/>