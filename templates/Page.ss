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

    <% include Requirements %>

    <% include FontKit %>

    <% include CustomStyles %>

    <% include Innoweb/GoogleAnalytics/GoogleAnalyticsHead %>
</head>
<body class="$ClassName.ShortName loading<% if $SiteConfig.UtilityLinks %> has-util<% end_if %>">

    <% include Innoweb/GoogleAnalytics/GoogleAnalyticsBody %>

    <% include NavBar %>

    <main>
        <% include Carousel %>
        <div class="container">
            $Layout
        </div>
    </main>

    <% include Footer %>

    $BetterNavigator

</body>
</html>
