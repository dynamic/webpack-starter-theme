<% if $SlideShow %>
    <div class="flexslider detail">
        <ul class="slides">
            <% loop $SlideShow %>
            <li>
                <% if $SlideType == Video %>
                    <% include Dynamic\\FlexSlider\\Includes\\SlideImage_Video %>
                <% else_if $SlideType == Text %>
                    <% include Dynamic\\FlexSlider\\Includes\\SlideImage_Text %>
                <% else %>
                    <% include Dynamic\\FlexSlider\\Includes\\SlideImage_Image %>
                <% end_if %>
            </li>
            <% end_loop %>
        </ul>
    </div>
    <% if $ThumbnailNav && $SlideShow.Count > 1 %>
    <div class="carousel">
        <ul class="slides">
            <% loop $SlideShow %>
                <li>
                    <% if $Image %>
                        <img src="$Image.URL"  alt="$Image.Title" class="slide">
                    <% end_if %>
                </li>
            <% end_loop %>
        </ul>
    </div>
    <% end_if %>

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
<% end_if %>
