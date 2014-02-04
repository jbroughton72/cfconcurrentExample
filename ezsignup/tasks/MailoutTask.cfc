component{

	result = {startTick = getTickCount(), startTS = now(), message=""};
	
	mailerService = createObject("component", "models.EmailService").init();

	function init(user){
		structAppend( variables, arguments );
		return this;
	}

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