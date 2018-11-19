<cfparam name="args.hidden" default="">
<cfparam name="args.id" default="">
<cfparam name="args.label" default="">
<cfparam name="args.name" default="">
<cfparam name="args.value" default="">
<cfparam name="args.title" default="">
<cfparam name="args.fieldDescription" default="">

<cfoutput>
	<!--- <div class="form-group marginTop25"> --->
		<cfif args.hidden neq "true">
			<label for="#args.id#">#args.label#: </label>
		</cfif>

		<input type="text" name="#args.name#" id="#args.id#" value="#args.value#" class="form-control"/>
		<cfif len( args.fieldDescription )>
			<span id="helpBlock" class="help-block">#args.fieldDescription#</span>
		</cfif>
		<!--- </div> --->
</cfoutput>