<div class="col-md-12">
    <h1 class="title">$Title</h1>
    <% if SubTitle %><h2 class="subtitle">$SubTitle</h2><% end_if %>
</div>


<div class="col-md-8">
    <article>
        <div class="event">
            <% with $Event %>
                $Content
            <% end_with %>
        </div>
    </article>
</div>

<div class="col-md-4">
    <div class="event-list__event-details">
        <% with $Event %>
            <div class="event-list event-list-sidebar">
                <div class="event-list__start-date">
                    <span class="event-list__start-date__day">
                        $StartDate.Format("d")
                    </span>
                    <span class="event-list__start-date__month">
                        $StartDate.Format("MMM")
                    </span>
                </div>
            </div>
            <div class="w-100"></div>
            <% include EventSummary %>
        <% end_with %>
    </div>
    <% with $Event %>
        <% include EventSideBar %>
    <% end_with %>
</div>
