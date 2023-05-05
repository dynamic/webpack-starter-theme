<div class="col-md-12">
    <h1>$Title</h1>
    <% if $SubTitle %><h2>$SubTitle</h2><% end_if %>

    <div class="element-area main-element-area">
        $ElementalArea
    </div>
</div>

<div class="col-md-4">
    <h2>Register</h2>
    $Form
</div>
<div class="col-md-4">
    <h2>Existing Profile?</h2>
    <p>Log in to your profile.</p>
    <a class="btn btn-primary" href="Security/Login?BackURL=$Link">Log In</a>
</div>
<div class="col-md-4">
    <% include MemberProfileNav %>
</div>
