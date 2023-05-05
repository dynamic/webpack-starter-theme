    <div>
        <i class="far fa-calendar"></i>
        <p class="date">
        <% if $StartDate %>
            $StartDate.Format("MMMM d,  Y")
        <% end_if %>
        </p>
    </div>
    <div>
        <i class="far fa-clock"></i>
        <p class="time">
        <% if $StartTime %>
            $StartTime.Format("h:mm a")
        <% end_if %>
        </p>

    </div>
    <% if $Address || $Address2 || $City || $State || $PostalCode || $Country %>
    <div>
        <i class="fa fa-map-marker-alt"></i>
        <p class="location">
            <% if $Address %>$Address<br><% if $Address2 %>$Address2<br><% end_if %><% end_if %>
            <% if $City %>$City<% end_if %><% if $State %><% if $City %>, <% end_if %>$State<% end_if %><% if $PostalCode %> $PostalCode<% end_if %>
        </p>
    </div>
    <br />
    <% end_if %>
