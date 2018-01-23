
include <global.scad>;

module bottom()
{
    color("cyan")
    {
        // Base plate
        translate([0, 0, material_width/2])
        cube([
            bottom_x,
            bottom_y,
            material_width
            ], center=true);

        // Noses
        for (y = [
                + bottom_y/2 + bottom_nose_height/2,
                - bottom_y/2 - bottom_nose_height/2
                ])
        {
            translate([
                0,
                y,
                material_width/2
                ])
            cube([
                bottom_nose_width,
                bottom_nose_height,
                material_width
                ], center=true);
        }
    }
}

bottom();
