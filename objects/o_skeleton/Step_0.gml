/// @description State Machine

switch state{
	case "Move":
		#region Move State
			if(input.right){
				image_xscale = 1;
				move_and_collide(run_speed, 0);				// Distance moved per frame 5
				sprite_index = s_skeleton_run;
				image_speed = 0.6;
			}
			else if (input.left and not place_meeting(x - 5, y, o_wall)){
				image_xscale = -1;
				move_and_collide(run_speed, 0);	
				sprite_index = s_skeleton_run;
				image_speed = 0.6;
			}
	
			if not input.right and not input.left{
				sprite_index = s_skeleton_idle;
				image_speed = 0.4;
			}
	
			// Switch to roll state when spacebar is pressed
			if input.roll{
				state = "Roll";
			}
			
			// Switch to Attack 1 state
			if input.attack{
				state = "Attack 1";
			}
			
			#endregion
		break;
		
	case "Roll":
		#region Roll State
			move_and_collide(roll_speed, 0);
			set_state_sprite(s_skeleton_roll, 0.8, 0);
			
			// Transition back to Move
			if animation_end(){
				state = "Move";
			}
		#endregion
		break;
		
	case "Attack 1":
		#region Attack 1 State
			set_state_sprite(s_skeleton_attack_one, 0.7, 0);
			
			// Switch to Attack 1 state
			if input.attack and animation_hit_frame_range(2, 5){
				state = "Attack 2";
			}
			
			// Transition back to Move
			if animation_end(){
				state = "Move";
			}
		#endregion
		break;
		
	case "Attack 2":
		#region Attack 2 State
			set_state_sprite(s_skeleton_attack_two, 0.7, 0);
			
			// Switch to Attack 3 state
			if input.attack 
			   and animation_hit_frame_range(2, 6){
				state = "Attack 3";
			}
			
			// Transition back to Move
			if animation_end(){
				state = "Move";
			}
		#endregion
		break;
		
	case "Attack 3":
		#region Attack 3 State
			set_state_sprite(s_skeleton_attack_three, 0.7, 0);
			
			// Transition back to Move
			if animation_end(){
				state = "Move";
			}
		#endregion
		break;	
}
		
	





