
if room == Title{
	if (keyboard_check_pressed(vk_enter) == true) room_goto_next()
	draw_set_alpha(1);
	draw_set_colour(c_maroon);
	draw_set_font(fnt_title);
	draw_text(160,160,"Defeat enemies for points and go right to progress");
	draw_text(160,210,"Controls: Space for jump, Arrow keys to move");
	draw_text(160,260,"Down arrow to sprint, and press c to dash");
	draw_text(360,310,"Press enter to start");
}
if room != Title{
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_score);
	draw_text(32,16,"Score: ");
	draw_text(96,16,score);
}