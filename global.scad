
// all measures in mm

material_x = 800;
material_y = 205;
material_width = 5.8;

leg_x = 60;
leg_y = 60;
leg_z = 390;

// about hoch much the faces in Y direction are inset
face_y_inset = 15;

// how far the joint extends planarly from the face
joint_x = 12;
// the lateral width of the joint
joint_y = 20;
// how far down the hook extends
joint_hook_y = 25;

joint_total_height = joint_y + joint_hook_y;

num_joints = 3;
q = leg_z/4;
joint_height = [q, 2*q, 3*q];

// how far apart from on another to project the parts
projection_spacing = 1;

// rendering quality (face number)
$fn = 50;
