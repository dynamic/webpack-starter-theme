# JavaScript Best Practices

## Always “use strict” On
Always enable strict mode in your JavaScript code by adding the following line at the top of your scripts or functions:

```js
'use strict';

function exampleFunction() {
  // In strict mode, you can't use undeclared variables, which helps catch errors.
  someVar = 'This will throw an error';
}

```

Strict mode helps you catch common coding mistakes and prevents the use of potentially problematic features.

## Use Function expressions instead of Function Declarations
Unless you want to take advantage of Function behavior and properties, prefer function expressions. Function declarations are hoisted and although it can be useful sometimes, avoid them as they introduce weird behavior to the code and it is not always obvious what's happening. Try to make it clear where the function you are using comes from and they come before you use them to avoid weird access.

```js
// Bad
function doStuff() {};

// Good
const doStuff = function() {};

const doStuff = () => {};
```

## Don't use “var”!
Replace the use of 'var' with 'let' and 'const' in your JavaScript code. Variable declarations with 'var' are hoisted, allowing them to be accessed before their actual declaration, which can lead to unexpected and non-intuitive behavior.

## Use “const” and immutability as much as possible
Embrace the use of 'const' and prioritize immutability in your code whenever feasible. Continuously modifying data and passing it around can complicate bug tracking and the code itself. Opt for working with copies of data to avoid unintended side effects.

## Use “destructuring”
Destructuring is a feature in JavaScript that allows you to easily extract values from arrays, objects, and other data structures. It provides a more concise and convenient way to assign values to variables or access nested properties within objects and arrays.

```js
let person = {
  name: 'John',
  address: '123 Main St',
  occupation: 'Developer'
};

// Bad
let name = person.name;
let address = person.address;
let occupation = person.occupation;

// Good
let { name, address, occupation } = person;

// Good - rename variable to something more specific
let { name: firstName, address, occupation } = person;
```

## Always use “===”
The triple equal operator (===) performs both value and type checks, and it's a practice you should consistently follow. Cultivate the habit of using the triple equal operator to ensure accurate comparisons and prevent unintended consequences.

```js
// Example

let value = 0;
let value = "0";

// Bad
if (value == value2) {
  //returns true -  results in a truthy falsy value (values are converted to strings before comparison therefore this returns true) (loose equality)
}
// Good
if (value === value2) {
  //returns false - checks for type (strict equality)
}
```

## Avoid Global Variables and Global Scope Pollution
Avoiding creating things in global objects unless you are creating a library/framework. Global property names may collide with third parties or something a colleague also introduced and are hard to debug. Minimize the use of global variables and functions to prevent variable conflicts and make your code more maintainable. 

```js
let globalVar;

// Avoid creating global variables
function globalFunction() {
  globalVar = 'This is a global variable';
}
```

## Organize your declarations
Maintain consistency in your declaration style by placing all declarations at the beginning of your code, starting with constants and then moving on to variables. Use uppercase letters for constant names to clearly indicate their immutability, which can help prevent developers from attempting to modify them.

## Don't initialize things with “undefined”
An item is considered 'undefined' when it doesn't possess a value. Let's acknowledge that designating 'no value' as a 'value' for something can be a rather unconventional concept, right? In JavaScript, many things are inherently 'undefined,' which can make it challenging to discern whether something is 'undefined' due to your actions or the language itself. This ambiguity can complicate debugging processes, so it's often a better practice to explicitly set things to 'null' instead.

## Always initialize your declarations
For the same reason, you should not give “undefined” as a value to declarations, you should not leave them without a value because they are “undefined” by default.

## Lint your code and have a consistent style
Utilizing a code linter is the most effective approach to establish a uniform appearance for your code and to ensure that individuals don't introduce unconventional practices. It fosters a shared understanding and standardizes the codebase, promoting consistency among developers.

## Functions and methods should have one responsibility
Functions and methods should have a single, well-defined responsibility. It's common to overcomplicate functions by adding additional tasks during their implementation. 

## Use default values when possible
Utilize default values whenever feasible as an elegant alternative to raising errors due to missing input. Default values provide a graceful fallback, enhancing the user experience.

```js
const greetGuest = (name = 'Guest') => {
  console.log(`Hello, ${name}!`);
}

greetGuest();          // Output: Hello, Guest!
greetGuest('Alice');   // Output: Hello, Alice!
```

## Always have a default case for switch statements
Don't leave your switch statements without a default case because something can go wrong and you want to make sure you catch it.

```js
const foo = "foo";

// Bad
switch (foo) {
  case "bar":
    console.log("bar");
    break;
  case "boo":
    console.log("boo");
    break;
}
 
 // Good
switch (foo) {
  case "bar":
    console.log("bar");
    break;
  case "boo":
    console.log("boo");
    break;
  default:
    console.log("no matches");
    break;
}
```

## Never use “eval”
Never! It is not necessary.

## Avoid the “new” keyword
Except for class and constructor functions instancing, you should never use the “new” keyword for anything else. They can slow compilers down.

## Add meaningful comments for nonobvious things
Only add comments when you did something not common, weird, or requires context to be understood. Also, add comments to things that are a hack or may require improvements/fixing later on so the next person knows why. Add comments in your third parties' modules and modules in your codebase to explain the architecture and the intention behind things.

## Keep ternaries simple
Worst case scenario you have two nested ternaries. Anything longer should be an if statement or switch for readability and easy to debug reasons.

```js
const age = 25;
const isAdult = age >= 18 ? 'Yes' : 'No';
console.log(isAdult); // Output: 'Yes'
```

## Simplify with optional chaining
Get rid of those nested checks and use the “?” Operator.

```js
let person = {
    name: 'John Doe',
    address: '123 Main St',
    occupation: 'Developer'
};

let name = person && person.name;

// Better
let name = person?.name;
```

## For loops > .forEach sometimes
Don't change things into an array just so you can “.forEach” it. You are adding extra process to a slow alternative. For loops are faster and allows you to use the “continue” and “break” keywords to control the looping.

## “for…in” and “for…of”
The for-in and for-of loops are very powerful ways to loop. The “for-of” loop lets you go over the values of the array, strings, Map, Set, etc. No need to change something into an array to use .forEach. I would avoid the “for-in” for looping as it is the slowest one and iterates over prototype keys.

## Always “try…catch” JSON methods
Don't trust things passed to JSON methods “.stringify” and “.parse”. Try to catch them to make sure they don't fail and break your code.

```js
try {
  // Code that might throw an error
} catch (error) {
  // Handle the error gracefully
  console.error(`An error occurred: ${error.message}`);
}
```

## Prefer template strings
It is that simple. Template strings allow you to inject values into the string and they keep the format that can come in handy.

```js
let person = {
  name: 'John Doe',
  address: '123 Main St',
  occupation: 'Developer'
};

console.log('Hello, my name is ' + person.name + ' and I am a ' + person.occupation + '. I live at ' + person.address);

// Better
console.log(`Hello, my name is ${person.name} and I am a ${person.occupation}. I live at ${person.address}`);
```

## Avoid nesting or chaining loops
When you chain iteration methods or nest loops, you are introducing additional complexity to your code, which may result in reduced performance as your data scales. While certain tasks may necessitate these approaches, it's essential to consistently evaluate your looping strategy to avoid unnecessary or redundant loops, and consider opportunities to combine loops for efficiency.

## Prefer the “rest” operator over “arguments”
The “rest” operator will work with arrow functions where “arguments” are not available. Stick to one way to access your function arguments.
```js
const greetGuest = (name, age) => {
  console.log(`Hello, ${name}! You are ${age} years old.`);
}

const person = ['Alice', 30];
greetGuest(...person); // Output: Hello, Alice! You are 30 years old.
```

## Add semicolons, always!
It might come as a surprise, but you can omit semicolons in your JavaScript code. However, it's crucial to note that relying on automatic semicolon insertion by the compiler and using tools like Babel might introduce code misinterpretations, potentially leading to production bugs. Therefore, it's advisable to make it a practice to explicitly include semicolons in your code. Always add semicolons!

## Be careful with “Truthy” and “Falsy” checks
Don’t rely on the “truthy” and “falsy” checks since you can easily introduce bugs to your code. Try to be specific in your checks as unexpected things may pass as a truthy check.

## Prefer Ternary over logical “||” and “&&” checks
The "or" (||) and "and" (&&) operators in JavaScript evaluate truthiness and falsiness of values, which can lead to unexpected outcomes. Avoid using these operators for complex or unconventional logical condition checks, as they can make your code less readable and harder to understand. It's advisable to use explicit and clear condition checks to ensure the desired behavior of your code.

## Watch out for “undefined” and “null” with the “??” operator
The nullish coalescing operator (??) is a useful addition to JavaScript that ensures null and undefined values are not chosen, making it ideal for scenarios where you want to guarantee the presence of a value or provide a fallback to a default value when necessary.

```js
let userAge; // 'userAge' is undefined
const age = userAge ?? 25; // Use 25 as the default value
console.log(age); // Output: 25
```

## IIFE and small utility libraries
An IIFE is a powerful technique for executing code at the earliest possible moment, providing you with an opportunity to establish essential configurations before the main code execution begins. Additionally, you can leverage IIFEs to initialize compact libraries with a straightforward API, enabling you to encapsulate intricate logic and expose an object for seamless interaction, similar to the modular structure employed by libraries like jQuery.

```js

(function (win, doc) {
  // You can now use 'window' and 'document' as parameters
  const pageTitle = doc.title;
  console.log(`Current page title: ${pageTitle}`);
  
  // You can also access global properties through 'window'
  const windowWidth = win.innerWidth;
  console.log(`Window width: ${windowWidth}`);
})(window, document);
```