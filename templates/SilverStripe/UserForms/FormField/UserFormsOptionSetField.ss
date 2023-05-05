<% loop $Options %>
    <div class="$Class custom-control custom-radio">
        <input type="radio" id="$ID" name="$Name" class="custom-control-input" value="$Value.ATT"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %> required<% end_if %>>
        <label class="custom-control-label" for="$ID">$Title.XML</label>
    </div>
<% end_loop %>
