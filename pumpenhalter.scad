pumpside = 55;
holderside = 80;
screwdiameter = 3;
pumplength = 100; 
holeXtranslate = 0.5*pumpside + (holderside-pumpside) / 2 - screwdiameter*3;
piperadius = 11;
union(){
    difference(){
        cube(center=true, [holderside,holderside,pumplength]);
        cube(center=true, [pumpside,pumpside,pumplength+10]);
        translate([pumpside/2+screwdiameter,0,holderside/3])rotate([0,90,0])cylinder(r=screwdiameter, h=100, $fn=100, center=true);
        translate([pumpside/2+screwdiameter,0,holderside/3])rotate([0,90,0])cylinder(r1=screwdiameter*3, r2=1, h=10, $fn=100, center=true); //senklocch
        translate([pumpside/2+screwdiameter,0,-holderside/3])rotate([0,90,0])cylinder(r=screwdiameter, h=100, $fn=100, center=true);
        translate([pumpside/2+screwdiameter,0,-holderside/3])rotate([0,90,0])cylinder(r1=screwdiameter*3, r2=1, h=10, $fn=100, center=true); //senklocch

        translate([-pumpside,0,0])rotate([0,0,45])cube(center=true, [holderside,holderside,pumplength+10]);
    }
    difference(){
        translate([0,-holderside/2, -pumplength/2])cube([holderside/2, holderside, (holderside-pumpside)/2]);
        translate([0,0,-1])cylinder(r=piperadius, h= pumplength, $fn=100, center=true);
    }
}