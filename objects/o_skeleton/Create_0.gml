event_inherited();		// Extend Lifeform create event

image_speed = .4;		// Idle animation speed

state = "Move";			// Start in the Move state

run_speed = 5;			// Speed of running
roll_speed = 6;			// Speed of rolling


// Dependencies
input = instance_create_layer(0, 0, "Instances", o_input);
