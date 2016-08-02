if control_sound.sound_enabled = false then return 0;
//export double FMODUpdate3dPositions()
//You must call this once every step to update system
//In a controller object end step event
//FMODUpdate();
return external_call(global.dll_FMODUpdate);
