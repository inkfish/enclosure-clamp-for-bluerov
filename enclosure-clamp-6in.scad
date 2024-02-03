// Flange Clamp for the Blue Robotics Watertight Enclosure, 6" series
//
// Based on the WTE4-M-CLAMP-R1 model by Blue Robotics:
// https://bluerobotics.com/store/watertight-enclosures/enclosure-clamp/
//
// OpenSCAD model by Ryan Govostes.
// License: CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/)

// Note: Blue Robotics does not provide clamps for their 6" series enclosures.
// The dimensions below are extrapolated from their other clamps, but are not
// guaranteed to be accurate.

tube_od = 165.10;
tape_thickness = 1.59;  // 1/16"
radius = tube_od/2 + tape_thickness;

thickness = 4.00;
height = 30.00;

// Flange measurements same as 4" series
flange_width = 11.81;
flange_hole_diameter = 2.50;  // M3x12

// Base measurements same as 4" series
base_width = 45.00;
base_hole_diameter = 3.30;  // M4x14
base_hole_depth = 5.50;

// Center the circle 1.00 mm above the X axis, like the 4" model
circle_y_offset = 1.00;

// Calculate the width of the mouth taking into account the off-center circle,
// then calculate the overall width.
mouth_width = 2*sqrt(pow(radius, 2) - pow(circle_y_offset, 2));
width = mouth_width + 2*flange_width;

// Depth is slightly greater than having the base be tangent to the rim.
// The offset below is from the 4" series; the 3" series is 1mm less.
depth = (radius - circle_y_offset) + thickness + 1.46;


include <clamp.scad>;
