/**
* ContentBox - A Modular Content Platform
* Copyright since 2012 by Ortus Solutions, Corp
* www.ortussolutions.com/products/contentbox
* ---
* This is a base class all formInput Providers can leverage for basic functionality
*
* All Providers get access to global injected services
* - log
* - renderer
* - CBHelper
*/
component{

	// DI
	property name="log" 				inject="logbox:logger:{this}";
	property name="renderer"			inject="provider:ColdBoxRenderer";
	property name="CBHelper"			inject="id:CBHelper@cb";

	/**
	 * Constructor
	 */
	function init(){
		return this;
	}

	function generateID( item ){
		return reReplace( arguments.item.name, "[^a-zA-Z0-9]", "", "ALL") & "_" & randRange( 1000,9999 );
	}

}