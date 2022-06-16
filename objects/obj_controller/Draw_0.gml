if keyboard_check_pressed(ord("R")){
	game_restart()
}
// Title screen
if room == Title{
	if (keyboard_check_pressed(vk_enter) == true){
		room_goto_next() 
		rooms += 1;
	}
	draw_set_alpha(1);
	draw_set_colour(c_maroon);
	draw_set_font(fnt_title);
	draw_text(160,160,"Defeat enemies for points and go right to progress");
	draw_text(160,210,"Controls: Space for jump, Arrow keys to move");
	draw_text(160,260,"Down arrow to sprint, and press c to dash");
	draw_text(360,310,"Press enter to start");
}
// Score tracker
if room != Title or End{
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_score);
	draw_text(32,16,"Score: ");
	draw_text(96,16,score);
}
// End screen
if room == End{
	draw_set_alpha(1);
	draw_set_colour(c_maroon);
	draw_set_font(fnt_title);
	draw_text(450,160,"Congrats");
	draw_text(460,210,"You win");
	draw_text(395,310,"Press r to restart");
	if score >= 125{
		draw_text(360,260,"You got all the points!");
	}else{
		draw_text(325,260,"Try again to get all the points.");
	}
}