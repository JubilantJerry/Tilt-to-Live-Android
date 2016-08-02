//converts time in seconds to mm:ss format
var temp, mins, tensecs;
mins=argument0/60 //converted into minutes
tensecs=6*(mins-floor(mins)) //converted into groups of 10 seconds
temp=string(floor(mins)) + ":" + string(floor(tensecs)) + string(floor(10*(tensecs-floor(tensecs))))

return temp;
