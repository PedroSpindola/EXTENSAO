// Determina as coordenadas x e y dentro dos limites da room
var spawn_x = clamp(random(room_width), 0, room_width - 896 ); // Ajuste 32 para a largura do objeto inimigo
var spawn_y = clamp(random(room_height), 0, room_height - 640); // Ajuste 32 para a altura do objeto inimigo

// Cria um novo inimigo dentro dos limites da room
instance_create_layer(spawn_x, spawn_y, "Instances", Obj_inimigo2);

// Configura o alarme para disparar novamente após um certo período (por exemplo, a cada 5 segundos)
alarm[0] = room_speed * 5; // 5 segundos
