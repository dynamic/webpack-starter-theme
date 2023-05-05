<% if $SiteConfig.HubSpotAccountID && $SiteConfig.UseHubSpot %>
    <!-- Start of HubSpot Embed Code -->
    <script type="text/javascript" id="hs-script-loader" async defer src="//js.hs-scripts.com/{$SiteConfig.HubSpotAccountID}.js"></script>
    <!-- End of HubSpot Embed Code -->
<% end_if %>
