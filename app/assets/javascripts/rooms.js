$(document).ready(function() {
	$('#messages').scrollTop($('#messages')[0].scrollHeight);
	$.getJSON('http://gd.geobytes.com/GetCityDetails?callback=?', function(data) {
		//console.log(JSON.stringify(data, null, 2));
		console.log("data.geobytesremoteip: " + data.geobytesremoteip);
		$("#geoIP").val(data.geobytesremoteip);
	});
	console.log("userIP: " + userIP);
});

function onMin(){
	document.getElementById("wholeChat").style.display = "none";
}

function onMax(){
	document.getElementById("wholeChat").style.display = "block";
	console.log("now userIP: " + userIP);
	console.log("location.hostname: " + location.hostname);
	console.log("getRandomName(): " + getRandomName());
	console.log("getRandomColor(): " + getRandomColor());
}


function getRandomName() {
 const adjs = ["autumn", "hidden", "bitter", "misty", "silent", "empty", "dry", "dark", "summer", "icy", "delicate", "quiet", "white", "cool", "spring", "winter", "patient", "twilight", "dawn", "crimson", "wispy", "weathered", "blue", "billowing", "broken", "cold", "damp", "falling", "frosty", "green", "long", "late", "lingering", "bold", "little", "morning", "muddy", "old", "red", "rough", "still", "small", "sparkling", "throbbing", "shy", "wandering", "withered", "wild", "black", "young", "holy", "solitary", "fragrant", "aged", "snowy", "proud", "floral", "restless", "divine", "polished", "ancient", "purple", "lively", "nameless"];
 const nouns = ["waterfall", "river", "breeze", "moon", "rain", "wind", "sea", "morning", "snow", "lake", "sunset", "pine", "shadow", "leaf", "dawn", "glitter", "forest", "hill", "cloud", "meadow", "sun", "glade", "bird", "brook", "butterfly", "bush", "dew", "dust", "field", "fire", "flower", "firefly", "feather", "grass", "haze", "mountain", "night", "pond", "darkness", "snowflake", "silence", "sound", "sky", "shape", "surf", "thunder", "violet", "water", "wildflower", "wave", "water", "resonance", "sun", "wood", "dream", "cherry", "tree", "fog", "frost", "voice", "paper", "frog", "smoke", "star"];
 return (
   adjs[Math.floor(Math.random() * adjs.length)] +
   "_" +
   nouns[Math.floor(Math.random() * nouns.length)]
 );
}
 
function getRandomColor() {
 return '#' + Math.floor(Math.random() * 0xFFFFFF).toString(16);
}
