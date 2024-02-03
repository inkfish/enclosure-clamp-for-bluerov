// Flange Clamp for the Blue Robotics Watertight Enclosure, 3" (75mm) series
//
// Based on the WTE3-M-CLAMP-R1 model by Blue Robotics:
// https://bluerobotics.com/store/watertight-enclosures/enclosure-clamp/
//
// OpenSCAD model by Ryan Govostes.
// License: CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/)


radius = 46.04;  // Tube OD - aluminum: 86.5 +/- 0.3mm, acrylic: 88.9 +/- 0.7mm
thickness = 4.00;

width = 115.60;
depth = 49.50;
height = 30.00;

base_width = 45.00;
base_hole_diameter = 3.30;  // M4x14
base_hole_depth = 5.50;

flange_hole_diameter = 2.50;  // M3x12


include <clamp.scad>;
