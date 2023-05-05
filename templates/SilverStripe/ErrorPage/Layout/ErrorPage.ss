<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>$Title</h1>
            <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>

            <div class="element-area main-element-area">
                $ElementalArea
            </div>

            <form $SearchForm.FormAttributes class="header-search mb-3" role="search">
                <div class="form-group">
                    <input name="Search" aria-label="search" type="text" class="form-control" placeholder="Search...">
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>

            $CommentsForm
        </div>
    </div>
</div>
