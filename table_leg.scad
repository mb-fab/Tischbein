
include <global.scad>;
use <joint.scad>;
use <face_x.scad>;
use <face_y.scad>;

translate([
    0,
    -leg_y/2,
    0
    ])
    face_x();

translate([
    0,
    +leg_y/2,
    0
    ])
    face_x();

face_y();
