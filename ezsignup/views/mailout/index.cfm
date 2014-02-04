<cfoutput>
	#getPlugin("MessageBox").renderit()#
<div class="row">
	<div class="span9">
		<div class="page-header">
			<h3 class="brandcolor">
				Send Mail Out to all active users
			</h3>
			
			<div>
				<form id="signup" name="signup" class="well brandcolor" role="form"method="post" action="index.cfm?event=mailout.send">
				  <button type="submit" class="btn btn-primary">Send Now</button>
				</form>
				
			</div>
		</div>
	</div>
</div>
</cfoutput>