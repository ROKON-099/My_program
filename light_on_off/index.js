const status = document.getElementById("status");
const bulb = document.getElementById("bulb");
const toggleBtn = document.getElementById("toggleBtn");
const container = document.querySelector(".container");
const body = document.body;

let isOn = true;

toggleBtn.addEventListener("click", function () {

    if (isOn) {
        status.textContent = "Light is OFF";
        toggleBtn.textContent = "Turn ON";
        bulb.src = "./images/bulb-off.png"; // OFF image
        body.style.backgroundColor = "#222";
        container.style.boxShadow = "none";

        isOn = false;
    } else {
        status.textContent = "Light is ON";
        toggleBtn.textContent = "Turn OFF";
        bulb.src = "./images/bulb-on.png"; // ON image
        body.style.backgroundColor = "yellow";
        container.style.boxShadow = "0 0 30px yellow";

        isOn = true;
    }

});