<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    $MetaTags(false)

    <title><% if $PageTitle %>$PageTitle<% else %>$Title &#124; $SiteConfig.CompanyName<% end_if %></title>

    <% include Favicons %>

    <% if $ClassName.ShortName = Blog %>
        <link rel="canonical" href="$AbsoluteLink" />
    <% end_if %>

    <%--
    TODO: come back and look at preloading stylesheets and scripts

    <link rel="preload" href="app.css" as="style">
    <link rel="preload" href="main.js" as="script">
    --%>
    <% include Requirements %>

    <% include FontKit %>

    <% include Analytics %>

    <% include CustomStyles %>
</head>
<body class="$ClassName.ShortName loading<% if $SiteConfig.UtilityLinks %> has-util<% end_if %>">

    <% include AnalyticsBody %>

    <%--<div class="container">--%>
    <% include NavBar %>
    <%--</div>--%>

    <main>
        <% include PageHeaderImage %>

                <% if $Breadcrumbs  %>
                        $Breadcrumbs(20, false, false, true)
                <% end_if %>

                $Layout
            </div>
        </div>
    </main>

    <%-- <% include Footer %> --%>
    <% include FooterAlt %>

    $BetterNavigator


    <% include HubspotIntegration %>

</body>
</html>
