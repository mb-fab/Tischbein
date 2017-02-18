
include <global.scad>;

/**
 * One of the two planes lying in XZ layer
 */
module face_x()
{
    color("red")
    // center
    translate([
        -leg_x/2,
        -material_width/2,
        0
        ])
        cube([
            leg_x,
            material_width,
            leg_z
            ]);
}

face_x();
