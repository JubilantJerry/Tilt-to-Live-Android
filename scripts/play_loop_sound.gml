if control_sound.sound_enabled = false then return 0;
var sound;
sound = audio_play_sound(argument[0], 3, true)
return sound
