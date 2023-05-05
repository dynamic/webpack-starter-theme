<div class="selecttwo">
    <select $AttributesHTML>
    <% loop $Options %>
    	<option value="$Value.XML"
    		<% if $Selected %> selected="selected"<% end_if %>
    		<% if $Disabled %> disabled="disabled"<% end_if %>
    		><% if $Title.exists %>$Title.XML<% else %>&nbsp;<% end_if %>
    	</option>
    <% end_loop %>
    </select>
</div>

<% require javascript($resourceURL('themes/silverstripe-starter-theme/src/javascript/thirdparty/select2.min.js')) %>
<% require customScript('
    jQuery(document).ready(function() {
        jQuery(".selecttwo select").select2();
        jQuery(".select2-container").addClass("form-control");
    });
') %>
