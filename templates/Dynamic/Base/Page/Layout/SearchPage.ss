<div class="container">
    <div class="row">
        <div class="col-md-12">
            <article role="article">
                <h1>$Title</h1>
                <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>

                <div class="element-area main-element-area">
                    $ElementalArea
                </div>
            </article>

            <form $SearchForm.FormAttributes class="header-search" role="search">
                <div class="form-group">
                    <input name="Search" aria-label="search" type="text" class="form-control" placeholder="Search...">
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div>
</div>
