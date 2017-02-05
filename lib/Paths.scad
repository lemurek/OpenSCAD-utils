
module follow (path = [[0,0,0],[0,0,10]], r = 1) {
    for (i = [0:len(path)-2]){
        hull() {
            translate(path[i]) sphere(r);
            translate(path[i+1]) sphere(r);   
        }    
    }
}

// follow();
