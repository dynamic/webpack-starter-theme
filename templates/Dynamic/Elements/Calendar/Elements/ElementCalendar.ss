<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
            <% if $Content %><div class="element__content">$Content</div><% end_if %>

            <% if $Events %>
                <div class="row event-list">
                <% loop $Events %>
                    <div class="col-md-6 event-list__event">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="date-overlay">
                                    <% if $HeaderImage %>
                                        <div class="slideshow">
                                            <% with $HeaderImage %>
                                            <div class="flexslider detail header">
                                                <img src="$Image.Fill(576,496).URL" alt="$Image.Title">
                                            </div>
                                            <% end_with %>
                                        </div>
                                    <% end_if %>
                                    <span>
                                        <span class="date-overlay__date-number">
                                            <% if $StartDate %>
                                                $StartDate.Format("d")
                                            <% else %>
                                                10
                                            <% end_if %>
                                        </span>
                                        <span class="date-overlay__date-month">
                                            <% if $StartDate %>
                                                $StartDate.Format("MMM")
                                            <% else %>
                                                Oct
                                            <% end_if %>
                                        </span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h3>
                                    <% if $MenuTitle %>
                                        $MenuTitle
                                    <% else %>
                                        $Title
                                    <% end_if %>
                                </h3>
                                <div class="event-list__event-details">
                                    <% include EventSummary %>
                                    <div>
                                        <i></i>
                                        <p><a href="$Link" title="Go to the $Title.XML page">Learn More <i class="fas fa-angle-right"></i></a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <% end_loop %>
                </div>
                <p class="text-center"><a href="$Calendar.Link" class="btn btn-outline-primary" title="Go to the $Calendar.Title page">View all events</a></p>
            <% end_if %>
        </div>
    </div>
</div>
