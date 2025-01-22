<div class="card card-reset h-100 img-{$Position}">
    <div class="row card-row g-0 align-items-center">
        <% if $Image %>
        <div class="card-img-wrap text-center <% if $Position = 'Top' %>col-12<% else %>col-lg-5<% end_if %><% if $Style = 'Style2' %> d-none d-lg-block<% end_if %>">
            <img src="{$Image.FocusFill(800,800).URL}" class="img-fluid" alt="{$Image.Title.ATT}" />
        </div>
        <% end_if %>

        <div class="card-body-wrap <% if $Position = 'Top' %>col-12<% else %>col-lg-5<% end_if %>">
            <div class="card-body h-100 d-flex align-items-center flex-wrap">
                <% if $TopTitle %><div class="top-title text-small">{$TopTitle}</div><% end_if %>

                <% if $Title && $ShowTitle %><$TitleTag class="main-title make-center <% if $TitleClass %>{$TitleSizeClass}<% else %>default-class<% end_if %>">{$Title}</$TitleTag><% end_if %>

                 <% if $Image && $Style = 'Style2' %>
                <div class="card-img-wrap text-center d-lg-none pb-4">
                    <img src="{$Image.FocusFill(800,800).URL}" class="img-fluid" alt="{$Image.Title.ATT}" />
                </div>
                <% end_if %>

                <% if $Content %><div class="main-text make-center no-spacing-4-last-child">{$Content}</div><% end_if %>

                <% if $ElementLink %>
                <div class="ele-link make-center">
                    <a href="$ElementLink.URL" class="btn btn-lg btn-light" title="$ElementLink.Title"<% if $ElementLink.OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$ElementLink.Title</a>
                </div>
                <% end_if %>
            </div>
        </div>
    </div>
</div>

