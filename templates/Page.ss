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
</head>
<body class="$ClassName.ShortName loading<% if $SiteConfig.UtilityLinks %> has-util<% end_if %>">

    <% include NavBar %>

    <main>
        <% include Carousel %>

            $Layout
    </main>

    <%-- <% include Footer %> --%>
    <% include FooterAlt %>

    $BetterNavigator

</body>
</html>
