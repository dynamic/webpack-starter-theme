<div class="container">
    <% if $Title && $ShowTitle || $Content || $BrushScript %>
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

    <% if $Panels %>
        <div class="row">
            <div class="col-md-12">
                <div id="accordion" role="tablist">
                    <% cached 'accordions', $ID, $List('Dynamic\Elements\Accordion\Model\AccordionPanel').max('LastEdited'), $List('Dynamic\Elements\Accordion\Model\AccordionPanel').count(), $Page.CacheBusterTimer %>
                    <% loop $Panels %>
                        <div class="card">
                            <a data-bs-toggle="collapse" href="#Body{$Up.ID}-{$ID}" aria-expanded="<% if First %>true<% else %>false<% end_if %>" aria-controls="Body{$Up.ID}-{$ID}" class="card-header<% if not $First %> collapsed<% end_if %>" role="tab" id="Header{$Up.ID}-{$ID}">
                                $Title
                            </a>
                            <div id="Body{$Up.ID}-{$ID}" class="collapse<% if $First %> show<% end_if %>" role="tabpanel" aria-labelledby="Header{$Up.ID}-{$ID}" data-parent="#accordion">
                                <div class="card-body">
                                    <% if $Image %>
                                        <img src="" data-src="$Image.URL" alt="$Image.Title.ATT" class="img-fluid lazy" >
                                    <% end_if %>
                                    <% if $Content %><div class="typography">$Content</div><% end_if %>
                                    <% if $ElementLink %>$ElementLink<% end_if %>
                                </div>
                            </div>
                        </div>
                    <% end_loop %>
                    <% end_cached %>
                </div>
            </div>
        </div>
    <% end_if %>
</div>
