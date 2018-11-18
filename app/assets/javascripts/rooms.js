$(document).ready(function() {
	$('#messages').scrollTop($('#messages')[0].scrollHeight);
});

function onMin(){
	document.getElementById("wholeChat").style.display = "none";
}

function onMax(){
	document.getElementById("wholeChat").style.display = "block";
}


