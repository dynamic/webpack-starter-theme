<% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
<% if $Content %><div class="element__content">$Content</div><% end_if %>

<div id="countdown-$ID" class="countdown countdown-holder" data-end="$End" data-elapse="$Elapse">
    <% if $ShowMonths %>
        <div>
            <span class="months">0</span> Months
        </div>
    <% end_if %>
    <div><span class="days">0</span> Days</div>
    <div><span class="hours">0</span> Hours</div>
    <div><span class="minutes">0</span> Minutes</div>
    <% if $ShowSeconds %>
        <div>
            <span class="seconds">0</span> Seconds
        </div>
    <% end_if %>
</div>

<% require javascript('dynamic/silverstripe-elemental-countdown: thirdparty/jquery.countdown-2.1.0/jquery.countdown.min.js') %>
<% require javascript('dynamic/silverstripe-elemental-countdown: client/dist/countdown.init.min.js') %>
