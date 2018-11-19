/**
* ContentBox - A Modular Content Platform
* Copyright since 2012 by Ortus Solutions, Corp
* www.ortussolutions.com/products/contentbox
* ---
* Provides a Text Form Input
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
		return "image";
	}

	/**
	* Get the display name of the provider
	*/
	function getDisplayName(){
		return "Image";
    };

    /**
     * Render the Form Input
     * @item The struct of the form input to be rendered
     * @return HTML Output
     */
    function render( required struct item ){
		arguments.item.id = generateID( item );
		return renderer.renderView( view="image", args=arguments.item, module="forminputs" )
    }
}
