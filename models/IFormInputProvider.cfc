/**
* ContentBox - A Modular Content Platform
* Copyright since 2012 by Ortus Solutions, Corp
* www.ortussolutions.com/products/contentbox
* ---
* This is the interface to needed to implement Form Input methods for ContentBox
*/
interface{

	/**
	* Get the internal name of a provider, used for registration, internal naming and more.
	*/
	function getName();

	/**
	* Get the display name for the provider.  Used in all UI screens
	*/
    function getDisplayName();

    /**
     * Render the Form Input
     *
     * @item The struct of the form input to be rendered
     *
     * @return HTML Output
     */
    function render( required struct item );

}
