/*if control_sound.sound_enabled = false then return 0;
globalvar soundNameList, soundList;
var index;
index = 0
global.soundNameList = ds_list_create()

ds_list_add(global.soundNameList, award_unlock)
ds_list_add(global.soundNameList, blackholedeath)
ds_list_add(global.soundNameList, blackholein)
ds_list_add(global.soundNameList, blackholeout)
ds_list_add(global.soundNameList, blastwave_charge)
ds_list_add(global.soundNameList, blastwave_fire)
ds_list_add(global.soundNameList, blastwave_flight)
ds_list_add(global.soundNameList, bubbleexplode)
ds_list_add(global.soundNameList, bubbleshield)
ds_list_add(global.soundNameList, bubbleshield_on)
ds_list_add(global.soundNameList, burnicadeBoost)
ds_list_add(global.soundNameList, burnicadecharge)
ds_list_add(global.soundNameList, burnicadeflames)
ds_list_add(global.soundNameList, clusterenemydeath1)
ds_list_add(global.soundNameList, cluster_exp1)
ds_list_add(global.soundNameList, cluster_exp2)
ds_list_add(global.soundNameList, cluster_flight)
ds_list_add(global.soundNameList, cluster_pickup)
ds_list_add(global.soundNameList, combokill)
ds_list_add(global.soundNameList, combo_powerdown)
ds_list_add(global.soundNameList, countdown)
ds_list_add(global.soundNameList, enemyblastdeath)
ds_list_add(global.soundNameList, enemybubbledeath)
ds_list_add(global.soundNameList, enemygravshockdeath)
ds_list_add(global.soundNameList, gravshock_exlode)
ds_list_add(global.soundNameList, gravwell_ambience)
ds_list_add(global.soundNameList, gravwell_pickup)
ds_list_add(global.soundNameList, gravwell_suck)
ds_list_add(global.soundNameList, gravwell_timeout)
ds_list_add(global.soundNameList, ice_blast)
ds_list_add(global.soundNameList, ice_enemy_freeze)
ds_list_add(global.soundNameList, ice_pickup)
ds_list_add(global.soundNameList, ice_recede)
ds_list_add(global.soundNameList, ice_shatter_1)
ds_list_add(global.soundNameList, ice_shatter_2)
ds_list_add(global.soundNameList, lightning_pickup)
ds_list_add(global.soundNameList, nuke_blast)
ds_list_add(global.soundNameList, nuke_enemy_death)
ds_list_add(global.soundNameList, nuke_pickup)
ds_list_add(global.soundNameList, pause)
ds_list_add(global.soundNameList, player_death)
ds_list_add(global.soundNameList, player_pop)
ds_list_add(global.soundNameList, pop)
ds_list_add(global.soundNameList, shock1)
ds_list_add(global.soundNameList, shock2)
ds_list_add(global.soundNameList, spike_death)
ds_list_add(global.soundNameList, spike_draw)
ds_list_add(global.soundNameList, spike_engine)
ds_list_add(global.soundNameList, spike_exit)
ds_list_add(global.soundNameList, spike_pickup)
ds_list_add(global.soundNameList, spike_sputter)
ds_list_add(global.soundNameList, ticktock)
ds_list_add(global.soundNameList, unlock_breakchain)
ds_list_add(global.soundNameList, whistle)
