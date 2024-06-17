// Verificar se o jogador está se movendo para a direita ou para a esquerda e ajustar a escala da imagem
if (hspd != 0) {
    image_xscale = sign(hspd);
}

// Verificar colisões horizontais e ajustar a posição do jogador
if (place_meeting(x + hspd, y, obj_chao)) {
    while (!place_meeting(x + sign(hspd), y, obj_chao)) {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

// Verificar colisões verticais e ajustar a posição do jogador
if (place_meeting(x, y + vspd, obj_chao)) {
    while (!place_meeting(x, y + sign(vspd), obj_chao)) {
        y += sign(vspd);
    }
   vspd = 0;
}
y += vspd;

if (vida <= 0) {
PlayerDead();
}
