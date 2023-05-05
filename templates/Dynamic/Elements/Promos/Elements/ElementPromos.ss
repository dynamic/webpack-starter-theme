<% if $StyleVariant == style-modal %>
    <div class="container">
        <% if $Title && $ShowTitle || $Content || $BrushScript %>
            <div class="row title-holder">
                <div class="col-md-12 text-center">
                    <% if $BrushScript %>
                        <div class="element__title-script">$BrushScript</div>
                    <% end_if %>
                    <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
                    <% if $Content %><div class="element__content">$Content</div><% end_if %>
                </div>
            </div>
        <% end_if %>
        <% if $PromoList %>
            <div class="row mt-5">
                <% loop $PromoList.Sort('SortOrder') %>
                    <div class="col-md-6 col-lg-4 promo d-flex align-items-stretch">
                        <% if $ElementLink.LinkURL %><a href="$ElementLink.LinkURL" title="Go to $Title.ATT"><% end_if %>
                            <div class="card shadow-lg">
                                <% if $Image %>
                                    <img src="$Image.Fill(576,300).URL" class="img-fluid lazy promo__image card-img-top" alt="$Image.Title.ATT">
                                <% end_if %>

                                <div class="card-body">
                                <% if $Title %><h3 class="card-title">$Title</h3><% end_if %>
                                <% if $Content %>
                                    <div class='card-text typography'>$Content.LimitCharacters(210,'...')</div>
                                    <a type="button" class="btn btn-modal" data-bs-toggle="modal" data-bs-target="#collapseModal-$ID">
                                        Read More
                                    </a>
                                    <div class="modal fade" id="collapseModal-$ID" tabindex="-1" aria-labelledby="collapseModalLabel-$ID" aria-hidden="true">
                                        <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                            <h5 class="modal-title" id="collapseModalLabel-$ID">$Title</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <% if $Image %>
                                                <img src="$Image.Fill(576,300).URL" class="img-fluid lazy promo__image card-img-top" alt="$Image.Title.ATT">
                                            <% end_if %>
                                            <div class="modal-body">
                                            $Content
                                            </div>
                                            <div class="modal-footer">
                                            <button type="button" class="btn btn-outline" data-bs-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                <% end_if %>

                            </div>
                        <% if $ElementLink.LinkURL %></a><% end_if %>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        <% end_if %>
    </div>
<% else %>
    <div class="container">
        <% if $Title && $ShowTitle || $Content || $BrushScript %>
            <div class="row title-holder">
                <div class="col-md-12 text-center">
                    <% if $BrushScript %>
                        <div class="element__title-script">$BrushScript</div>
                    <% end_if %>
                    <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
                    <% if $Content %><div class="element__content">$Content</div><% end_if %>
                </div>
            </div>
        <% end_if %>
        <% if $PromoList %>
            <div class="row mt-5">
                <% loop $PromoList %>
                    <div class="col-md-6 col-lg-4 promo">
                        <% if $ElementLink.LinkURL %><a href="$ElementLink.LinkURL" title="Go to $Title.ATT"><% end_if %>
                            <div class="card shadow-lg">
                                <% if $Image %>
                                    <img src="$Image.Fill(576,300).URL" class="img-fluid lazy promo__image card-img-top" alt="$Image.Title.ATT">
                                <% end_if %>
    
                                <div class="card-body">
                                <% if $Title %><h3 class="card-title">$Title</h3><% end_if %>
                                <% if $Content %><div class='card-text typography'>$Content</div><% end_if %>
                            </div>
                        <% if $ElementLink.LinkURL %></a><% end_if %>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        <% end_if %>
    </div>
<% end_if %>

<%--

<% if $PromoList %>
    <div class="card-deck">
        <% loop $PromoList %>
                <div class="card">
                    <% if $Image %>
                        <% if $ElementLink.LinkURL %><a href="$ElementLink.LinkURL" title="Go to $Title.ATT"><% end_if %>
                        <img src="" data-src="$Image.Fill(576,300).URL" class="img-fluid lazy promo__image card-img-top" alt="$Image.Title.ATT">
                        <% if $ElementLink.LinkURL %></a><% end_if %>
                    <% else %>
                        <% if $SiteConfig.ReviewContent %>
                            <% if $ElementLink.LinkURL %><a href="$ElementLink.LinkURL" title="Go to $Title.ATT"><% end_if %>
                            <img src="" data-src="https://placem.at/things?w=576&h=300&random=1"  alt="Default Placeholder Image" class="img-fluid lazy">
                            <% if $ElementLink.LinkURL %></a><% end_if %>
                        <% end_if %>
                    <% end_if %>

                    <div class="card-body">
                        <% if $Title %><h3 class="card-title">$Title</h3><% end_if %>
                        <% if $Content %>
                            <div class='card-text typography'>$Content</div>
                        <% else %>
                            <% if $SiteConfig.ReviewContent %>
                                <div class='card-text typography missing'><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p></div>
                            <% end_if %>
                        <% end_if %>
                        <% if $ElementLink.LinkURL %><a href="$ElementLink.LinkURL" title="Go to $Title.ATT" class="btn btn-primary btn-block">$ElementLink.Title</a><% end_if %>
                    </div>
                </div>
        <% end_loop %>
    </div>
<% end_if %>

--%>