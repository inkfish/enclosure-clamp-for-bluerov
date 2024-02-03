// Test code for creating a trapezoidal extrusion from the flat base to connect
// with the circular rim at a tangent.
//
// It turns out that the built-in hull() is much simpler, so this is just here
// because I did the math.
//
// Based on the WTE3-M-CLAMP-R1 model by Blue Robotics:
// https://bluerobotics.com/store/watertight-enclosures/enclosure-clamp/
//
// OpenSCAD model by Ryan Govostes.
// License: CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/)


// Measurements based on the 75mm (3") series, WTE3-M-CLAMP-R1
radius = 46.04;
thickness = 4.00;
width = 115.60;
depth = 49.50;
height = 30.00;
base_width = 45.00;
circle_y_offset = 1.00;


// Geometry calculations for the extrusion of the base to meet the cylinder at
// a tangent.
//
// See https://stackoverflow.com/a/1351772 for an explanation.
R = radius + thickness;
D = sqrt(pow(base_width/2, 2) + pow(depth + circle_y_offset, 2));
L = sqrt(pow(D, 2) - pow(R, 2));
alpha = asin(R / D);
beta  = atan2(-(depth + circle_y_offset), base_width/2);
theta = 180 - (alpha - beta);
x = L * cos(theta);
y = L * sin(theta);


$fn = 64;


difference() {
    union() {
        translate([0, circle_y_offset, 0])
        cylinder(h=height, r=(radius + thickness), center=true);

        // Create a 2D base face and then extrude it to a create a trapezoid
        // that touches the rim at a tangent.
        translate([0, -depth, 0])
        rotate([90, 0, 180])
        linear_extrude(y, center=false,
                       scale=[(base_width + 2*x)/base_width, 1.0])
        square(size=[base_width, height], center=true);
    }

    // Subtract a cylinder from the center to leave a rim
    translate([0, circle_y_offset, 0])
    cylinder(h=height, r=radius, center=true);

    // Cut off the top half of the shape
    translate([-200, 0, -(height/2)])
    cube([400, 400, height]);
}
