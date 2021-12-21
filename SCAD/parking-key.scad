// Bumper Cars - Parking Key
// GNU GPL v3
// Mattia Biondi
// https://git.io/mattiabiondi

use <MCAD/regular_shapes.scad>

$fn=1000;

module key()
{
    width=11.8;
    depth=25;
    height=5.25;

    cylinder(h=2.8, d=27.5, center=true);

    intersection()
    {
        height=2.8;
        translate([0, depth/2, 0]) cube([18, depth, height], center=true);
        translate([0, 12, 0]) cylinder(h=height, d=27.5, center=true);
    }
    
    difference()
    {
        union()
        {
            cylinder(h=5.25, d=11.8, center=true);
            translate([0, depth/2, 0]) cube([width, depth, height], center=true);
        }
        
        cylinder(h=6, d=3.6, center=true);
        translate([0, depth/2, 0]) cube([3.6, depth*2, height+1], center=true);
    }
    
    translate([0, depth, 0]) oval_prism(height+2.5, 2, width/2, center=true);

    difference()
    {
        union()
        {
            translate([0, depth+10, 0]) cube([width, 20, height], center=true);
            translate([0, depth+20, 0]) cylinder(h=height, d=width, center=true);
        }
        
        translate([0, depth*2-4, 0]) cylinder(h=height+1, d=3.6, center=true);
    }
}

key();