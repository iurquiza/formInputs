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
					value="#args.value#"
					class="form-control"/>
				<div class="input-group-btn">
					<a class="btn btn-primary" href="javascript:loadAssetChooser( 'formInputCallback_#args.id#' )">Select from Media Library</a>
				</div>
			</div>
			<div class="margin10">
				<h5>Image Preview - <a href="javascript:refreshImage_#args.id#()" class="btn btn-xs btn-primary">Refresh</a></h5>
				<img id="ImagePreview_#args.id#" src="#args.value#" class="img-thumbnail" height="50">
			</div>
		<script>
			function formInputCallback_#args.id#( filePath, fileURL, fileType ){
				console.log( fileType );
				$( "###args.id#" ).val( fileURL );
				$( "##ImagePreview_#args.id#" ).attr( "src", fileURL );
				closeRemoteModal();
			}
			function refreshImage_#args.id#( ){
				$( "##ImagePreview_#args.id#" ).attr( "src", $( "###args.id#" ).val() );
			}

		</script>
	<!--- </div> --->
</cfoutput>