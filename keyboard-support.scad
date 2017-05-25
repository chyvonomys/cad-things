ph=102;
pt=1.8;
om=3;
im=3;
hm=2;
pw=200;

plate_size=[pw, ph, pt];
plate_size2=[pw, ph, 0];
outer_margin=[om, om, hm];
inner_margin=[im, im, 0];

module wedge()
{
    rotate(v=[0,1,0], a=90)
    linear_extrude(height=pw+om*2, center=true)
    {
        rotate(v=[0,0,1], a=90)
        polygon([[-(ph/2 + om), -(pt/2 + hm)], [ph/2 + om, -(pt/2 + hm)],
                 [ph/2 + om, pt/2 + hm + 13], [-(ph/2 + om), pt/2 + hm + 5]]);
    }    
}

rotate(v=[0,1,0], a=-90)
difference()
{
difference()
{
    difference()
    {
        scale([1,1,-1]) wedge();
        cube(size=plate_size, center=true);
    }

    union()
    {
        cube(size=plate_size2 - 2*inner_margin + 2*[0, 0, 99], center=true);
        cube(size=plate_size2 - 2*inner_margin + 2*[-10, 99, 99], center=true);
        translate([0,0,-(pt/2+hm+10)]) cube(size=plate_size2 - 2*inner_margin + 2*[0, 99, 10], center=true);
        translate([0,0,-(pt/2+hm+10)]) cube(size=plate_size2 - 2*inner_margin + 2*[99, 0, 10], center=true);
    }
}
translate([100, 0, 0]) cube(size=[200,200,100], center=true);
}




