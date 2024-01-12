<% if $Title && $ShowTitle %><$TitleTag class="element__title $TitleSizeClass">$Title</$TitleTag><% end_if %>
<% if $Content %><div class="element__content">$Content</div><% end_if %>

<% if $PostsList %>
    <div class="row element__blog__list">
        <% loop $PostsList %>
            <% include ElementBlogSummary %>
        <% end_loop %>
    </div>
    <div class="row element__blog__viewall">
        <div class="col-md-12 text-center">
            <a href="$Blog.Link" class="btn btn-primary" title="View all $Title posts">
                View all posts
            </a>
        </div>
    </div>
<% else %>
    <p>No recent posts.</p>
<% end_if %>
