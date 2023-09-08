<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    $MetaTags(false)

    <title><% if $PageTitle %>$PageTitle<% else %>$Title &#124; $SiteConfig.CompanyName<% end_if %></title>

    <% include Favicons %>

    <% require themedCSS("dist/css/app") %>

    <% include FontKit %>

    <% include Analytics %>

    <% include CustomStyles %>
</head>
<body class="$ClassName loading<% if $SiteConfig.UtilityLinks %> has-util<% end_if %>">

    <% include AnalyticsBody %>

    <%--<div class="container">--%>
    <% include NavBar %>
    <%--</div>--%>

    <main role="main">
        <div class="container">
            <div class="col-md-4 offset-md-4">
                <div class="layout loginForm">
                    <div class="login">
                        $Content
                        $Form
                    </div>
                </div>
            </div>
        </div>
    </main>

    <%-- <% include Footer %> --%>
    <% include FooterAlt %>

    $BetterNavigator


    <% include HubspotIntegration %>

</body>
</html>
