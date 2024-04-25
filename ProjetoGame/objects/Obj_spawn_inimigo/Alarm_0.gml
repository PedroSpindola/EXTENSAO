
var spawn_x = clamp(random(room_width), 0, room_width - 896 ); 
var spawn_y = clamp(random(room_height), 0, room_height - 640); 


instance_create_layer(spawn_x, spawn_y, "Instances", Obj_inimigo2);


alarm[0] = room_speed * 5;
