difference()
{
    union()
    {
        rotate(a=2, v=[1,0,0])
        difference()
        {
            translate([0,0,-3]) union()
            {
                cylinder(h=35,d=15,$fn=24);
                translate([0,0,35])

                
                scale(1.1,1.1,1)
                union()
                {
                    scale([1,1,1.6])difference()
                    {
                        sphere(d=15, $fn=32, center=true);
                        translate([0,0,-15]) cube(size=[15,15,30], center=true);
                    }
                    translate([0,0,-3]) cylinder(h=3, d1=10, d2=15, $fn=24);
                }
            }
            translate([0,-14,0]) cube(size=[15,15,120],center=true);
        }
        

        rotate(a=8, v=[1,0,0])scale([1,1,1.1]) translate([-8,-7,5]) sphere(d=20);
        rotate(a=6, v=[1,0,0])scale([1,1,1.2]) translate([+8,-6,5]) sphere(d=20);

        
        translate([0,-5,0]) cylinder(d1=8, d2=4, h=40, $fn=24);
    }
    translate([0,0,-20]) cube(size=[40,40,40], center=true);
}

