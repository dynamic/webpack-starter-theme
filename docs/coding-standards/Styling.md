# Styling

## Styling Guidelines

* Lint your SCSS using `yarn lint:styles`
* Promote scalable and modular CSS architecture using BEM's 'Block', 'Element', 'Modifier' methodology, allows for nesting and easier to read code
* Use classes rather than element selectors to de-couple CSS from HTML semantics and ensure that your code doesn't impact how it may be integrated into browsers
* Make layouts fluid, use Bootstrap [layout](https://getbootstrap.com/docs/5.3/layout/) concept to keep consistency
* Avoid using custom media queries and rely on Bootstrap [breakpoints](https://getbootstrap.com/docs/5.3/layout/breakpoints/)
* Use id selectors only when explicitly required – they prohibit re-usability
* Use short hex values where applicable, e.g. `#fff` instead of `#ffffff`
* Use variables appropriately to ensure you code is kept DRY**
* Avoid using `!important`, utilize CSS Specificity to overwrite styles
