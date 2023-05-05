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

    <% require themedCSS("dist/css/app") %>

    <% include FontKit %>

    <% include Analytics %>

    <% include CustomStyles %>
</head>
<body class="$ClassName loading">

    <% include AnalyticsBody %>

    <main role="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="element-area main-element-area">
                        $ElementalArea
                    </div>
                </div>
            </div>
        </div>
    </main>

    $BetterNavigator

    <% include HubspotIntegration %>

</body>
</html>
