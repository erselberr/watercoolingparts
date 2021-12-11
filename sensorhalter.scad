pumpside = 50;
holderside = 80;
screwdiameter = 3;
pumplength = 90; 
piperadius = 11;
union(){
    difference(){
        cube(center=true, [holderside,pumpside,pumplength]);
        translate([-pumpside/10,0,0])cube(center=true, [pumpside*1.2,holderside+1,pumplength+10]);
        translate([pumpside/2+screwdiameter,0,pumplength/4])rotate([0,90,0])cylinder(r=screwdiameter, h=100, $fn=100, center=true);
        translate([pumpside/2+screwdiameter,0,pumplength/4])rotate([0,90,0])cylinder(r1=screwdiameter*3, r2=1, h=10, $fn=100, center=true); //senklocch
        translate([pumpside/2+screwdiameter,0,-pumplength/4])rotate([0,90,0])cylinder(r=screwdiameter, h=100, $fn=100, center=true);
        translate([pumpside/2+screwdiameter,0,-pumplength/4])rotate([0,90,0])cylinder(r1=screwdiameter*3, r2=1, h=10, $fn=100, center=true); //senklocch

        translate([-pumpside,0,0])rotate([0,0,45])cube(center=true, [holderside,holderside,pumplength+10]);
    }
    difference(){
        translate([pumpside*0.25,0, -pumplength/2+(holderside-pumpside)/4])cube([holderside/2, pumpside, (holderside-pumpside)/2], center=true);
        translate([pumpside*0.25-holderside/4,0, -pumplength/2])cylinder(r=piperadius, h= pumplength, $fn=100, center=true);
    }
        difference(){
        translate([pumpside*0.25,0, pumplength/2-(holderside-pumpside)/4])cube([holderside/2, pumpside, (holderside-pumpside)/2], center=true);
        translate([pumpside*0.25-holderside/4,0, pumplength/2])cylinder(r=piperadius, h= pumplength*3, $fn=100, center=true);
    }
}