var tempRange = 32 + objSetSpikeEffect.setWidth.value;
var tempFrameNum = objSetSpikeEffect.numOfFrames.value;

tempX = 32 - i * tempRange/(tempFrameNum - 1);

var tempColor = objSetSpikeEffect.color.color;
var tempAlpha = objSetSpikeEffect.setTrans.value;
var tempWidth = objSetSpikeEffect.setWidth.value;
draw_set_alpha(tempAlpha/255);
if(tempX < 0){
    tempWidth = tempX + tempWidth;
    tempX = 0;
}
if(tempX + tempWidth > 31){
    tempWidth = 32 - tempX;
}
draw_set_color(tempColor);
draw_rectangle_colour(tempX,0,tempX + tempWidth,31,tempColor,tempColor,tempColor,tempColor,0);
draw_set_alpha(1);

scrResetFormat();
