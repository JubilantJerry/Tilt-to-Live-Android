var temp, i;
temp = string(argument0);
for (i=0; i< string_length(temp) div 4; i+=1)
{
  temp = string_insert(",",temp,string_length(temp)-4*i-2);
}    
return temp;
