global.roomid = room;

if !global.movement { exit; }

global.l = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.r = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.u = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
//global.d = keyboard_check(vk_down) || keyboard_check(ord("S"));

global.jump = keyboard_check_pressed(vk_space) || global.u;