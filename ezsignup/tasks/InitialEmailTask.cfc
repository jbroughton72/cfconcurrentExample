component{

	result = {startTick = getTickCount(), startTS = now(), message=""};
	mailerService = createObject("component", "models.EmailService").init();

	function init(user){
		structAppend( variables, arguments );
		return this;
	}
	
	/* Task to send the initial email to a user */
	function call(){
		try{
			result.status = mailerService.sendInitialEmail(user);
		}
		catch(any excpt) {
			result.message = #excpt.Message#;
		}
		result.callStartTick = getTickCount();
		result.user = #user#;
		result.endTick = getTickCount();
		return result;
	}

}