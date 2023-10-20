# Silverstripe/HTML Markup

## HTML Guidelines

* Use well-structured, semantic markup.
* Use double quotes on all attributes.
* Use soft tabs, 2 space indents. (Dev preference, but easier to read if all projects stay consistent)
* Ensure you write valid HTML. Check using tools such as the W3C Markup Validation Service.
* Do not omit optional tags. It may be unclear whether a tag has been deliberately omitted, or if it has been left out accidentally.
* Although unquoted attributes are supported, always quote attribute values.
```html
<input type=text class=form__field form__field--string /> <!-- uh oh -->
```

### Semantic HTML

Ensure the markup you write is relevant and has meaning in the context of the content it is being applied to. Don't use markup to infer style.

```html
<!-- bad: -->
<div class="mainHeading">My Blog</div>
<br /><br />
... content ...
<br /><br />

<!-- bad: -->
<h1>I want to draw attention to this as I am important</h1>
<h1>and so am I</h1>

<!-- good: -->
<h1>My Blog</h1>
<p>
   ... content ...
</p>
```

## Silverstripe Guidelines

* Utilize `Conditional Logic` to hide markup rather than using `display: none`
* Split out large amount of markup into `Includes` and pull in markup. No one wants to open up a file and see 300 lines of code ;)
* Utilize `Position Indicators` in order to retrieve specific data rather than using Javascript/CSS.
  - `$TotalItems` vs ```js document.querySelectorAll()```
  - `$Even, $Odd` vs ```css nth-child(even)``` or ```css nth-child(odd)``` 

### Silverstripe Comments 

Using standard HTML comments is supported. These comments will be included in the published site.

```html $EditForm <!-- Some public comment about the form --> ```

However you can also use special Silverstripe CMS comments which will be stripped out of the published site. This is useful for adding notes for other developers but for things you don't want published in the public html.

```html $EditForm <%-- Some hidden comment about the form --%>```