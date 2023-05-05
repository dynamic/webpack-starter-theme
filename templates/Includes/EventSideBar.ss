<% if $Categories %>
    <div class="widget-holder event-widget-holder">
        <h3>Categories</h3>
        <div class="list-group widget blog-widget">
            <% loop $Categories %>
                <a href="$Link" class="$FirstLast list-group-item list-group-item-action<% if $isCurrent %> active<% end_if %>" title="$Title.XML">$Title.XML</a>
            <% end_loop %>
        </div>
    </div>
<% end_if %>


<% if $LocationTitle || $Address || Suburb || State || Postcode %>
<p>
    <strong>Location:</strong><br />
    <% if $LocationTitle %>$LocationTitle <br><% end_if %>
    <% if $Address %>$Address<br><% end_if %>
    <% if $City %>$City,<% end_if %><% if $State %> $State<% end_if %><% if $Postcode %> $Postcode<% end_if %><br>
    <br>
    $AddressMap(420,233)
</p>
<% end_if %>