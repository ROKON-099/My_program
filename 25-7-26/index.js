const images = [

   "./images/Mask Group.png",
   "./images/Mask group 2.png",
   "./images/Mask Group 3.png",

];

const image = document.getElementById("slider-image");

const next = document.getElementById("next");

const prev = document.getElementById("prev");

let index = 0;

// Show Image

function showImage(){

    image.src = images[index];
}

// Next Button

next.addEventListener("click", function(){

    index++;

    if(index >= images.length){

        index = 0;
    }

    showImage();

});

// Previous Button

prev.addEventListener("click", function(){

    index--;

    if(index < 0){

        index = images.length - 1;
    }

    showImage();

});

// Auto Slide

setInterval(function(){

    index++;

    if(index >= images.length){

        index = 0;
    }

    showImage();

},3000);