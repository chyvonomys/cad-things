club_diameter = 11.0;
tA = 10.0;
tH = tA * cos(30.0);
tR = 0.5 * tA / cos(30.0);
pH = sqrt(tA*tA - tR*tR);
pR = sqrt(3)/sqrt(8) * tA;

union()
{
translate([0, 0, 0.7 * club_diameter]) union()
{
    // top
    translate([0, 0, pH]) sphere(d=club_diameter, $fn=32);
    
    translate([tR-tH, -0.5 * tA, 0]) sphere(d=club_diameter, $fn=32);
    translate([tR-tH, +0.5 * tA, 0]) sphere(d=club_diameter, $fn=32);
    translate([+tR, 0, 0]) sphere(d=club_diameter, $fn=32);
    
    cylinder(h=1.4*pH, r1=1.4*tR, r2=0, $fn=3);
    
    //translate([0, 0, pH-pR]) sphere(d=0.7*club_diameter, $fn=32);
}
cylinder(h=pH-pR+0.7*club_diameter, r1=0.5*club_diameter, r2=0, $fn=3);
}