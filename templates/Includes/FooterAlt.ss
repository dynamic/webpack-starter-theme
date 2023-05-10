<div id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12 footer">
                <div class="row">
                    <% with $SiteConfig %>
                        <% if $NavigationColumns %>
                            <% loop $NavigationColumns.Limit(3) %>
                                <div class="col-md-4 col-6">
                                    <nav class="footerNav">
                                        <% loop $NavigationGroups %>
                                            <% if $NavigationLinks.Count %>
                                            <ul<% if Last %><% else %> class="mb-3"<% end_if %>>
                                            <% loop $NavigationLinks.Sort('SortOrder') %>
                                                <li><a href="$Link" title="Go to the $MenuTitle.XML page" <% if is_a(RedirectorPage) %><% if RedirectionType = External %>target="_blank" rel="noopener"<% end_if %><% end_if %>>$Title</a></li>
                                            <% end_loop %>
                                            </ul>
                                            <% end_if %>
                                        <% end_loop %>
                                    </nav>
                                </div>
                            <% end_loop %>
                        <% end_if %>
                    <% end_with %>
                    <div class="col-md-4 col-6 text-md-right order-12 ml-auto">
                        <nav class="footerNav">
                            <% with $SiteConfig %>
                                <% if $FooterLogo || $FooterLogoRetina %>
                                    <a href="$BaseHref" title="Go to the Home Page" class="navbar-brand" rel="home">
                                        <% if $FooterLogo && $FooterLogoRetina %>
                                            <img src="$FooterLogoRetina.URL" width="$FooterLogo.Width" height="$FooterLogo.Height" class="img-fluid" alt="$FooterLogoRetina.Title" onerror="this.onerror=null; this.src='$FooterLogo.URL'">
                                        <% else_if $FooterLogoRetina %>
                                            <img src="$FooterLogoRetina.URL" class="img-fluid" alt="$FooterLogoRetina.Title">
                                        <% else %>
                                            <img src="$FooterLogo.URL" class="img-fluid" alt="$FooterLogo.Title">
                                        <% end_if %>
                                    </a>
                                <% else_if $Logo || $LogoRetina %>
                                    <a href="$BaseHref" title="Go to the Home Page" class="navbar-brand" rel="home">
                                        <% if $Logo && $LogoRetina %>
                                            <img src="$LogoRetina.URL" width="$Logo.Width" height="$Logo.Height" class="img-fluid" alt="$LogoRetina.Title" onerror="this.onerror=null; this.src='$Logo.URL'">
                                        <% else_if $LogoRetina %>
                                            <img src="$LogoRetina.URL" class="img-fluid" alt="$LogoRetina.Title">
                                        <% else %>
                                            <img src="$Logo.URL" class="img-fluid" alt="$Logo.Title">
                                        <% end_if %>
                                    </a>
                                <% end_if %>
                            <% end_with %>

                            <div class="social-fa">
                                <% with $SiteConfig %>
                                    <% if $SocialLinks %>
                                        <div class="social-links">
                                            <p>Follow Us On Social Media</p>
                                        </div>
                                        <% loop $SocialLinks %>
                                            <a href="$Link" title="Go to {$SiteConfig.CompanyName}&apos;s $Site page" class="$Site">
                                                <% if $Site == 'facebook' %>
                                                    <i class="fab fa-facebook-f"></i>
                                                <% else_if $Site == 'twitter' %>
                                                    <i class="fab fa-twitter"></i>
                                                <% else_if $Site == 'youtube' %>
                                                    <i class="fab fa-youtube"></i>
                                                <% else_if $Site == 'linkedin' %>
                                                    <i class="fab fa-linkedin-in"></i>
                                                <% else_if $Site == 'pinterest' %>
                                                    <i class="fab fa-pinterest-p"></i>
                                                <% else_if $Site == 'instagram' %>
                                                    <i class="fab fa-instagram"></i>
                                                <% else %>
                                                    $Title
                                                <% end_if %>
                                            </a>
                                        <% end_loop %>
                                    <% end_if %>
                                <% end_with %>
                            </div>
                        </nav>
                    </div>
                    <div class="col-md-4 col-12">
                        <% with $SiteConfig %>
                            <div class="social-contacts">
                                <p>$FooterContactsTitle</p>
                            </div>
                        <% if $FooterContacts %>
                        <% loop $FooterContacts %>
                            <p class="mb-0">$Name<% if $Name && $Position %>, <% end_if %>$Position</p>
                            <p><a href="mailto:$Email">$Email</a></p>
                        <% end_loop %>
                        <% end_if %>
                        <% end_with %>
                        <% with $SiteConfig.PrimaryLocation %>
                        <% if $Address %><p class="mb-0">$Address</p><% end_if %>
                        <% if $Suburb || $State || $PostalCode %><p class="mb-0"><% if $Suburb %>$Suburb<% end_if %><% if $Suburb && $State %>, <% end_if %><% if $State %>$State<% end_if %><% if $PostalCode %> $PostalCode<% end_if %></p><% end_if %>
                        <% if $Phone %><p class="mb-0"><a href="tel:$Phone" title="Call $Phone">$Phone</a></p><% end_if %>
                        <% if $Email %><p class="mb-0"><a href="mailto:$Email" title="Email $Email">Email Us</a></p><% end_if %>
                        <% end_with %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <% if $SiteConfig.CopyrightLabel %>
    <div id="copyright">
        <div class="container">
            <div class="col-sm-12 copyright-text">
                <p><% if $SiteConfig.CopyrightLabel %>&copy; $Now.Year $SiteConfig.CopyrightLabel<% end_if %></p>
            </div>
        </div>
    </div>
    <% end_if %>
</div>
