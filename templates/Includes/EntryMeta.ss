<p class="blog-post-meta">
    <% if $Categories.exists %>
        <span class="fas fa-hashtag"></span> 
        <% loop $Categories %>
            <a href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %><% end_if %>
        <% end_loop %>
    <% end_if %>

    <% if $Tags.exists %>
        <span class="fas fa-tag"></span>
        <% loop $Tags %>
            <a href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %><% end_if %>
        <% end_loop %>
    <% end_if %>

    <% if $Comments.exists %>
        <span class="fas fa-comments"></span>
        <a href="{$Link}#comments-holder">
            <%t SilverStripe\\Blog\\Model\\Blog.Comments "Comments" %>
            $Comments.count
        </a>;
    <% end_if %>

    <span class="fas fa-clock"></span> <a href="$MonthlyArchiveLink">$PublishDate.ago</a>

    <% if $Credits %>
        <span class="fas fa-user"></span>
        <% loop $Credits %>
            <% if not $First && not $Last %>, <% end_if %>
            <% if not $First && $Last %> <%t SilverStripe\\Blog\\Model\\Blog.AND "and" %> <% end_if %>
            <% if $URLSegment && not $Up.ProfilesDisabled %>
                <a href="$URL">$Name.XML</a>
            <% else %>
                $Name.XML
            <% end_if %>
        <% end_loop %>
    <% end_if %>

    <span class="fas fa-stopwatch"></span>
    <% if $MinutesToRead < 1 %>
        <%t SilverStripe\\Blog\\Model\\Blog.LessThanAMinuteToRead "Less than a minute to read" %>
    <% else %>
        $MinutesToRead <%t SilverStripe\\Blog\\Model\\Blog.MinutesToRead "Minute(s) to read" %>
    <% end_if %>
</p>
