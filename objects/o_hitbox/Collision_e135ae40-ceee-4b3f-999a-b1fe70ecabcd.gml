/// @description Collision with ANY lifeform!!!	

// if the creator is noone or itself
if creator == noone || creator == other{
	exit;
}


instance_destroy(other);
