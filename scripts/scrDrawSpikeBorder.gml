if(objSetSpriteBorder.currentStyle == 1){
    var color1,color2;
    draw_set_blend_mode(bm_normal)
    
    var drawSpikeBorderColor1 = objSetSpriteBorder.color1.color;
    var drawSpikeBorderColor2 = objSetSpriteBorder.color2.color;
    var drawSpikeBorderIndex = 0;
    //drwa the "inside" of the border
    for (drawSpikeBorderIndex = objSetSpriteBorder.currentWidth; drawSpikeBorderIndex > 0; drawSpikeBorderIndex -= 1){
        var drawSpikeBorderScale = (32 - drawSpikeBorderIndex)/32;
        var drawSpikeBorderTrans = (objSetSpriteBorder.currentTransparency)/255;
        repeat(drawSpikeBorderIndex){
            draw_sprite_ext(sprSpikeBorder,0,16,16,drawSpikeBorderScale,drawSpikeBorderScale,0,drawSpikeBorderColor2,drawSpikeBorderTrans);
        }
    }
    draw_sprite_ext(sprSpikeBorder,0,16,16,1,1,0,drawSpikeBorderColor1,(objSetSpriteBorder.currentTransparency)/255);
    draw_sprite_ext(sprSpikeBorder,0,16,16,(32 - objSetSpriteBorder.currentWidth)/32,(32 - objSetSpriteBorder.currentWidth)/32,0,drawSpikeBorderColor1,(objSetSpriteBorder.currentTransparency)/255);
    
    scrResetFormat()
}
