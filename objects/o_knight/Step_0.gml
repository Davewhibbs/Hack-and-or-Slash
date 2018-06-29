switch (state){
	case "Chase":
		#region Chase State
		set_state_sprite(s_knight_walk, .4, 0);
		
		// exit out of the chase state
		if not instance_exists(o_skeleton) break;
		
		// Turn to always face skeleton
		image_xscale = sign(o_skeleton.x - x);
		if image_xscale == 0 { image_xscale = 1; } // Never have a direction of 0
		
		// Get distance to player
		var distance_to_player = point_distance(x, y, o_skeleton.x, o_skeleton.y);
		
		// Attack the player when close enough
		if distance_to_player <= attack_range 
		{
			state = "Attack";
		}else
		{
			move_and_collide(chase_speed, 0);
		}
		break;
		#endregion
		
	case "Attack":
		#region Attack State
		set_state_sprite(s_knight_attack, .6, 0); 
		break;
		#endregion
}