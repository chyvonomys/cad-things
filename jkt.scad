a = 10.0;
r3 = sqrt(3.0);

r = a;
g = r3 * a / 2;
b = a / 2;
m = 2 * a / r3;
y = g - b;
TH = r + g + g;
KH = g + r + g;
intersection()
{
// K
linear_extrude(height=g+r+g) // J's width
polygon(points=[
	[0, 0], [r, 0], [r, g], [r+b, 0],
	[r+b+m, 0], [r+g, g+b], [r+b+m, g+r+g],
	[r+b, g+r+g], [r, g+r], [r, g+r+g], [0, g+r+g]]);

// T
translate([0, 0, TH])
rotate(v=[0,1,0], a=90)
linear_extrude(height=r+b+m) // K's width
polygon(points=[
	[0, 0], [r, 0], [r, g], [r+g+g, g],
	[r+g+g, g+r], [r, g+r], [r, g+r+g], [0, g+r+g]]);

// J
translate([0, KH, 0])
rotate(v=[1,0,0], a=90)
linear_extrude(height=g+r+g) // K's height
union()
{
    polygon(points=[
	    [r+y, g+g], [r+b+m, g+g],
	    [r+b+m, g+g+r], [r+y, g+g+r]]);
    intersection()
    {
	difference()
	{
	    translate([r+y, r+y, 0]) square(r+g+g, center=true);
	    translate([r+y, r+y, 0]) square(y+y, center=true);
	}
	square([r+y, g+g+r]);
    }
}
}