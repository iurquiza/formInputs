<cfparam name="args.hidden" default="">
<cfparam name="args.id" default="">
<cfparam name="args.label" default="">
<cfparam name="args.name" default="">
<cfparam name="args.value" default="">
<cfparam name="args.title" default="">

<cfoutput>
	<!--- <div class="form-group marginTop25"> --->
		<cfif args.hidden neq "true">
			<label for="#args.id#">#args.label#: </label>
		</cfif>
		<div>
			#html.select(
				name			= args.name,
				id				= args.id,
				options			= "true,false",
				selectedValue	= args.value,
				title			= args.title,
				class 			= ""
			)#
		</div>
	<!--- </div> --->
</cfoutput>