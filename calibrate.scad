module hole(diameter, height, faces)
{
    actual_diameter = diameter / cos(180.0/faces);
    cylinder(d=actual_diameter, h=height, center=true, $fn=faces);
}

module ladder(faces, height)
{
union()
{
    for (i = [0:5])
    {
        diameter = i + 3.0;
        radius = diameter * 0.5;
 
        bottom = 0;
        left = -1 + i*(i-1)*0.5 + i*3.0 + i*2.0;
 
        translate([left + radius, bottom + radius, 0])
            hole(diameter, height, faces);
 
        diameter2 = i + 3.5;
        radius2 = diameter2 * 0.5;
 
        top = 14.0;
        right = 43 - (i*(i-1)*0.5 + i*3.5 + i*2.0);
 
        translate([right - radius2, top - radius2, 0])
            hole(diameter2, height, faces);
    }
}
}

difference()
{
    minkowski()
    {
        hull() union()
        {
            ladder(32, 1);
            translate([0, 16, 0]) ladder(6, 1);
        }
        
        cylinder(d=3.0, h=2.0, center=true, $fn=32);
    }
    union()
    {
        ladder(32, 6);
        translate([0, 16, 0]) ladder(6, 6);
    }
}
