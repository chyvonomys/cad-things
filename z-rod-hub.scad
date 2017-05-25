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
            h = hole_depth + top_height,
            d = hole_diameter,
            $fn = 32);
        
        cylinder(
            h = top_height,
            d = top_diameter,
            $fn = 32);
    }
    cylinder(
        h = 2.1 * (top_height + hole_depth),
        d = rod_diameter,
        center = true,
        $fn = 32);
    }