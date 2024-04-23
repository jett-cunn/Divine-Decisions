/// @description Insert description here
// You can write your code in this editor

var _type = async_load[? "type"];

if (_type == "video_start")
{
    displayVideo = true;
}
else if (_type == "video_end")
{
    displayVideo = false;
    video_close();
	room_goto(rm_character)
} 




