<div class="container">
    <% if $Title && $ShowTitle || $Content %>
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

    <% if $PostsList %>
            <div class="row mt-5 blog-posts">
                <% loop $PostsList %>
                    <div class="col-md-6 col-lg-4 d-flex align-items-stretch blog-posts__post">
                    <% if $Link %><a href="$Link" title="Go to $Title.ATT"><% end_if %>
                        <div class="card shadow-lg">
                            <% if $FeaturedImage %>
                                <img src="$FeaturedImage.Fill(576,300).URL" class="img-fluid lazy blog-posts__post__image card-img-top" alt="$FeaturedImage.Title.ATT">
                            <% else_if $PreviewImage %>
                                <img src="$PreviewImage.Fill(576,300).URL" class="img-fluid lazy blog-posts__post__image card-img-top" alt="$PreviewImage.Title.ATT">
                            <% end_if %>

                            <div class="card-body">
                                <% if $PreviewTitle %>
                                    <h3 class="card-title">$PreviewTitle</h3>
                                <% else_if $Title %>
                                    <h3 class="card-title">$Title</h3>
                                <% end_if %>
                                <% if $Content || $FirstContent || $Abstract || $Summary %>
                                    <% if $Abstract %>
                                        <div class='card-text typography'>$Abstract.LimitCharacters(210,'...')</div>
                                    <% else_if $FirstContent %>
                                        <div class='card-text typography'>$FirstContent.LimitCharacters(210,'...')</div>
                                    <% else_if $Content %>
                                        <div class='card-text typography'>$Content.LimitCharacters(210,'...')</div>
                                    <% else_if $Summary %>
                                        <div class='card-text typography'>$Summary.LimitCharacters(210,'...')</div>
                                    <% end_if %>
                                    <% if $Link %>
                                        <a type="button" class="btn btn-modal" href="$Link">
                                        Read More
                                        </a>
                                    <% end_if %>
                                <% end_if %>
                            </div>
                        </div>
                    <% if $Link %></a><% end_if %>
                    </div>
                <% end_loop %>
            </div>
    <% end_if %>
</div>
