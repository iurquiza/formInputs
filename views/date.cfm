<cfparam name="args.hidden" default="">
<cfparam name="args.id" default="">
<cfparam name="args.label" default="">
<cfparam name="args.name" default="">
<cfparam name="args.value" default="">

<cfoutput>
	<!--- <div class="form-group marginTop25"> --->
		<cfif args.hidden neq "true">
			<label for="#args.id#">#args.label#: </label>
		</cfif>

		<div class="input-group">
			<input type="text"
				name="#args.name#"
				id="#args.id#"
				value="#dateformat( args.value, "mm-dd-yyyy" )#"
				size="9"
				class="form-control datepicker valid"
				aria-invalid="false">
			<span class="input-group-addon">
				<span class="fa fa-calendar"></span>
			</span>
		</div>
		<script>
			$(function () {
				$('###args.id#').datepicker();
			});
		</script>
	<!--- </div> --->
</cfoutput>