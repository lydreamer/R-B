if (cl == other.cl || other.cl ==MIX_ )&& type_ == MONSTER{ //if the object's color is the same as the plain
	var x_test = 0;
	var y_test = 0;
	while(1){
		x_test += 1;
		if(!place_meeting(x - x_test,y,other)){ // test the direction of collision
			while(place_meeting(x,y,other)) x -= 1;
			hspeed = -hspeed;
			break;
		}else if(!place_meeting(x + x_test-1,y,other)){
			while(place_meeting(x,y,other)) x += 1;
			hspeed = -hspeed;
			break;
		}
		y_test += 1;
		if(!place_meeting(x ,y- y_test, other)){
			while(place_meeting(x,y,other)) y -= 1;
			vspeed = -vspeed;	
			break;
		}else if(!place_meeting(x ,y + y_test-1, other)){
			while(place_meeting(x,y,other)) y += 1;
			vspeed = -vspeed;	
			break;
		}
	}
}else if(other.cl !=MIX_ && cl!=other.cl){
	instance_destroy();	
}