
include <global.scad>;

/**
 * One of the two planes lying in YZ layer
 */
module face_y()
{
    color("green")
    // center
    translate([
        -material_width/2,
        -(leg_y - material_width)/2,
        0
        ])
        cube([
            material_width,
            leg_y - material_width,
            leg_z
            ]);
}

face_y();

