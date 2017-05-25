shaft_width = 9.5;
bearing_width = 7.0;
bearing_inner_diameter = 8.0;
bearing_outer_diameter = 22.0;

inner_height = bearing_width / 2.0;
outer_height = (shaft_width - bearing_width) / 2.0;

axis_diameter = 3.0;

difference()
{
    union()
    {
        cylinder(
            h = inner_height + outer_height - 0.5,
            d = bearing_inner_diameter,
            $fn = 32);
        
        cylinder(
            h = outer_height,
            d = (bearing_outer_diameter + bearing_inner_diameter) / 2.0,
            $fn = 32);
    }
    cylinder(
        h = shaft_width,
        d = axis_diameter,
        center = true,
        $fn = 12);
    }