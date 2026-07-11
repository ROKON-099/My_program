const name= "Rokon";
console.log(`Hello ${name}`);


const name="Rokon";
const age=23;

console.log("My name is "+ name+ "and Iam "+age+ "year old");

const name="Rokon";
const age=22;
console.log(`my name is ${name} and iam ${age} year old `);

const a=5;
const b=6;
console.log (`sum is: ${a}+ ${b}=${a + b}`);

function great (name)
{
 return `hello ${name}`;

}
console.log(`${great("Rokon")}`);


const title="laptop";
const price=45000;

const card=`<div class="card">

<h2> ${title} </h2>
<p> ${price} BDT </p>
</div>`;
console.log(card);


const fruits=["apple", "orange", "mango"];
const list=` ${fruits.map(fruits => `<li>${fruits}`}
</li>`).join("")}
</ul>`;



//real project example of es6 and js 

const products= [

    {name:"laptop", price:90000},
    {name:"phone", price:15000},
    {name:"mouse",price:1200}


];

const card= products.map=>
    `<div class="card">
 <h3>${product. name }</h3>




`

