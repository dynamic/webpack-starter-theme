<div class="card mb-3">
    <div class="row g-0">
        <% if $CurrentProfile.BlogProfileImage.URL %>
            <div class="col-md-4">
                <img src="$CurrentProfile.BlogProfileImage.URL" class="img-fluid rounded-start" alt="photo of $CurrentProfile.FirstName $CurrentProfile.Surname">
            </div>
        <% end_if %>
        <div class="col-md-<% if $CurrentProfile.BlogProfileImage.URL %>8<% else %>12<% end_if %>">
            <div class="card-body">
                <h5 class="card-title">$CurrentProfile.FirstName $CurrentProfile.Surname</h5>
                <p class="card-text">$CurrentProfile.BlogProfileSummary</p>
            </div>
        </div>
    </div>
</div>
