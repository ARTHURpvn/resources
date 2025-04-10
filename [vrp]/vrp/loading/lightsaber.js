var playlist = [
	{
		"song": "",
		"album": "",
		"artist": "",
		
		"mp3": "http://localhost/musica/musica.mp3"
	    
		
	},

]

var rot = 0;
var duration;
var playPercent;
var bufferPercent;
var currentSong = 0;
var arm_rotate_timer;

var arm = document.getElementById("arm");
var next = document.getElementById("next");
var song = document.getElementById("song");
var timer = document.getElementById("timer");
var music = document.getElementById("music");
var volume = document.getElementById("volume");
var playButton = document.getElementById("play");
var timeline = document.getElementById("slider");
var playhead = document.getElementById("elapsed");
var previous = document.getElementById("previous");
var pauseButton = document.getElementById("pause");
var bufferhead = document.getElementById("buffered");
var timelineWidth = timeline.offsetWidth - playhead.offsetWidth;
var visablevolume = document.getElementsByClassName("volume")[0];

music.addEventListener("ended", _next, false);
music.addEventListener("timeupdate", ({ target }) => {
	if (target.duration) {
		playPercent = timelineWidth * (target.currentTime / target.duration);
		playhead.style.width = playPercent + "px";
		timer.innerHTML = formatSecondsAsTime(music.currentTime.toString());
	}
}, false);
load();

function load() {
	song.innerHTML = playlist[Math.floor(Math.random() * playlist.length)]['song'];
	song.title = playlist[Math.floor(Math.random() * playlist.length)]['song'];
	music.innerHTML = '<source src="' + playlist[Math.floor(Math.random() * playlist.length)]['mp3'] + '" type="audio/ogg">';
	currentSong = Math.floor(Math.random() * playlist.length)

	music.load();
	setTimeout(() => music.play(), 1000)
}

function reset() {
	currentSong = 0
	rotate_reset = setInterval(function () {
		if (rot == 0) {
			clearTimeout(rotate_reset);
		}
	}, 1);
	fireEvent(pauseButton, 'click');
	playhead.style.width = "0px";
	bufferhead.style.width = "0px";
	timer.innerHTML = "0:00";
	music.innerHTML = ""
	song.innerHTML = playlist[0]['song'];
	song.title = playlist[0]['song'];
	music.innerHTML = '<source src="' + playlist[0].mp3 + '" type="audio/ogg">';
	music.load();
}

function formatSecondsAsTime(secs, format) {
	var hr = Math.floor(secs / 3600);
	var min = Math.floor((secs - (hr * 3600)) / 60);
	var sec = Math.floor(secs - (hr * 3600) - (min * 60));
	if (sec < 10) {
		sec = "0" + sec;
	}
	return min + ':' + sec;
}

function fireEvent(el, etype) {
	if (el.fireEvent) {
		el.fireEvent('on' + etype);
	} else {
		var evObj = document.createEvent('Events');
		evObj.initEvent(etype, true, false);
		el.dispatchEvent(evObj);
	}
}

function _next() {
	fireEvent(next, 'click');
}

playButton.onclick = function () {
	music.play();
}

pauseButton.onclick = function () {
	music.pause();
}

music.addEventListener("play", function () {
	$('#play').hide();
	$('#pause').show();
	rotate_timer = setInterval(function () {
		if (!music.paused && !music.ended && 0 < music.currentTime) {
		}
	}, 10);
	arm_rotate_timer = setInterval(function () {
		if (!music.paused && !music.ended && 0 < music.currentTime) {
			if (arm.style.transition != "") {
				setTimeout(function () {
					arm.style.transition = "";
				}, 1000);
			}
		}
	}, 1000);
}, false);

music.addEventListener("pause", function () {
	$('#play').show();
	$('#pause').hide();
	arm.setAttribute("style", "transition: transform 800ms;");
	arm.style.transform = 'rotate(-45deg)';
	clearTimeout(rotate_timer);
	clearTimeout(arm_rotate_timer);
}, false);

next.onclick = function () {
	arm.setAttribute("style", "transition: transform 800ms;");
	arm.style.transform = 'rotate(-45deg)';
	clearTimeout(rotate_timer);
	clearTimeout(arm_rotate_timer);
	playhead.style.width = "0px";
	bufferhead.style.width = "0px";
	timer.innerHTML = "0:00";
	music.innerHTML = "";
	arm.style.transform = 'rotate(-45deg)';
	armrot = -45;
	if ((currentSong - 1) == playlist.length) {
		reset()
	} else {
		currentSong++;
		music.innerHTML = '<source src="' + playlist[currentSong]['mp3'] + '" type="audio/ogg">';
		song.innerHTML = playlist[currentSong]['song'];
		song.title = playlist[currentSong]['song'];
	}
	music.load();
	duration = music.duration;
	music.play();
}

previous.onclick = function () {
	arm.setAttribute("style", "transition: transform 800ms;");
	arm.style.transform = 'rotate(-45deg)';
	clearTimeout(rotate_timer);
	clearTimeout(arm_rotate_timer);
	playhead.style.width = "0px";
	bufferhead.style.width = "0px";
	timer.innerHTML = "0:00";
	music.innerHTML = "";
	arm.style.transform = 'rotate(-45deg)';
	armrot = -45;
	if (currentSong == -1) {
		currentSong = playlist.length - 1;
		music.innerHTML = '<source src="' + playlist[currentSong]['mp3'] + '" type="audio/ogg">';
	} else {
		currentSong--;
		music.innerHTML = '<source src="' + playlist[currentSong]['mp3'] + '" type="audio/ogg">';
	}
	song.innerHTML = playlist[currentSong]['song'];
	song.title = playlist[currentSong]['song'];
	music.load();
	duration = music.duration;
	music.play();
}

volume.oninput = function () {
	music.volume = volume.value;
	visablevolume.style.width = (80 - 11) * volume.value + "px";
}

music.addEventListener("canplay", function () {
	duration = music.duration;
}, false);

const bd = document.body, cur = document.getElementById("fare");
bd.addEventListener("mousemove", function (n) {
	(cur.style.left = n.clientX + "px"), (cur.style.top = n.clientY + "px")
})
