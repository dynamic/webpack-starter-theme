<div class="$Class custom-control custom-checkbox">
    <input type="checkbox" name="$Name" class="custom-control-input" id="$ID" value="$Value"<% if $isChecked %> checked="checked"<% end_if %><% if $isDisabled %> disabled="disabled"<% end_if %> <% if $RightTitle %>aria-describedby="{$Name}_right_title" <% end_if %>>
    <label class="custom-control-label" for="$ID">$Title.XML</label>
</div>
