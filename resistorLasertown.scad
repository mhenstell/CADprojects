//units are in inches and scaled after

roomHeight = 84;
roomLength = 158;
roomWidth = 96;
bookcaseWidth = 36;
numShelves = 8;

module floor() {
	cube([roomLength/2,roomWidth,2]);
	translate([roomLength/2,0,0]) {
		cube([roomLength/2,roomWidth,1]);
	}
}

module eastWall() {
	
	cube([21,4,roomHeight]); //First segment
	
	translate([21,0,0]) {
		color([1,1,1,.5]) {
			cube([24,4,roomHeight]); //Door
		}
	}
	
	translate([45,0,0]) {
		cube([roomLength-45,4,roomHeight]); //Rest
	}
}

module westWall() {
	
	translate([0,roomWidth,0]) {
		cube([roomLength, 4, roomHeight]); //Wall
	}
	
	translate([24,roomWidth,24]) {
		color([1,1,1,.5]) {
			cube([36,4,48]); //Window
		}
	}
}

module southWall() {

	cube([4,roomWidth,roomHeight]);
}

module northWall() {
	
	translate([roomLength,0,0]) {
		cube([4,100,roomHeight]);
	}
}

module ceiling() {
	translate([0,0,roomHeight]) {
		cube([roomLength + 4,100,4]);
	}
}

module bookcase() {
	translate([4,4,0]) {
		cube([12,1,roomHeight]);
	}
	translate([4,4,0]) {
		cube([1,bookcaseWidth,roomHeight]);
	}
	translate([4,bookcaseWidth+4,0]) {
		cube([12,1,roomHeight]);
	}
	
	for ( x = [0:numShelves-1] ) {
		translate([4,4,x*12]) {
			cube([12,bookcaseWidth+1,1]);
		}
	}
}

floor();

color([.5,.5,.5,.5]) {
	//eastWall();
	westWall();
	southWall();
	//northWall();
	//ceiling();
};

bookcase();