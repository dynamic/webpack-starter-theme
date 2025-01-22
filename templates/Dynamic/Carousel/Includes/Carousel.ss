<% if $Slides %>
    <div id="carousel-{$ID}" class="ele-height-handler carousel carousel-1 slide
        <% if Transitions == "Fade" %> carousel-fade<% end_if%>"
        <% if $Autoplay == "On" %>data-bs-ride="carousel" <% end_if %>
        <% if $Autoplay == "Autoplay after interaction" %>data-bs-ride="true" <% end_if %>>

        <% if $Slides.Count > 1 %>
        <div class="carousel-indicators">
            <% loop $Slides.Sort('SortOrder') %>
                <button type="button" data-bs-target="#carousel-{$Up.ID}" data-bs-slide-to="{$Pos(0)}"  <% if $IsFirst %>class="active" aria-current="true"<% end_if %> aria-label="{$Title.XML}"></button>
            <% end_loop %>
        </div>
        <% end_if %>

        <div class="carousel-inner">
            <% loop $Slides.Sort('SortOrder') %>
                <div class="carousel-item<% if $IsFirst %> active<% end_if %>" <% if $Top.Autoplay != "Off" %>data-bs-interval="$Top.IntervalInMilliseconds" <% end_if %>>
                    <% if $ClassName.ShortName == ImageSlide %>
                        <% include Dynamic\Carousel\ImageSlide %>
                    <% else_if $ClassName.ShortName == VideoSlide %>
                        <% include Dynamic\Carousel\VideoSlide %>
                    <% end_if %>
                </div>
            <% end_loop %>
        </div>

        <% if $Slides.Count > 1 && Controls == On %>
            <button class="btn-carousel-control carousel-control-prev" type="button" data-bs-target="#carousel-{$ID}" data-bs-slide="prev">
                <span class="carousel-control-prev-icon carousel-control-icon" aria-hidden="true">
                    <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M34,256,210,80l21.21,21.2L91.4,241H478v30H91.4L231.25,410.84,210,432Z"/></svg>
                </span>

                <span class="visually-hidden">Previous</span>
            </button>
            <button class="btn-carousel-control carousel-control-next" type="button" data-bs-target="#carousel-{$ID}" data-bs-slide="next">
                <span class="carousel-control-next-icon carousel-control-icon" aria-hidden="true">
                    <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="M478,256,302,432l-21.21-21.2L420.6,271H34V241H420.6L280.75,101.16,302,80Z"/></svg>
                </span>

                <span class="visually-hidden">Next</span>
            </button>
        <% end_if %>
    </div>
<% end_if %>
