flange_r = 15;
flange_h = 3;

shaft_r = 6;
shaft_h = 50;
taper_r = 4;
taper_h = 6;

cable_r = 2.5;
slot_w = 3.5;

$fs = 0.5;

total_h = flange_h+shaft_h+taper_h;

difference() {
    union() {
        cylinder(r = flange_r, h=flange_h);
        translate([0,0,flange_h])
            cylinder(r = shaft_r, h=shaft_h);
        translate([0,0,flange_h+shaft_h])
            cylinder(h=taper_h, r1 = shaft_r, r2=taper_r);
    }
    cylinder(r=cable_r, h=total_h);
    translate([-slot_w/2,-flange_r,0])
        cube([slot_w,flange_r,total_h]);
}