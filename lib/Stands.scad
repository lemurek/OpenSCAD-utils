include <Paths.scad>

module stand(r = 3) {
    difference() {
        union() {
            children(0);
            intersection() {
                cylinder(h=r, r=r);
                translate([0,0,-sqrt(2.8)*r])sphere(2*r, center=true);
            }
        }
        translate([0,0,-sqrt(2.8)*r])sphere(1.9*r, center=true);
    }
}

// You can expose things on the stand.
// stand(r = 2) follow();