function Player(){
key_jump = keyboard_check(ord("W"));
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
//key_down = keyboard_check(ord("S"));
var _move = key_right - key_left !=0;

if(_move){

move_dir= point_direction(0,0, key_right - key_left,0)
move_spd = Approach(move_spd,move_spd_max,acc)

}else{

move_spd = Approach(move_spd,0,dcc)

}
hspd = lengthdir_x(move_spd, move_dir)

if place_meeting(x, y+1, obj_chao) and key_jump{
	vspd -= 20;
}

}