console.log("This script is running!");

function greenOutline() {
	var photo = document.getElementById("logo");
	photo.style.border = "4px solid green";
}

var photo = document.getElementById("logo");
photo.addEventListener("click", greenOutline);