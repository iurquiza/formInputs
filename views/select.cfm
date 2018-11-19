<cfparam name="args.hidden" default="">
<cfparam name="args.id" default="">
<cfparam name="args.label" default="">
<cfparam name="args.name" default="">
<cfparam name="args.value" default="">
<cfparam name="args.title" default="">

<cfparam name="args.optionsUDF" default="">
<cfparam name="args.optionsApiUrl" default="">
<cfparam name="args.optionsApiDataPath" default="">
<cfparam name="args.optionsApiColumn" default="">
<cfparam name="args.optionsApiNameColumn" default="">
<cfparam name="args.optionsAddEmpty" default="false">

<cfoutput>
	<!--- <div class="form-group marginTop25"> --->
		<cfif args.hidden neq "true">
			<label for="#args.id#">#args.label#: </label>
		</cfif>
		<div>

			<cfscript>
				options = "";
				column = "id";
				columnName = "name";

				// Check options UDF
				if( len( args.optionsUDF ) ){
					//options = evaluate( "#args.optionsUDF#()" );
				} else if( len( args.optionsApiUrl ) ){
					apiURL = args[ 'optionsApiUrl' ];
					currentEnvironment = controller.getConfigSettings().environment;
					//Check for environment override of API URL
					if(
						currentEnvironment != "production"
						&& structKeyExists( args, "optionsApiUrl#currentEnvironment#" )
					){
						apiURL = args[ 'optionsApiUrl#currentEnvironment#' ];
					}

					cfhttp(method="GET", charset="utf-8", url="#apiURL#", result="result") {};
					options = deserializeJSON( result.fileContent );

					// Set options to the right object within the response
					if( len( args[ "optionsApiDataPath" ] )
						&& isDefined( "options.#args[ "optionsApiDataPath" ]#" )
					){
						options = options[ args[ "optionsApiDataPath" ] ];
					}

					//Set the correct value column
					if( len( args[ "optionsApiColumn" ] )
						&& isDefined( "options[1].#args[ 'optionsApiColumn' ]#" )
					){
						column = args[ "optionsApiColumn" ];
					}

					//Set the correct name column
					if( len( args[ "optionsApiNameColumn" ] )
						&& isDefined( "options[1].#args[ 'optionsApiNameColumn' ]#" )
					){
						columnName = args[ "optionsApiNameColumn" ];
					}

					if( args.optionsAddEmpty ){
						arrayPrepend( options, {
							"#column#": " ",
							"#columnName#": " "
						});
					}

				} else if( len( "options" ) ){
					options = args.options;
					if( args.optionsAddEmpty ){
						if( isArray( options ) ){
							arrayPrepend( options, {
								"#column#": " ",
								"#columnName#": " "
							});
						} else {
							options = listPrepend( options, " " );
						}
					}
				}



			</cfscript>

			#html.select(
				name			= args.name,
				id				= args.id,
				options			= options,
				column 			= column,
				nameColumn 		= columnName,
				selectedValue	= args.value,
				title			= args.title,
				class 			= ""
			)#

		</div>
	<!--- </div> --->
</cfoutput>