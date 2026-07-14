const count=document.getElementById("count");
const increase=document.getElementById("increase");
const decrease=document.getElementById("decrease");

let counter=0;
increase.addEventListener("click", function(){

counter++;
count.textContent=counter;

if (counter==10){
    alert("counter reached maximum !")

increase.style.backgroundColor= "red";
increase.disabled=true;
increase.style.cursor = "not-allowed";
}


});

decrease.addEventListener("click", function(){


counter--;
count.textContent=counter;

});