# Code Guidelines

When writing FE code, in addition to [HTML], you will write code using the following languages/libraries:

* [**Silverstripe:**](./Silverstripe.md) All markup should utilize semantic HTML, **no exceptions**.
* [**Styling:**](./Styling.md) All styles are should be keeping Bootstrap in mind
* [**JavaScript:**](./JavaScript.md) By default, we use vanilla JS to add functionality to our components. With Bootstrap5 dropping jQuery as a dependency, we shouldn't bulk up our bundle by adding jQuery.

## Basic Guidelines

Regardless of what language or library you are working with, these are guidelines that all developers must follow.

#### Write DRY code - *Don't Repeat Yourself.*

DRY code refers to code we write once. More importantly, it means making sure that when we call a function, trigger an event, or compute something in our code, we should do it only when necessary.

A simple example would be referencing an element in the DOM; Interactions with the DOM can be costly so we want to minimize the amount of work the DOM needs to do.

```js
// Example of WET code --
// Here we query the DOM multiple times
document.querySelector('#warnings').addEventListener('submit', hideElement);
function hideElement() {
  // ... process form ...
  document.querySelector('#warnings').style.display = 'none';
}

// Example of DRY code --
// Here we query the DOM once
const formWarnings = document.querySelector('#warnings');
formWarnings.addEventListener('submit', hideElement);
function hideElement() {
  // ... process form ...
  formWarnings.style.display = 'none';
}
```

#### Write semantic code

Always be purposeful with the way you name functions, variables, classes, etc.

Think about what a function does before you name it. A good practice is to (re)-name your functions after you write them.

#### Separation of concerns

* Keep CSS (presentation), JS (behavior) and HTML (structure) in separate files
* Avoid writing inline CSS or Javascript in HTML
* Avoid writing CSS or HTML in Javascript
* Don't choose HTML elements to imply style
* Where appropriate, use CSS rather than Javascript for animations and transitions
* Try to use templates when defining markup in Javascript

#### Comment your code

Take your time to add a brief comment that explains how your code should be used.

Not all code should warrant a comment. If we name things semantically and we write beautiful code that's easy to read we rarely need to add comments.

Here are two examples where one function does not warrant a comment and the other one does.

```js
// Example 1 --
// The function below doesn't need a comment.
// It is simple, easy to read, and named semantically.

const sumFunc = (a,b) => return a + b;

// Example 2 --
// The function below has a little more going on and should have a comment;
// just by reading its name you don't know exactly what it does, like:
// - Does it modify an array or return a new array?

/**
 * Breaks an array down into chunks of N number of items.
 *
 * @param array         [array] array to break down into chunks
 * @param itemsPerChunk [int]   number of items per chunk
 * @returns array               returns a new array of arrays
 */
const arrayChunks = (array, itemsPerChunk = 3)=> {
  var i, j, temparray = [];
  for (i = 0, j = array.length; i < j; i += itemsPerChunk) {
    temparray.push(
      array.slice(i, i + itemsPerChunk)
    );
  }
  return temparray;
}
```