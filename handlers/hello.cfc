/**
 * I am a new handler
 * Implicit Functions: preHandler, postHandler, aroundHandler, onMissingAction, onError, onInvalidHTTPMethod
 */
component extends="coldbox.system.EventHandler" {

	this.prehandler_only      = "";
	this.prehandler_except    = "";
	this.posthandler_only     = "";
	this.posthandler_except   = "";
	this.aroundHandler_only   = "";
	this.aroundHandler_except = "";
	this.allowedMethods       = {};

	/**
	 * Display a listing of the resource
	 */
	function index( event, rc, prc ){
		// param an incoming variable.
		event.paramValue( "name", "nobody" );
		// set a private variable
		prc.when = dateFormat( now(), "full" );
		// set the view to render
		event.setView( "hello/index" ).setLayout( "Funky" );
	}

}
