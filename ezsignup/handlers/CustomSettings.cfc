<cfcomponent hint="Set up non coldbox app settings" output="false" extends="cfconcurrent.Application">
	
	<cffunction name="onAppInit" returnType="boolean" output="false">
		<cfscript>
			
			//creates cfconcurrent executor service
			/*application.executorService = createObject("component", "cfconcurrent.ExecutorService")
			.init( serviceName = "executorServiceExample", maxConcurrent = 0, maxWorkQueueSize = 100000);
			application.executorService.setLoggingEnabled( true );
			application.executorService.start();*/
			
			//creates a cfconcurrent executor complete service
			application.executorCompletionService = createObject("component", "cfconcurrent.ExecutorCompletionService")
				.init( serviceName = "executorCompletionServiceExample",
						maxConcurrent = 0,
						completionQueueProcessFrequency = 2 );
			application.executorCompletionService.setLoggingEnabled( true );
			application.completionTask = createObject("component", "tasks.InitialEmailCompletionTask");
			application.completionTask.setLoggingEnabled( true );
			application.executorCompletionService.setCompletionQueueProcessTask( application.completionTask );
	
			application.executorCompletionService.start();
	
		return true;
		</cfscript>
	</cffunction>
	
	<cffunction name="onAppEnd" returnType="void"  output="false">
		<!---Stops the executor service when the Application shuts down--->
		<cfset application.executorCompletionService.stop()>
	</cffunction>

</cfcomponent>