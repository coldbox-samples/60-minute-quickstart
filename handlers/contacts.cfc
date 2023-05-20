component{

    property name="contactService" inject="ContactService";

    any function index( event, rc, prc ){
		prc.aContacts = contactService.getAll();
        event.setView( "contacts/index" );
    }

	any function data( event, rc, prc ){
		// Auto marshall data
		// return contactService.getAll();
		prc.aContacts = contactService.getAll();
		event.renderData(
			data=prc.aContacts,
			formats="xml,json,pdf,html",
			formatsView = "contacts/index"
		);
	}
}
