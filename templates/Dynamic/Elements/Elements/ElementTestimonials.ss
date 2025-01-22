<div class="ele-top container-narrow text-center">
    <% if $TopTitle %><div class="top-title text-small">{$TopTitle}</div><% end_if %>
    <% if $ShowTitle %>
        <$TitleTag class="main-title pb-4 <% if $TitleClass %>{$TitleSizeClass}<% else %>default-class<% end_if %>">{$Title}</$TitleTag>
    <% end_if %>

    <% if $Content %>
        <div class="main-text no-spacing-4-last-child pb-4">{$Content}</div>
    <% end_if %>
</div>

<% if $TestimonialsList %>
<div id="carousel-{$ID}" class="carousel carousel-1 slide" data-bs-ride="carousel">
    <% if $TestimonialsList.Count > 1 %>
    <div class="carousel-indicators">
        <% loop $TestimonialsList %>
            <button type="button" data-bs-target="#carousel-{$Up.ID}" data-bs-slide-to="{$Pos(0)}" <% if $IsFirst %>class="active" aria-current="true"<% end_if %> aria-label="{$Title.XML}"></button>
        <% end_loop %>
    </div>
    <% end_if %>

    <div class="carousel-inner">
        <% loop $TestimonialsList %>
            <div class="carousel-item<% if $IsFirst %> active<% end_if %>" data-bs-interval="5000">
                <% if $Content || $Name || $Affiliation %>
                <div class="testimonial">
                    <div class="testimonial__quote">
                        <blockquote class="blockquote mx-auto text-center">
                            <% if $Content %><p class="blkq-content">$Content</p><% end_if %>

                            <% if $Name || $Affiliation %>
                            <footer class="blkq-footer">
                                <% if $Name %>
                                <span class="d-block blkq-name">{$Name}</span>
                                <% end_if %>

                                <% if $Affiliation %>
                                <span class="d-block blkq-name">{$Affiliation}</span>
                                <% end_if %>
                            </footer>
                            <% end_if %>
                        </blockquote>
                    </div>
                </div>
                <% end_if %>
            </div>
        <% end_loop %>
    </div>

    <% if $TestimonialsList.Count > 1 %>
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
