
var spawn_x = clamp(random(room_width), 600, room_width - 1406); 
var spawn_y = clamp(random(room_height), 80, room_height - 937); 


instance_create_layer(spawn_x, spawn_y, "Instances", Obj_inimigo2);


alarm[0] = room_speed * 5;
