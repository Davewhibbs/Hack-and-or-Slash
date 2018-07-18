/// @description Collision with ANY lifeform!!!	

// if the creator is noone or itself or already hit
if creator == noone || creator == other || ds_list_find_index(hit_objects, other) != -1{
	exit;
}

other.hp -= damage;
ds_list_add(hit_objects, other);
instance_destroy();