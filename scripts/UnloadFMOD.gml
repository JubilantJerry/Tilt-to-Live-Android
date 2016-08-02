if control_sound.sound_enabled = false then return 0;
//This frees the FMOD dll
//returns nothing

//Example calling
//When game ends
//UnloadFMOD();

external_free("GMFMODSimple.dll");
