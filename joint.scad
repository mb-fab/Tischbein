
include <global.scad>;

module joint()
{
    // center in y-direction
    translate([
        0,
        -material_width/2,
        0
        ])
    {
        // main support structure
        intersection()
        {
            cube([
                joint_x,
                material_width,
                joint_y
                ]);

            scale([
                joint_x,
                material_width,
                joint_y
                ])
            rotate([90, 0, 0])
            cylinder(r=1, h=2, center=true);
        }

        // add hook
        translate([
            material_width,
            0,
            0
            ])
        mirror([0, 0, 1])
        intersection()
        {
            cube([
                joint_x - material_width,
                material_width,
                joint_hook_y
                ]);

            scale([
                joint_x - material_width,
                material_width,
                joint_hook_y
                ])
            rotate([90, 0, 0])
            cylinder(r=1, h=2, center=true);
        }
    }
}

joint();
