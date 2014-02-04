component{

	result = {startTick = getTickCount(), startTS = now(), message=""};
	mailerService = createObject("component", "models.EmailService").init();

	function init(user){
		structAppend( variables, arguments );
		return this;
	}

	/* Task to send the mailout email to a user */
	function call(){
		try{
			result.status = mailerService.sendMailoutEmail(user);
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