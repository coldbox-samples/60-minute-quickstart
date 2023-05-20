component{

    property name="contactService" inject="ContactService";

    any function index( event, rc, prc ){
		prc.aContacts = contactService.getAll();
        event.setView( "contacts/index" );
    }
}
