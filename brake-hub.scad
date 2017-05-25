hole_diameter = 10.0;
rod_diameter = 5.3;
hole_depth = 7.5;
top_height = 2.0;
top_diameter = 12.6;

difference()
{
    union()
    {
        cylinder(
            h = 6 + 6,
            d = 8,
            $fn = 32);
        
        cylinder(
            h = 6,
            d = 11,
            $fn = 32);
    }
    
    union()
    {
        cylinder(
        h = 12,
        d = 2,
        $fn = 32);
        
        cylinder(
        h = 5,
        d = 6,
        $fn = 32);
        
        translate([0,0,5])
        cylinder(
        h=2,
        d1=6,
        d2=2,
        $fn = 32);
        
        translate([-1,0,0]) cube(size=[2,10, 12]);
    }
}