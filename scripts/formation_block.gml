global.dirList = ds_list_create()
ds_list_add(global.dirList, "up")
ds_list_add(global.dirList, "down")
ds_list_add(global.dirList, "left")
ds_list_add(global.dirList, "right")
repeat (choose(2,3,3)) {
       instance_create(0,0,enemy_block)
}

ds_list_destroy(global.dirList)
