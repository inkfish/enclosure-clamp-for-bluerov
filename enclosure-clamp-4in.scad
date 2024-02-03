// Flange Clamp for the Blue Robotics Watertight Enclosure, 4" (100mm) series
//
// Based on the WTE4-M-CLAMP-R1 model by Blue Robotics:
// https://bluerobotics.com/store/watertight-enclosures/enclosure-clamp/
//
// OpenSCAD model by Ryan Govostes.
// License: CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/)


radius = 58.74;  // Tube OD - aluminum: 112.0 +/- 0.3mm, acrylic: 114.3 +/- 0.8mm
thickness = 4.00;

width = 141.10;
depth = 63.20;
height = 30.00;

base_width = 45.00;
base_hole_diameter = 3.30;  // M4x14
base_hole_depth = 5.50;

flange_hole_diameter = 2.50;  // M3x12


// The circle is centered 1.00 mm above the X axis. This detail is not
// captured in the mechanical drawing but has been confirmed by Blue Robotics:
//
// https://discuss.bluerobotics.com/t/small-offset-in-mounting-clamp/15944/2
circle_y_offset = 1.00;


include <clamp.scad>;
