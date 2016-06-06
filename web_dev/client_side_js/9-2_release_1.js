console.log("HI");

function backgroundColorChange(event){
  event.target.style.backgroundColor = "white";
}
var columnOne = document.getElementsByClassName("column-1");
columnOne[0].addEventListener("click", backgroundColorChange);