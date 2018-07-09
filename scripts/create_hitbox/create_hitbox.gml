///@param x
///@param y
///@param creator 
///@param sprite
///@param knockback
///@param damage
///@param lifespan
///@param x_scale

var x_pos = argument0;
var y_pos = argument1;
var creator = argument2;
var sprite = argument3;
var knockback = argument4;
var lifespan = argument5;
var damage = argument6; 
var x_scale = argument7;


var hitbox = instance_create_layer(x_pos, y_pos, "Instances", o_hitbox);
hitbox.sprite_index = sprite;
hitbox.creator = creator;
hitbox.knockback = knockback;
hitbox.damage = damage;
hitbox.alarm[0] = lifespan;
hitbox.image_xscale = x_scale;
