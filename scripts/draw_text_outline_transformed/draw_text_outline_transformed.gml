/// @function draw_text_outline_transformed(string,x,y,color1,alpha1,color2,alpha2,xscale,yscale,angle)
function draw_text_outline_transformed(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {

	var str = argument2
	var xx = argument0
	var yy = argument1
	var col1 = argument3
	var alpha1 = argument4
	var col2 = argument5
	var alpha2 = argument6
	var xscale = argument7
	var yscale = argument8
	var angle = argument9

	draw_set_colour(col2)
	draw_set_alpha(alpha2)
	draw_text_transformed(xx-1,yy,str,xscale,yscale,angle)
	draw_text_transformed(xx+1,yy,str,xscale,yscale,angle)
	draw_text_transformed(xx,yy-1,str,xscale,yscale,angle)
	draw_text_transformed(xx,yy+1,str,xscale,yscale,angle)

	draw_set_colour(col1)
	draw_set_alpha(alpha1)
	draw_text_transformed(xx,yy,str,xscale,yscale,angle)


}
