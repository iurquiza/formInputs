<cfparam name="args.hidden" default="">
<cfparam name="args.id" default="">
<cfparam name="args.label" default="">
<cfparam name="args.name" default="">
<cfparam name="args.value" default="">
<cfparam name="args.fieldDescription" default="">

<cfoutput>
	<!--- <div class="form-group marginTop25"> --->
		<cfif args.hidden neq "true">
			<div class="checkbox">
				<label for="#args.id#">
					<input type="checkbox"
					name="#args.name#"
					id="#args.id#"
					value="1"
					<cfif args.value == 1>checked="checked"</cfif> />

					#args.label#
				</label>
				<cfif len( args.fieldDescription )>
					<div>
						#args.fieldDescription#
					</div>
				</cfif>
			</div>
		</cfif>

	<!--- </div> --->
</cfoutput>