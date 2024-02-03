// Flange Clamp for the Blue Robotics Watertight Enclosure
//
// This document is a parametric design that does not include dimensions.
// Please use one of the accompanying files, e.g., enclosure-clamp-3in.scad.
//
// Based on the WTE3-M-CLAMP-R1 model by Blue Robotics:
// https://bluerobotics.com/store/watertight-enclosures/enclosure-clamp/
//
// OpenSCAD model by Ryan Govostes.
// License: CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/)


fillet_radius = 1.00;


// The circle is centered 1.00 mm above the X axis. This detail is not
// captured in the mechanical drawing but has been confirmed by Blue Robotics:
//
// https://discuss.bluerobotics.com/t/small-offset-in-mounting-clamp/15944/2
circle_y_offset = 1.00;


$fn = 64;


translate([0, 0, -(height/2)])
linear_extrude(height) {
    difference() {
        union() {
            hull() {
                translate([0, circle_y_offset])
                circle(r=(radius + thickness));

                translate([-(base_width/2), -depth])
                square(size=[base_width, 1]);
            }

            translate([-(width/2), -thickness])
            square([width, thickness]);
        }

        translate([0, circle_y_offset])
        circle(r=radius);

        // Cut off the top half of the shape
        translate([-200, 0])
        square([400, 400]);
    }
}

// TODO: Flange fillets
// TODO: Mounting and flange holes
