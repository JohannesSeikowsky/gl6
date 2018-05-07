// display & hide behaviour on johannes page
function show_page(page_id){
	// hide the main containers
	document.getElementById("middle_container").style.display = "none";
	document.getElementById("right_side_container").style.display = "none";
	document.getElementById("left_side_container_inside_bottom").style.display = "none";		
	// hide all posts & pages
    var divsToHide = document.getElementsByClassName("post");
		for(var i = 0; i < divsToHide.length; i++){
    divsToHide[i].style.display = "none";}
	// show img & relevant page     
	document.getElementById("powered_by").style.display = "block";
	document.getElementById("profile_image_container").style.display = "block";        
	document.getElementById(page_id).style.display = "block";        
}

function show_piece(piece_id){
	// hide the main containers
	document.getElementById("middle_container").style.display = "none";
	document.getElementById("right_side_container").style.display = "none";
	document.getElementById("profile_image_container").style.display = "none";
	document.getElementById("left_side_container_inside_bottom").style.display = "none";		
	document.getElementById("powered_by").style.display = "none";
	// hide all posts & pages
    var divsToHide = document.getElementsByClassName("post");
		for(var i = 0; i < divsToHide.length; i++){
    divsToHide[i].style.display = "none";}
	// show relevant page    
	document.getElementById(piece_id).style.display = "block";	
}	

function show_default(piece_id){
	// hide current piece
	document.getElementById(piece_id).style.display = "none";
	// show middle and right side
	document.getElementById("middle_container").style.display = "block";
	document.getElementById("right_side_container").style.display = "block";
	// show other
	document.getElementById("powered_by").style.display = "block";
	document.getElementById("profile_image_container").style.display = "block";
	document.getElementById("left_side_container_inside_bottom").style.display = "block";
}

function home_button(){
	// hide all posts & pages
    var divsToHide = document.getElementsByClassName("post");
		for(var i = 0; i < divsToHide.length; i++){
    divsToHide[i].style.display = "none";}
	// show middle and right side
	document.getElementById("middle_container").style.display = "block";
	document.getElementById("right_side_container").style.display = "block";
	// show other
	document.getElementById("powered_by").style.display = "block";
	document.getElementById("profile_image_container").style.display = "block";
	document.getElementById("left_side_container_inside_bottom").style.display = "block";
}

