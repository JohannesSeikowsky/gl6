// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery


// submitting form when user changes this_month or interval in account Interface
function click_submit_btn(this_element){
    this_element.parentNode.lastElementChild.click();
}

function display_element(id){
	element = document.getElementById(id);
	element.style.display = "block";
}

function hide_element(id){
	element = document.getElementById(id);
	element.style.display = "none"; 
}

function display_comment_section(id){
	element_id = "comment_container_" + id
	element = document.getElementById(element_id);
	element.style.display = "block";
}




//

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