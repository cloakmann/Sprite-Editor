///scrDrawSpikeBorder2(x,y,color1,color2,width,trans);

//argument0 - x: top left x(not center x!!)
//argument1 - y: top left y(not center x!!)
//argument2 - color1: outside border  color
//argument3 - color2: inside border color
//argument4 - width: border width
//argument5 - trans: border transparency
if(objSetSpriteBorder.currentStyle == 1){
    var drawSpikeBorderIndex = 0;
    var drawSpikeBorderScale = 0;
    for (drawSpikeBorderIndex = argument4; drawSpikeBorderIndex > 0; drawSpikeBorderIndex -= 1){
        drawSpikeBorderScale = (32 - drawSpikeBorderIndex)/32;
        repeat(drawSpikeBorderIndex){
            draw_sprite_ext(sprSpikeBorder,0,argument0 + 16, argument1 + 16, drawSpikeBorderScale,drawSpikeBorderScale,0,argument3,argument5);
        }
    }
    draw_sprite_ext(sprSpikeBorder,0,argument0 + 16, argument1 + 16,1,1,0,argument2,(argument5)/255);
    draw_sprite_ext(sprSpikeBorder,0,argument0 + 16, argument1 + 16,(32 - argument4)/32,(32 - argument4)/32,0,argument2,(argument5)/255);
    
    /*
    var color1,color2;
    draw_set_blend_mode(bm_normal)
    
    var drawSpikeBorderColor1 = objSetSpriteBorder.color1.color;
    var drawSpikeBorderColor2 = objSetSpriteBorder.color2.color;
    var drawSpikeBorderIndex = 0;
    //draw the "inside" of the border
    for (drawSpikeBorderIndex = objSetSpriteBorder.currentWidth; drawSpikeBorderIndex > 0; drawSpikeBorderIndex -= 1){
        var drawSpikeBorderScale = (32 - drawSpikeBorderIndex)/32;
        var drawSpikeBorderTrans = (objSetSpriteBorder.currentTransparency)/255;
        repeat(drawSpikeBorderIndex){
            draw_sprite_ext(sprSpikeBorder,0,32 * i + 16,16,drawSpikeBorderScale,drawSpikeBorderScale,0,drawSpikeBorderColor2,drawSpikeBorderTrans);
        }
    }
    draw_sprite_ext(sprSpikeBorder,0,16,16,1,1,0,drawSpikeBorderColor1,(objSetSpriteBorder.currentTransparency)/255);
    draw_sprite_ext(sprSpikeBorder,0,16,16,(32 - objSetSpriteBorder.currentWidth)/32,(32 - objSetSpriteBorder.currentWidth)/32,0,drawSpikeBorderColor1,(objSetSpriteBorder.currentTransparency)/255);
    */
    scrResetFormat()
}
