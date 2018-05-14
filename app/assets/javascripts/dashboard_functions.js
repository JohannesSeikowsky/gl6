
function display_section(element_id){
	// hide all sections
	var element_ids = ["settings","bio", "images", "email_subscribers", "new_post"];
	var array_length = element_ids.length;
	for (var i = 0; i < array_length; i++) {
		document.getElementById(element_ids[i]).style.display = "none";
	}
	// display relevant section
	document.getElementById(element_id).style.display = "block";
}
