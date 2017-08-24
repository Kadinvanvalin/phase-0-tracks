
 function changeList(event) { 
 	console.log ("on click do this:");
 	console.log(event);
 	event.target.style.color = "blue";
 }
document.getElementsByTagName("li")[0].addEventListener("click", changeList);



function addToList(event){
	console.log("hello");
	event.preventDefault();
	var userinput = document.getElementById("userinput").value;
	var li = document.createElement("li");
	li.innerHTML = userinput;
	document.getElementById("list").appendChild(li);

}

document.getElementById("button").addEventListener("click", addToList)