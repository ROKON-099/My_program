const count=document.getElementById("count");
const increase=document.getElementById("increase");
const decrease=document.getElementById("decrease");

let counter=0;
decrease.disabled=true;
increase.addEventListener("click", function(){

counter++;
count.textContent=counter;
decrease.disabled=false;

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

if (counter<10)
{

    increase.disabled=false;

}
if (counter==0){
    decrease.disabled=true;
    decrease.style.backgroundColor="red";
    decrease.style.cursor="not-allowed"


}

});
