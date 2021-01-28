/**
 * I am a new handler
 */
component{

	// DI
	property name="contactService" inject="ContactService";

	/**
	 * index
	 */
	function index( event, rc, prc ){
		prc.aContacts = contactService.getAll();
		//event.setView( "contacts/index" );
		// Restful Return
		//return prc.aContacts;
		// Renderdata Multiple Formats
		event.renderData( data=prc.aContacts, formats="xml,json,pdf,html" );
	}



}
