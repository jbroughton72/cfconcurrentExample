component extends="cfconcurrent.AbstractCompletionTask"{

	/* completion task fires post sending initial email, updates user intialEmail = 1 */		
	function process( results ){
		try{
			var email = results[1].user.getEmail();
			var userService = createObject("component", "ezsignup.models.UserService").init();
			var userID = userService.getUserByEmail(#email#);
			var updateStatus = userService.initialEmailSent(#userID#);
			WriteLog(type="Error", file="ezsignup.log", text="success");
		}
		catch(any excpt) {
			WriteLog(type="Error", file="ezsignup.log", text="#excpt.Message#");
		}
	}
}