component extends="cfconcurrent.AbstractCompletionTask"{
			
	function process( results ){
		
		try{
			var email = results[1].user.getEmail();
			var userService = createObject("component", "ezsignup.models.UserService").init();
			var userID = userService.getUserByEmail(#email#);
			var updateStatus = userService.initialEmailSent(#userID#);
			WriteLog(type="Error", file="myapp3.log", text="success");
		}
		catch(any excpt) {
			WriteLog(type="Error", file="myapp3.log", text="#excpt.Message#");
		}

	}
}