# JavaScript Functions

## What is a Function?

A **function** is a reusable block of code that performs a specific task. Instead of writing the same code multiple times, write it once in a function and call it whenever needed.

### Syntax

```javascript
function functionName() {
    // Code
}
```

### Example

```javascript
function greet() {
    console.log("Hello, World!");
}

greet();
```

**Output**

```
Hello, World!
```

---

# Function Basics

## Example 1

```javascript
function sayHello() {
    console.log("Welcome to JavaScript!");
}

sayHello();
```

**Output**

```
Welcome to JavaScript!
```

### Explanation

- `function` → Keyword used to create a function.
- `sayHello` → Function name.
- `{}` → Function body.
- `sayHello()` → Calls (executes) the function.

---

## Example 2

```javascript
function welcome() {
    console.log("Learning JavaScript Functions");
}

welcome();
welcome();
welcome();
```

**Output**

```
Learning JavaScript Functions
Learning JavaScript Functions
Learning JavaScript Functions
```

Notice that one function can be called multiple times.

---

# Parameters & Arguments

## What is a Parameter?

A **parameter** is a variable declared inside the function definition.

## What is an Argument?

An **argument** is the actual value passed to the function when calling it.

### Syntax

```javascript
function functionName(parameter1, parameter2) {

}

functionName(argument1, argument2);
```

---

## Example 1

```javascript
function greet(name) {
    console.log("Hello " + name);
}

greet("Rokon");
```

**Output**

```
Hello Rokon
```

Here,

- `name` → Parameter
- `"Rokon"` → Argument

---

## Example 2

```javascript
function introduce(name, age) {
    console.log("Name: " + name);
    console.log("Age: " + age);
}

introduce("Sakib", 23);
```

**Output**

```
Name: Sakib
Age: 23
```

---

## Example 3

```javascript
function multiply(a, b) {
    console.log(a * b);
}

multiply(5, 6);
```

**Output**

```
30
```

---

# Return

## What is Return?

The `return` keyword sends a value back to the place where the function was called.

### Syntax

```javascript
function functionName() {
    return value;
}
```

---

## Example 1

```javascript
function add(a, b) {
    return a + b;
}

let result = add(10, 20);

console.log(result);
```

**Output**

```
30
```

### Explanation

- `return` sends the result back.
- `result` stores the returned value.

---

## Example 2

```javascript
function square(number) {
    return number * number;
}

console.log(square(6));
```

**Output**

```
36
```

---

## Example 3

```javascript
function isEven(number) {
    return number % 2 === 0;
}

console.log(isEven(8));
console.log(isEven(5));
```

**Output**

```
true
false
```

---

## Example 4

```javascript
function getFullName(firstName, lastName) {
    return firstName + " " + lastName;
}

const fullName = getFullName("MD", "Rokonuzzaman");

console.log(fullName);
```

**Output**

```
MD Rokonuzzaman
```

---

# Without Return

```javascript
function add(a, b) {
    console.log(a + b);
}

let result = add(10, 20);

console.log(result);
```

**Output**

```
30
undefined
```

### Why Undefined?

Because the function only prints the value using `console.log()`.
It does **not** return anything.
A function without a `return` statement automatically returns `undefined`.

---

# Real Project Example

## Login

```javascript
function login(username, password) {
    if (username === "admin" && password === "1234") {
        return "Login Successful";
    }

    return "Login Failed";
}

console.log(login("admin", "1234"));
```

---

## Price Calculation

```javascript
function calculateTotal(price, quantity) {
    return price * quantity;
}

console.log(calculateTotal(250, 4));
```

---

## Find Maximum Number

```javascript
function max(a, b) {
    if (a > b) {
        return a;
    }

    return b;
}

console.log(max(100, 80));
```

---

# Summary

| Topic | Description |
|-------|-------------|
| Function | Reusable block of code |
| Parameter | Variable inside the function definition |
| Argument | Actual value passed to the function |
| Return | Sends a value back from the function |
| Function Call | Executes the function |

---

# Interview Questions

### 1. What is a function?

A reusable block of code that performs a specific task.

---

### 2. What is the difference between Parameter and Argument?

Parameter → Variable inside the function definition.

Argument → Actual value passed while calling the function.

---

### 3. What does the return keyword do?

It sends a value back from the function to the caller.

---

### 4. What happens if a function has no return statement?

It automatically returns `undefined`.

---

# Practice Problems

1. Write a function to add two numbers.
2. Write a function to subtract two numbers.
3. Write a function to find the square of a number.
4. Write a function to check whether a number is even or odd.
5. Write a function to find the largest of two numbers.
6. Write a function to calculate the area of a rectangle.
7. Write a function to calculate the factorial of a number.
8. Write a function to reverse a string.
9. Write a function to count vowels in a string.
10. Write a function to check whether a string is a palindrome.