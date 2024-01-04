<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    $MetaTags(false)

    <title><% if $PageTitle %>$PageTitle<% else %>$Title &#124; $SiteConfig.Title<% end_if %></title>

    <% include Favicons %>
    <% if $ClassName.ShortName = Blog %><link rel="canonical" href="$AbsoluteLink" /><% end_if %>
    <% include Requirements %>
    <% include FontKit %>
    <% include CustomStyles %>
    <% include Innoweb/GoogleAnalytics/GoogleAnalyticsHead %>
</head>
<body class="$ClassName.ShortName">

    <% include Innoweb/GoogleAnalytics/GoogleAnalyticsBody %>

    <main role="main">
        <div class="element-area main-element-area">
            $ElementalArea
        </div>
    </main>

    $BetterNavigator
</body>
</html>
