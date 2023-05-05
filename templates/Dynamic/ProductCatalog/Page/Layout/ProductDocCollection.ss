<div class="col-md-12">
    <article>
        <h1>$Title</h1>
        <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>

        <div class="element-area main-element-area">
            $ElementalArea
        </div>
    </article>
</div>

<div class="col-md-10 offset-md-1">
    <hr />
    <div class="collection-search">
        $CollectionSearchForm
    </div>

    <% if $PaginatedList %>
        <% loop $PaginatedList %>
            <div class="row download-row $FirstLast">
                <% if $Products.First.Image %>
                <div class="col-md-2">
                    <% if $Download %><a href="$Download.Link" title="Download $Title.XML"><% end_if %>
                        <img src="$Products.First.Image.Fill(100,100).URL" class="img-fluid" alt="$Products.First.Title">
                    <% if $Download %></a><% end_if %>
                </div>
                <% end_if %>
                <div class="col-md-6">
                    <% with $Products.First %>
                        <% if $Download %>
                            <h4><a href="$Download.Link" title="Download $Title.XML"><% if $PreviewTitle %>$PreviewTitle<% else %>$Title<% end_if %> - $SKU</a></h4>
                        <% end_if %>
                    <% end_with %>
                </div>
                <div class="col-md-4">
                    <div class="file-collection-links">
                        <% if $Download %><a href="$Download.Link" class="pdf" target="_blank" title="Download $Title"><% end_if %>
                        $Title
                        <% if $Download %> ({$Download.Size})</a><% end_if %>
                    </div>
                </div>
            </div>
        <% end_loop %>
        <% with $PaginatedList %>
            <% include Pagination %>
        <% end_with %>
    <% end_if %>
</div>
