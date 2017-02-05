
module clone(n, axis) {
    a = 360./n;
    for (i = [1:n]) {
        rotate(i*a, axis) children(0);
    }
}

// Quickly create multiple copies rotated around a circumference 
// clone(5, [0,0,1]) translate ([10,0,0]) cube();

function z_rotation(angle) = 
    [[cos(angle), -sin(angle), 0],
     [sin(angle),  cos(angle), 0],
     [         0,           0, 1]];