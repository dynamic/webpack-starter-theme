<div class="container">
    <div class="row">
        <div class="col-md-12 mt-3 mb-3">
            $Breadcrumbs(20, false, false, true)
            <h1>$Title</h1>
            <% if $Content %><div class="typography mb-4">$Content</div><% end_if %>
        </div>
        <div class="col-md-12 mb-3 mt-3">
            <div id="calendar" data-calendarkey="$CalendarAPIKey" data-calendars="$CalendarIDs"></div>
        </div>
    </div>
</div>

