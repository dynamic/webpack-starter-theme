<% with $SiteConfig %>
    $FullAddressHTML

    $AddressMap(420,300)

    <% if $Phone %>
        <p>
            Phone:<br>
            <a href="tel:{$Phone}" class="PhoneTracking" title="Call $Phone">$Phone</a>
        </p>
    <% end_if %>

    <% if Hours %>
        <p>
            HOURS:<br>
            $Hours
        </p>
    <% end_if %>
<% end_with %>