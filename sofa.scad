//http://mistupid.com/homeimpr/lumber.htm

module bedPosts()
{	
	cube([89,89,2000]); 							//Post 1 (4x4)
	
	translate([0,distBtwPosts + 89,0]) { 			//Post 2 (4x4)
		cube([89,89,2000]);
	}

	translate([-38,0,heightOfSides]) { //Side 1
		cube([38,distBtwPosts + (89*2) + 38,140]);	//Side 1 (2x6)
	}

	
	translate([0,distBtwPosts + (89*2),heightOfSides]) { 		//Side 2 (2x6)
		cube([1220,38,140]);
	}
}


module sofaFrame() {
	
	difference() {
		
	
		translate([-38, 89, heightOfSides]) {
			cube([140, 38, heightOfSofaBack]);
		}

		translate([100, 85, heightOfSides + 300]) {
			rotate(-30, [0,1,0]) {
				cube([140, 50, 300]);
			}
		}
	}
	

	
	
}

distBtwPosts = 1220;
heightOfSides = 200;
heightOfSofaBack = 500;

difference() {
	sofaFrame(); 
	bedPosts();
}

% bedPosts();