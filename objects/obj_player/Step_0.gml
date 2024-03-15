#region CONTROLES
key_jump = keyboard_check(ord("W"));
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
#endregion
#region MOVIMENTAÇÃO
var _move = key_right - key_left;

hspd = _move * spd;

vspd = vspd + gravidade

if(hspd != 0) image_xscale = sign(hspd);

if(place_meeting(x + hspd, y, obj_floor)){
	while(!place_meeting(x + sign(hspd), y, obj_floor)){
		x += sign(hspd);
	}
	hspd = 0;
}
x += hspd;

if(place_meeting(x, y + vspd, obj_floor)){
	while(!place_meeting(x, y + sign(vspd), obj_floor)){
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;

if place_meeting(x, y+1, obj_floor) and key_jump{
	vspd -= 15;
}
		
#endregion