/// @description Insert description here
// You can write your code in this editor

var videoData = video_draw();
var videoStatus = videoData[0]
if videoStatus == 0 {
	if displayVideo = true {
		draw_surface(videoData[1],0,0)
		if displayVideo != displayVideoPast {
			audio_stop_all()
		}
	}
	else if displayVideo = false {
		video_close()
		//obj_soundController.alarm[0] = 1
	}
}





