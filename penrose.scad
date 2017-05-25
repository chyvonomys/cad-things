use <scad-utils/transformations.scad>
use <scad-utils/lists.scad>
use <scad-utils/shapes.scad>
use <skin.scad>

a = 8;
h = 12;

function smoothstep(x) = 3 * x*x - 2 * x*x*x;

module smooth_transition(height, shift)
{
    skin([
        for (t = [0:0.1:1])
            for (d = smoothstep(t) * shift)
                transform(translation([d,d,height*t]), square(size=a))
    ]);
}

module penrose_edge()
{
    cube(size=a, center=true);
    translate([0,0,a/2]) smooth_transition(h + h - a, h);
}

module penrose_triangle()
{
    translate([ h,  0, -h]) rotate([0,0,180]) penrose_edge();
    translate([-h,  h,  0]) rotate([270,0,270]) penrose_edge();
    translate([ 0, -h,  h]) rotate([270,90,0]) penrose_edge();
}

for (a = [0:3])
    rotate(a=a*120, v=[1,1,1])
    translate([0, h, -h])
{
    penrose_triangle();
    translate([-h, h, 0]) rotate([0,0,180]) penrose_edge();
}


//penrose_edge();
//smooth_transition(h + h - a, h);