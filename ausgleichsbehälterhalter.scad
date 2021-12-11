pumpside = 70;
holderside = 100;
screwdiameter = 3;
holeXtranslate = 0.5*pumpside + (holderside-pumpside) / 2 - screwdiameter*3;
difference(){
    cube(center=true, [holderside,holderside,50]);
    cube(center=true, [pumpside,pumpside,60]);
    translate([holeXtranslate,holeXtranslate,0])cylinder(r=screwdiameter, h=100, $fn=100, center=true);
    translate([holeXtranslate,holeXtranslate,-22])cylinder(r1=screwdiameter*3, r2=1, h=10, $fn=100, center=true); //senklocch

    translate([holeXtranslate,-holeXtranslate,0])cylinder(r=screwdiameter, h=100, $fn=100, center=true);
    translate([holeXtranslate,-holeXtranslate,-22])cylinder(r1=screwdiameter*3, r2=1, h=10, $fn=100, center=true); //senklocch
    translate([-pumpside,0,0])rotate([0,0,45])cube(center=true, [holderside,holderside,60]);
}