size = [50, 50, 1];
line = 0.8;
frame = 1.2;
hole = 1.6;

    cube(size);
/*
difference() {
    step = line + hole;
    for(
        x = [frame: step: size.x - frame], 
        y = [frame: step: size.y - frame]
    ) {
        translate([x,y,0]) cube([hole, hole, size.z]);
    }
}*/