$(document).ready(function(){

   $("img").hover(
   			function(e){ 
   				$(e.target).animate({
    				width: "600px",
    				opacity: 0.4
   				}, 1500 )  
   				},
   				function(e){ 
   				$(e.target).animate({
    				width: "302px",
    				opacity: 1
   				}, 1500 )  
   				});

});