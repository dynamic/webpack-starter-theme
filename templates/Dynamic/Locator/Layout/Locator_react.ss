<div class="col-sm-12">
    <%--
    <h1 class="page-title">$Title</h1>
    <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>
    --%>

    <% if $Content %><div class="locator-copy typography">$Content</div><% end_if %>
    <div class="element-area main-element-area">
        $ElementalArea
    </div>

    <div class="form-container">

        <%-- $LocationSearch --%>
    </div>

    <%-- This is where react hooks into the page --%>
    <div class="locator">
        <div class="locator-search"></div>
        <div class="locator-list"></div>
        <div class="locator-map"></div>
        <div class="locator-loading"></div>
    </div>

</div>


<% require javascript('silverstripe/admin: client/dist/js/vendor.js') %>
<% require javascript('silverstripe/admin: client/dist/js/bundle.js') %>
<% require javascript('dynamic/silverstripe-locator-react: client/dist/js/main.js') %>
<% require css('dynamic/silverstripe-locator-react: css/styles/locator.css') %>
