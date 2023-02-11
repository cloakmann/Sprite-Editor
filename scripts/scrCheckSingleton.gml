//if (instance_number(object_index) > 1)instance_destroy();
if (instance_place(x,y,object_index) != noone){
    show_message("duplicate at " + string(x) + " " + string(y))
    instance_destroy();
}
