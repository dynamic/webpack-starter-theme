<div class="container">
    <div class="row">
        <div class="col-md-12">
            <article>
                <h1 class="title">$Title</h1>
                <% if SubTitle %><h2 class="subtitle">$SubTitle</h2><% end_if %>
                <div class="typography lead">
                    <% if $Content %>
                        $Content
                    <% end_if %>
                </div>
                <div class="element-area main-element-area">
                    $ElementalArea
                </div>
            </article>
        </div>
        <div class="col-md-8">
            <% if $Events %>
                <div class="row event-list">
                    <% loop $Events %>
                        <div class="col-md-6 event-list__event">
                            <div class="row">
                                <div class="col-md-3">
                                    <% if $StartDate %>
                                        <div class="event-list__start-date">
                                            <span class="event-list__start-date__day">
                                                $StartDate.Format("d")
                                            </span>
                                            <span class="event-list__start-date__month">
                                                $StartDate.Format("MMM")
                                            </span>
                                        </div>
                                    <% end_if %>
                                </div>
                                <div class="col-md-9">
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
                <% with $Events %>
                    <% include Pagination %>
                <% end_with %>
            <% else %>
                <p>No entries</p>
            <% end_if %>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-3">
            $EventFilterForm
        </div>
    </div>
</div>
