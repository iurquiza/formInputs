/**
* ContentBox - A Modular Content Platform
* Copyright since 2012 by Ortus Solutions, Corp
* www.ortussolutions.com/products/contentbox
* ---
* Provides a Number Form Input
*/
component
	extends="forminputs.models.BaseFormInputProvider"
	implements="forminputs.models.IFormInputProvider"
	singleton
	threadsafe{

	// DI

	// Static Variables

	/**
	 * Constructor
	 */
	function init(){
		return this;
	}

	/**
	* Get the internal name of the provider
	*/
	function getName(){
		return "number";
	}

	/**
	* Get the display name of the provider
	*/
	function getDisplayName(){
		return "Number";
    };

    /**
     * Render the Form Input
     * @item The struct of the form input to be rendered
     * @return HTML Output
     */
    function render( required struct item ){
		arguments.item.id = generateID( item );
		return renderer.renderView( view="number", args=arguments.item, module="forminputs" )
    }
}
