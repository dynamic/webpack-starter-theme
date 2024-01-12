<% if $Title && $ShowTitle %><$TitleTag class="element__title $TitleSizeClass">$Title</$TitleTag><% end_if %>
<% if $Content %><div class="element__content">$Content</div><% end_if %>

<% if $Panels %>
    <div id="accordion-{$ID}" class="accordion element__accordion__list">
        <% loop $Panels %>
            <div class="accordion-item">
                <h2 class="accordion-header">
                <button class="accordion-button<% if not $IsFirst %> collapsed<% end_if %>" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-{$ID}" aria-expanded="<% if $IsFirst %>true<% else %>false<%end_if %>" aria-controls="collapse-{$ID}">
                        $Title
                    </button>
                </h2>
                <div id="collapse-{$ID}" class="accordion-collapse collapse<% if $IsFirst %> show<% end_if %>" data-bs-parent="#accordion-{$Up.ID}">
                    <div class="accordion-body">
                        <div class="row">
                            <% if $Image %>
                                <div class="col-md-5 img-side">
                                    <img src="$Image.FocusFill(520,420).URL" class="img-fluid" alt="$Image.Title.ATT">
                                </div>
                                <div class="col-md-7">
                            <% else %>
                                <div class="col-md-12">
                            <% end_if %>
                                    $Content
                                    <% if $ElementLink %>$ElementLink<% end_if %>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
