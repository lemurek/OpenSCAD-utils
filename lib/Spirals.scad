include <Paths.scad>
include <Rotations.scad>

module spiral_repeat(height, step, twist) {
    for (h = [0 : step : height]) {
        translation=[0,0,h];
        a = h/height;
        //echo("Translation: ", translation, "Twist: ", -a*twist);
        translate(translation)rotate(a*twist)children(0);
        
    } 
}

function spiral(height = 10, step = 1, twist = 360, p=[1,0,0]) = [ for (h = [0 : step : height]) 
    let (angle = twist*h/height,
        rotated = z_rotation(angle) * p)
    [rotated[0], rotated[1], h]];

// Basic example displaying basic capabilities of the library
// follow(spiral());

// Example combining spiral and spiral_repeat in single render
/*
module tube(height, Rin, thick) {
    difference() {
        cylinder(h=height, r=Rin+thick, center = true);
        cylinder(h=height, r=Rin, center = true);
    }
}

module dragon_tail(length, width, shift) {
    
    follow(spiral(length, width/2, 72 * length), 0.5);
    spiral_repeat(length, width/2, 72 * length) 
    intersection() {
        tube(2*width, 1, 0.1);
        translate([shift,0,0])
        translate([0, 1, 0]) rotate(50, [0, 1, 0]) cube([width, 1, width], center = true);
    }
}

dragon_tail(9.2, 0.5, 0.46);
*/
