<cfparam name="args.hidden" default="">
<cfparam name="args.id" default="">
<cfparam name="args.label" default="">
<cfparam name="args.name" default="">
<cfparam name="args.value" default="">
<cfparam name="args.fieldDescription" default="">
<cfparam name="args.options" default=[]>

<cfoutput>
	<!--- <div class="form-group marginTop25"> --->
		<cfif args.hidden neq "true">
			<label>#args.label#:</label>
			<div>
				<cfloop collection="#args.options#" item="option" index="index">
					<cfif structKeyExists( option, "name" )>
						<div class="checkbox">
						<cfparam name="option.id" default="#option.name#">
						<cfparam name="option.description" default="">
						<label>
							<input type="checkbox"
								name="#args.name#"
								id="#args.id#_#index#"
								value="#option.id#"
								<cfif listFind( args.value, option.id )>checked="checked"</cfif>
								/>
							#option.name#
							<cfif len( option.description )>
								<br>#option.description#
							</cfif>
						</label>
						</div>
					</cfif>
				</cfloop>
			</div>
		</cfif>
	<!--- </div> --->
</cfoutput>