
module clone(n, axis) {
    a = 360./n;
    for (i = [1:n]) {
        rotate(i*a, axis) children(0);
    }
}

// Quickly create multiple copies rotated around a circumference 
// clone(5, [0,0,1]) translate ([10,0,0]) cube();
