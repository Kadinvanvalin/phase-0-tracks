console.log("Hello");

function changeList(){
	var bullet = document.getElementsByTagName("li");
	bullet[0].style.color = "red";
}

changeList();