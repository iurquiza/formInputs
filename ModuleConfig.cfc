/**
 * ContentBox - A Modular Content Platform
 * Copyright since 2012 by Ortus Solutions, Corp
 * www.ortussolutions.com/products/contentbox
 * ---
 * This Module loads all of a user's custom assets:
 * - content - media manager assets
 * - themes - custom themes
 * - modules - custom modules
 */
component {

	// Module Properties
	this.title 				= "Form Inputs";
	this.author 			= "Ortus Solutions, Corp";
	this.webURL 			= "https://www.ortussolutions.com";
	this.description 		= "This module is where all Form Inputs are registered, for Widgets, Themes, and more.";
	this.viewParentLookup 	= true;
	this.layoutParentLookup = true;
	// URL Entry Point
	this.entryPoint			= "formInputs";
	// Model Namespace
	this.modelNamespace 	= "formInputs";
	// CF Mapping
	this.cfmapping 			= "formInputs";
	// ContentBox must be loaded first
	this.dependencies 		= [ "contentbox" ];

	/**
	* Configure Module
	*/
	function configure(){

		// contentbox settings
		settings = {

		};


	}

	/**
	* Development tier
	*/
	function development(){
	}

	/**
	* Fired when the module is registered and activated.
	*/
	function onLoad(){
		// Register this 2 Auth provider with the TwoFactorService
		var formInputService = wirebox.getInstance( "FormInputService@formInputs" );
		formInputService.registerProvider(
			wirebox.getInstance( "Text@formInputs" )
		);
		formInputService.registerProvider(
			wirebox.getInstance( "Date@formInputs" )
		);
		formInputService.registerProvider(
			wirebox.getInstance( "CheckBox@formInputs" )
		);
		formInputService.registerProvider(
			wirebox.getInstance( "Image@formInputs" )
		);
		formInputService.registerProvider(
			wirebox.getInstance( "CheckBoxSet@formInputs" )
		);
		formInputService.registerProvider(
			wirebox.getInstance( "Boolean@formInputs" )
		);
		formInputService.registerProvider(
			wirebox.getInstance( "Select@formInputs" )
		);
		formInputService.registerProvider(
			wirebox.getInstance( "Number@formInputs" )
		);
	}

	/**
	* Fired when the module is unregistered and unloaded
	*/
	function onUnload(){
		// Like a Ninja, remove yourself
		var formInputService = wirebox.getInstance( "FormInputService@formInputs" );
		formInputService.unregisterProvider( 'text' );
		formInputService.unregisterProvider( 'date' );
		formInputService.unregisterProvider( 'checkbox' );
		formInputService.unregisterProvider( 'image' );
		formInputService.unregisterProvider( 'checkboxset' );
		formInputService.unregisterProvider( 'boolean' );
		formInputService.unregisterProvider( 'select' );
		formInputService.unregisterProvider( 'number' );
	}

	/************************************** PRIVATE *********************************************/


}