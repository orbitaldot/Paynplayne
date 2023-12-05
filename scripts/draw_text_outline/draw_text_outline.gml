/// @function draw_text_outline_transformed(string,x,y,color1,alpha1,color2,alpha2,xscale,yscale,angle)

var xx = argument0
var yy = argument1
var str = argument2
var col1 = argument3
var alpha1 = argument4
var col2 = argument5
var alpha2 = argument6

draw_set_colour(col2)
draw_set_alpha(alpha2)
draw_text(xx-1,yy,str)
draw_text(xx+1,yy,str)
draw_text(xx,yy-1,str)
draw_text(xx,yy+1,str)

draw_set_colour(col1)
draw_set_alpha(alpha1)
draw_text(xx,yy,str)