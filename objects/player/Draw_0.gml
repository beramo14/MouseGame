draw_self();
draw_set_font(Chapter_Font);
if(global.devmode==false)
{
	draw_text_color(50,50,"CHAPTER : "+this_chapter(),c_gray,c_dkgray,c_gray,c_dkgray,1);
}