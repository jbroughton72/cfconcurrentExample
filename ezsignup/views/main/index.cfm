<cfoutput>
	#getPlugin("MessageBox").renderit()#
<div class="row">
	<div class="span9">
		<div class="page-header">
			<h3 class="brandcolor">
				Sign up with EZ-Signup!
			</h3>
			Join today and become a part of the world's largest and most successful mailing list!
			<div>
				<form id="signup" name="signup" class="well brandcolor" role="form"method="post" action="index.cfm?event=main.join">
				  <div class="form-group">
				    <label for="emailInput">Email address</label>
				    <input type="email" class="form-control" id="emailInput" name="email" placeholder="Enter email" required>
				  </div>
				  <form role="form">
				  <div class="form-group">
				    <label for="firstnameInput">First Name</label>
				    <input type="text" class="form-control" id="firstnameInput" name="firstname" placeholder="Enter first name" required>
				  </div>
				  <form role="form">
				  <div class="form-group">
				    <label for="lastnameInput">Last Name</label>
				    <input type="text" class="form-control" id="lastnameInput" name="lastname" placeholder="Enter last name" required>
				  </div>
				  <button type="submit" class="btn btn-primary">Join Now</button>
				</form>
			</div>
		</div>
	</div>
</div>
</cfoutput>