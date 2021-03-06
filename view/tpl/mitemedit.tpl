{{if $header}}
<div class="section-title-wrapper">
	<h2>{{$header}}</h2>
</div>
{{/if}}
<div id="menu-element-creator" class="section-content-tools-wrapper" style="display: {{$display}};">
	<form id="mitemedit" action="mitem/{{$menu_id}}{{if $mitem_id}}/{{$mitem_id}}{{/if}}" method="post" >
		<input type="hidden" name="menu_id" value="{{$menu_id}}" />
		{{if $mitem_id}}
		<input type="hidden" name="mitem_id" value="{{$mitem_id}}" />
		{{/if}}
		{{include file="field_input.tpl" field=$mitem_desc}}
		{{include file="field_input.tpl" field=$mitem_link}}
		{{include file="field_input.tpl" field=$mitem_order}}
		{{include file="field_checkbox.tpl" field=$usezid}}
		{{include file="field_checkbox.tpl" field=$newwin}}
		<div class="pull-right btn-group form-group">
			<div class="btn-group">
				<button id="dbtn-acl" class="btn btn-default btn-sm" data-toggle="modal" data-target="#aclModal" onclick="return false;">
					<i id="jot-perms-icon" class="icon-{{$lockstate}}"></i>
				</button>
				{{if $submit_more}}
				<button class="btn btn-primary btn-sm" type="submit" name="submit-more" value="{{$submit_more}}">{{$submit_more}}&nbsp;<i id="jot-perms-icon" class="icon-caret-right"></i></button>
				{{/if}}
				<button class="btn btn-primary btn-sm" type="submit" name="submit" value="{{$submit}}">{{$submit}}</button>
			</div>
			{{$aclselect}}
		</div>
	</form>
</div>
