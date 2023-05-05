<% if $Title && $ShowTitle %><h2 class="element__title">$Title</h2><% end_if %>
<% if $Content %><div class="element__content">$Content</div><% end_if %>

<% if $Files %>
    <div class="file-list row">
        <% loop $Files %>
            <div class="file-list__file">
                <div class="card">
                    <div class="card-body">
                        <span class="filetype"><a href="$File.URL" title="Download $File.Title.XML" download></a></span>
                        <p><a href="$File.URL" title="Download $File.Title.XML" download>$File.Title<br /><span>$File.Size - $File.Extension.UpperCase</span></a></p>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
