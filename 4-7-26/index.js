// Variables
let title = "JavaScript Practice";
let count = 0;
const max = 10;

// Array
const fruits = [
  "Apple",
  "Banana",
  "Orange",
  "Mango",
  "Pineapple"
];

// Object
const student = {
  name: "Rokon",
  age: 22,
  department: "CSE",
  showInfo() {
    console.log(this.name + " - " + this.department);
  }
};

// Function
function greet(name) {
  return "Hello " + name;
}

console.log(greet("World"));

student.showInfo();

// Loop through array
for (let i = 0; i < fruits.length; i++) {
  console.log(fruits[i]);
}

// While loop
while (count < max) {
  console.log("Count:", count);
  count++;
}

// Even or Odd
function checkNumber(num) {
  if (num % 2 === 0) {
    return "Even";
  } else {
    return "Odd";
  }
}

console.log(checkNumber(11));

// Create Element
const heading = document.createElement("h1");
heading.innerText = title;
document.body.appendChild(heading);

// Create Button
const button = document.createElement("button");
button.innerText = "Click Me";
document.body.appendChild(button);

// Create Paragraph
const para = document.createElement("p");
para.innerText = "Button not clicked.";
document.body.appendChild(para);

// Event Listener
button.addEventListener("click", function () {
  para.innerText = "Button Clicked!";
});

// Function with Array
function printFruits(arr) {
  arr.forEach(function (fruit) {
    console.log(fruit);
  });
}

printFruits(fruits);

// Map
const numbers = [1,2,3,4,5];
const squares = numbers.map(function(num){
  return num * num;
});

console.log(squares);

// Filter
const evenNumbers = numbers.filter(function(num){
  return num % 2 === 0;
});

console.log(evenNumbers);

// Reduce
const total = numbers.reduce(function(sum,num){
  return sum + num;
},0);

console.log(total);

// String Methods
let message = "JavaScript Learning";
console.log(message.length);
console.log(message.toUpperCase());
console.log(message.toLowerCase());

// Math
console.log(Math.random());
console.log(Math.floor(4.9));
console.log(Math.max(10,20,30));

// Date
const today = new Date();
console.log(today);

// Function Expression
const multiply = function(a,b){
  return a*b;
};

console.log(multiply(5,6));

// Arrow Function
const divide = (a,b)=>a/b;
console.log(divide(20,4));

// Destructuring
const person={
  firstName:"John",
  lastName:"Doe",
  city:"Dhaka"
};

const {firstName,lastName}=person;
console.log(firstName,lastName);

// Spread
const arr1=[1,2,3];
const arr2=[4,5,6];
const arr3=[...arr1,...arr2];
console.log(arr3);

// Template Literal
let language="JavaScript";
console.log(`I am learning ${language}`);

// For...of
for(const item of fruits){
  console.log(item);
}

// Switch
let day=2;

switch(day){
  case 1:
    console.log("Monday");
    break;
  case 2:
    console.log("Tuesday");
    break;
  default:
    console.log("Another Day");
}

// Interval
let sec=0;

const timer=setInterval(function(){
  sec++;
  console.log(sec);

  if(sec===5){
    clearInterval(timer);
  }
},1000);

// Promise
const promise=new Promise(function(resolve){
  setTimeout(function(){
    resolve("Promise Completed");
  },2000);
});

promise.then(function(result){
  console.log(result);
});

// End
console.log("JavaScript Practice Finished.");