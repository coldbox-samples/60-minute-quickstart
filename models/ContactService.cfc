/**
 * I am a new Model Object
 */
component singleton accessors="true"{

	// Properties
	property name="data" type="array";

	/**
	 * Constructor
	 */
	ContactService function init(){
		variables.data = [
            { "id"=1, "name"="coldbox" },
            { "id"=2, "name"="superman" },
            { "id"=3, "name"="batman" }
        ];
		return this;
	}

	/**
	 * getAll
	 */
	function getAll(){
		return variables.data;
	}


}