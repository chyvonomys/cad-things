intersection()
{
    cube(size=[100, 100, 11], center=true);
    
    union()
    {
        difference()
        {
            difference()
            {
                cylinder(h=11, d1=18.5+7, d2=18.5+7, $fn=24, center=true);
                cylinder(h=12, d1=18.5, d2=18.5, $fn=24, center=true);
            }
            // cut
            translate([10, 0, 0]) cube(size=[20, 1, 22], center=true);
        }
        translate([-14, 0, 0]) cube(size=[8, 10, 11], center=true);

        // plate with holes
        translate([-17.5, 0, 0])
        rotate(a=10, v=[0, 1, 0])
        difference()
        {
            cube(size=[3.5, 40, 12], center=true);
            // holes
            rotate(a=90, v=[0,1,0])
            union()
            {
                translate([0,-14,0]) cylinder(h=5, d1=3, d2=3, $fn=12, center=true);
                translate([0, 14,0]) cylinder(h=5, d1=3, d2=3, $fn=12, center=true);
            }
        }
    }
}