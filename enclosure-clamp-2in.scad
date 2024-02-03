// Flange Clamp for the Blue Robotics Watertight Enclosure, 2" (50mm) series
//
// Based on the WTE2_CLAMP_BR-102474_PUBLIC model by Blue Robotics:
// https://bluerobotics.com/store/watertight-enclosures/enclosure-clamp/
//
// OpenSCAD model by Ryan Govostes.
// License: CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/)

// Note: The 2" series clamp is of slightly different design than the 3" and 4"
// series, featuring a wider 4.5mm diameter hole on one flange, and more
// fillets. These features are not reproduced on this model.


radius = 31.04;  // Tube OD - aluminum: 58.0 +/- 0.2mm, acrylic: 58.0 +/- 0.5mm
thickness = 3.00;

width = 86.40;
depth = 36.00;
height = 16.70;

base_width = 26.10;
base_hole_diameter = 3.30;  // M4x10
base_hole_depth = 4.50;

flange_hole_diameter = 3.30;  // M4x10


include <clamp.scad>;
