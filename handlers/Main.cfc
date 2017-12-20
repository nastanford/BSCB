// PRC - Private and RC - Form, URL, User etc.
component extends="coldbox.system.EventHandler"{

	// Default Action
	function index(event,rc,prc){
		prc.pageTitle = "Home";
		prc.welcomeMessage = "Hello, welcome to Simple Blog!";
		prc.bgImage = "home-bg.jpg";
		event.setView("main/index");
	}

	function contact(event,rc,prc){
		prc.pageTitle = "Contact";
		prc.bgImage = "contact-bg.jpg";
		event.setView("main/contact");
	}

	function about(event,rc,prc){
		prc.pageTitle = "About";
		prc.bgImage = "about-bg.jpg";
		event.setView("main/about");
	}


	/************************************** IMPLICIT ACTIONS *********************************************/

	function onAppInit(event,rc,prc){

	}

	function onRequestStart(event,rc,prc){
		prc.pageTitle = "";
	}

	function onRequestEnd(event,rc,prc){

	}

	function onSessionStart(event,rc,prc){

	}

	function onSessionEnd(event,rc,prc){
		var sessionScope = event.getValue("sessionReference");
		var applicationScope = event.getValue("applicationReference");
	}

	function onException(event,rc,prc){
		event.setHTTPHeader( statusCode = 500 );
		//Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		//Place exception handler below:
	}

	function onMissingTemplate(event,rc,prc){
		//Grab missingTemplate From request collection, placed by ColdBox
		var missingTemplate = event.getValue("missingTemplate");

	}

}
