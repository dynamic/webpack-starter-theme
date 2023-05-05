<div class="social-sharing">
    <p>Share this on:</p>
    <ul>
        <li><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}" title="Share this on FaceBook"><i class="fab fa-facebook-f"></i></a></li>
        <li><a target="_blank" href="https://twitter.com/intent/tweet?text={$Title}&url={$AbsoluteLink}" title="Share this on Twitter"><i class="fab fa-twitter"></i></a></li>
        <%--<li><a target="_blank" href="https://plus.google.com/share?url={$AbsoluteLink}" title="Share this on Google+"><i class="fab fa-google-plus-g"></i></a></li>--%>
        <li><a target="_blank" href="https://www.linkedin.com/shareArticle?mini=true&url={$AbsoluteLink}&title={$Title}&summary=<% if Abstract %>{$Abstract.XML}<% else %>{$Content.XML}<% end_if %>&source=YOUR-URL" title="share this on LinkedIn"><i class="fab fa-linkedin-in"></i></a></li>
        <li><a target="_blank" href="https://pinterest.com/pin/create/button/?url={$AbsoluteLink}&description=<% if Abstract %>{$Abstract.XML}<% else %>{$Content.XML}<% end_if %>&media=$BaseHref$Image.Filename" title="Share this on Pinterest"><i class="fab fa-pinterest-p"></i></a></li>
        <li><a href="mailto:?subject={$Title}&amp;body=$Content.LimitCharacters(50) {$AbsoluteLink}" title="Email this to someone"><i class="far fa-envelope"></i></a></li>
    </ul>
</div>
