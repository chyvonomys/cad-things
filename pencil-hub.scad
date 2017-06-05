an=30;
translate([0,0,-31])
intersection()
{
difference()
{
hull()
{
rotate(a=0, v=[0,0,1]) rotate(a=an, v=[1,0,0]) cylinder(h=50, d=12, $fn=32);
rotate(a=120, v=[0,0,1]) rotate(a=an, v=[1,0,0]) cylinder(h=50, d=12, $fn=32);
rotate(a=240, v=[0,0,1]) rotate(a=an, v=[1,0,0]) cylinder(h=50, d=12, $fn=32);
}
union()
{
rotate(a=0, v=[0,0,1]) rotate(a=an, v=[1,0,0]) cylinder(h=50, d=8, $fn=6);
rotate(a=120, v=[0,0,1]) rotate(a=an, v=[1,0,0]) cylinder(h=50, d=8, $fn=6);
rotate(a=240, v=[0,0,1]) rotate(a=an, v=[1,0,0]) cylinder(h=50, d=8, $fn=6);
cylinder(h=100, d=8, $fn=6, center=true);
}
}

translate([0,0,25]) cube(size=[100, 100, 12], center=true);
}
