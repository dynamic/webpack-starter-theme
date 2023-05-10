<div class="container">
    <% if $Title && $ShowTitle || $Content %>
        <div class="row title-holder">
            <div class="col-md-12 text-center">
                <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
                <% if $Content %><div class="element__content">$Content</div><% end_if %>
            </div>
        </div>
    <% end_if %>

    <div class="row">
        <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1 customer-service__address">
            <div class="row">
                <div class="col-md-4">
                    <% if $LocationName %><h3>$LocationName</h3><% end_if %>
                </div>
                <div class="col-md-4">
                    <% if $Address || $Address2 || $City || $State || $PostalCode || $Country %>
                    <p>
                        <% if $Address %>$Address<br><% if $Address2 %>$Address2<br><% end_if %><% end_if %>
                        <% if $City %>$City<% end_if %><% if $State %><% if $City %>, <% end_if %>$State<% end_if %><% if $PostalCode %> $PostalCode<% end_if %>
                    </p>
                    <% end_if %>
                </div>
                <div class="col-md-4">
                    <% if $Phone || $Email || $Website %>
                    <p>
                        <% if $Phone %><a href="tel:{$Phone}" title="Call $Phone">$Phone</a><br><% end_if %>
                        <% if $Email %><a href="mailto:{$Email}" title="Email $Email">$Email</a><br><% end_if %>
                        <% if $Website %><a href="$Website" target="_blank" title="Go to $Website">$Website</a><% end_if %>
                    </p>
                    <% end_if %>
                </div>
            </div>
        </div>

        <div class="col-md-10 offset-md-1 customer-service__map">
            <% if $Address || $Address2 || $City || $State || $PostalCode || $Country %>
                $AddressMap(767,300,1)
            <% end_if %>
        </div>
    </div>
</div>
