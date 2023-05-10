<% if $SlideShow %>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="slideshow-splide splide" role="group" aria-label="Splide Basic HTML Example">
                    <div class="splide__track">
                        <ul class="splide__list">
                            <% loop $SlideShow %>
                                <% if $SlideType == Video && $Video %>
                                    <li class="splide__slide video-slide" data-splide-youtube="$Video.SourceURL">
                                        <% if $Image %>
                                            <img src="$Image.URL" alt="$Image.Title">
                                        <% end_if %>
                                    </li>
                                <% else_if $SlideType == Text %>
                                <li class="splide__slide text-slide <% if $First %>active<% end_if %>">
                                    <% if $Headline || $Description %>
                                        <div class="slideshow__text-quote">
                                            <blockquote class="blockquote text-center">
                                                <% if $Headline %><p class="blockquote__title">$Headline</p><% end_if %>
                                                <% if $Description  %>
                                                    <p>$Description</p>
                                                <% end_if %>
                                                <% if $SlideLink %><p class="pt-3 pb-3"><a href="$SlideLink.LinkURL" class="btn btn-primary" title="Go to the $SlideLink.SiteTree.MenuTitle.XML page"><% if $Title %>$SlideLink.Title<% else %>Learn more<% end_if %></a></p><% end_if %>
                                            </blockquote>
                                        </div>
                                    <% end_if %>
                                </li>
                                <% else %>
                                    <li class="splide__slide image-slide<% if $First %>active<% end_if %>">
                                        <% if $Image %>
                                            <img src="$Image.URL" alt="$Image.Title">
                                        <% end_if %>
                                        <% if $Headline || $Description %>
                                            <div class="slideshow__quote">
                                                <blockquote class="blockquote text-center">
                                                    <% if $Headline %><p class="blockquote__title">$Headline</p><% end_if %>
                                                    <% if $Description  %>
                                                        <footer class="blockquote-footer">
                                                            <% if $Description %>$Description<% end_if %>
                                                            <% if $SlideLink %><p class="pt-3 pb-3"><a href="$SlideLink.LinkURL" class="btn btn-primary" title="Go to the $SlideLink.SiteTree.MenuTitle.XML page"><% if $Title %>$SlideLink.Title<% else %>Learn more<% end_if %></a></p><% end_if %>
                                                        </footer>
                                                    <% end_if %>
                                                </blockquote>
                                            </div>
                                        <% end_if %>
                                    </li>
                                <% end_if %>
                            <% end_loop %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--
    <% loop SlideShow %>
        <% if $SlideType == Video && $Video %>
            <div class="modal fade slideshowmodal" id="myModal-{$ID}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel-{$ID}" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>

                        <div class="modal-body">
                            <div class="embed-responsive embed-responsive-16by9">
                                $Video
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <% end_if %>
    <% end_loop %>
    -->
<% end_if %>

<% require javascript($resourceURL('themes/webpack-starter-theme/javascript/splide.min.js')) %>
<% require javascript($resourceURL('themes/webpack-starter-theme/javascript/splide-extension-video.min.js')) %>
<% require javascript($resourceURL('themes/webpack-starter-theme/src/javascript/carouselSlideshow.js')) %>