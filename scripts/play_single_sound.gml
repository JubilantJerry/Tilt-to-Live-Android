if control_sound.sound_enabled = false then return 0;
var sound;
if argument[1] = 1 and global.deathsfxEnabled = false then return 0 //Unimportant sounds (enemy death sounds)
if argument[1] = 2 and global.sfxEnabled = false then return 0 //More important sound effects
sound = play_sound(argument[0])
if argument[1] = 1 then global.deathsfxEnabled = false
if argument[1] = 2 then global.sfxEnabled = false
if argument[0] = gravwell_suck then control_sound.alarm[0] += 2
return sound
