///scrDrawShinyRect2(range,frameNum,color,alpha,width)

tempX = 32 - i * argument0/(argument1 - 1);

draw_set_alpha(argument3/255);



if(tempX < 0){
    argument4 = tempX + argument4;
    tempX = 0;
}
if(tempX + argument4 > 31){
    argument4 = 32 - tempX;
}

draw_set_color(argument2);
draw_rectangle(32 * i + tempX,0,32 * i + tempX + argument4,31,0);
scrResetFormat();


/*
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
draw_rectangle_colour(32 * i + tempX,0,32 * i + tempX + tempWidth,31,tempColor,tempColor,tempColor,tempColor,0);
draw_set_alpha(1);

scrResetFormat();
