<div class="selecttwo">
    <select $AttributesHTML <% if $RightTitle %>aria-describedby="{$Name}_right_title"<% end_if %>>
    <% loop $Options %>
    	<option value="$Value.XML"<% if $Selected %> selected="selected"<% end_if %><% if $Disabled %> disabled="disabled"<% end_if %>>$Title.XML</option>
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
