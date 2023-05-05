<div class="col-md-12">
    <h1>$Title</h1>
    <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>

    <div class="element-area main-element-area">
        $ElementalArea
    </div>
</div>
<div class="col-sm-8">
    <% if $Profile %>
        <% with $Profile %>
            <h3>$FullName</h3>
            <% if $ProfileImage %>
                <img src="$ProfileImage.Fill(200,300).URL" class="img-fluid profile-image">
            <% else %>
                <img src="resources/dynamic/silverstripe-member-profiles/images/default-profile.png" class="img-fluid profile-image">
            <% end_if %>
            <hr>
            <h4>Personal Information</h4>
            <p><strong>Email:</strong> <a href="mailto:$Email" title="Email $Email">$Email</a></p>
        <% end_with %>
    <% end_if %>

    $Form
</div>
<div class="col-md-4">
    <% include MemberProfileNav %>
</div>
