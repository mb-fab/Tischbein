
// all measures in mm

$fn = 100;
nothing = 0.01;

material_x = 510;
material_y = 370;
material_width = 8;

leg_x = 450;
leg_z = 950;

// about hoch much the faces in Y direction are inset
face_y_inset = 30;

// how far the joint extends planarly from the face
joint_x = 30;

// Assume same material measure as for X plane
leg_y = leg_x - joint_x*2;

// the lateral width of the joint
joint_y = 50;
// how far down the hook extends
joint_hook_y = 50;

joint_total_height = joint_y + joint_hook_y;

num_joints = 4;
q = leg_z/(num_joints+1);
joint_height = [q, 2*q, 3*q, 4*q];

nose_width = 100;
nose_z = material_width;

// how far apart from on another to project the parts
projection_spacing = 1;
