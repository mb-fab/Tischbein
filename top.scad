
include <global.scad>;

module top()
{
    color("blue")
    difference()
    {
        translate([
            0,
            0,
            material_width/2
            ])
        cube([
            top_x,
            top_y,
            material_width
            ], center=true);

        for (x=[
                -leg_x/2 + face_y_inset,
                +leg_x/2 - face_y_inset,
                ])
        {
            translate([x, 0, 0])
            cube([
                material_width + nothing,
                nose_width,
                material_width*3
                ], center=true);
        }

        for (y=[
                +leg_y/2,
                -leg_y/2
                ])
        {
            translate([0, y, 0])
            cube([
                nose_width,
                material_width + nothing,
                material_width*3
                ], center=true);
        }
    }
}

top();
