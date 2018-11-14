// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/


function show_sortTheNums(n){
	var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
	table = document.getElementById("showTable");
	switching = true;
	dir = "asc";
	while(switching){
		switching = false;
		rows = table.getElementsByTagName("TR");
		for(i = 1; i < (rows.length - 1); i++){
			shouldSwitch = false;
			x = rows[i].getElementsByTagName("TD")[n];
			y = rows[i + 1].getElementsByTagName("TD")[n];
			var x_num = x.innerHTML;
			var y_num = y.innerHTML;
	
			if(dir == "asc"){
				if(parseFloat(x_num,10) > parseFloat(y_num,10)){
					shouldSwitch = true;
					break;
				}
			} else if (dir == "desc"){
				if(parseFloat(x_num,10) < parseFloat(y_num,10)){
					shouldSwitch = true;
					break;
				}
			}
		}
		if(shouldSwitch){
			rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
			switching = true;
			switchcount ++;
		} else {
			if (switchcount == 0 && dir == "asc"){
				dir = "desc";
				switching = true;
			}
		}
	}
}
