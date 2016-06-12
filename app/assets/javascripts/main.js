var audioContext = null;
var meter = null;
var canvasContext = null;
var WIDTH=500;
var HEIGHT=50;
var rafID = null;
var contAlert=0;
var cont=0;
var maxCant=3;

window.onload = function() {

    // grab our canvas
	canvasContext = document.getElementById( "meter" ).getContext("2d");
	
    // monkeypatch Web Audio
    window.AudioContext = window.AudioContext || window.webkitAudioContext;
	
    // grab an audio context
    audioContext = new AudioContext();

    // Attempt to get audio input
    try {
        // monkeypatch getUserMedia
        navigator.getUserMedia = 
        	navigator.getUserMedia ||
        	navigator.webkitGetUserMedia ||
        	navigator.mozGetUserMedia;

        // ask for an audio input
        navigator.getUserMedia(
        {
            "audio": {
                "mandatory": {
                    "googEchoCancellation": "false",
                    "googAutoGainControl": "false",
                    "googNoiseSuppression": "false",
                    "googHighpassFilter": "false"
                },
                "optional": []
            },
        }, gotStream, didntGetStream);
    } catch (e) {
        alert('getUserMedia threw exception :' + e);
    }

}


function didntGetStream() {
    alert('Stream generation failed.');
}

var mediaStreamSource = null;

function gotStream(stream) {
    // Create an AudioNode from the stream.
    mediaStreamSource = audioContext.createMediaStreamSource(stream);

    // Create a new volume meter and connect it.
    meter = createAudioMeter(audioContext);
    mediaStreamSource.connect(meter);

    // kick off the visual updating
    drawLoop();
}

function drawLoop( time ) {
    // clear the background
    canvasContext.clearRect(0,0,WIDTH,HEIGHT);

    // check if we're currently clipping
    if (meter.checkClipping()){
        canvasContext.fillStyle = "red";
        cont++;
    }else{
        canvasContext.fillStyle = "green";
        
    }
    if (cont>=100){
        cont=0;
        if (contAlert>=0){
            contAlert++;
            document.getElementById("v_alert").innerHTML="Cantidad de alertas actual: "+contAlert
            if (contAlert != maxCant){
                tempAlert("\nPor favor cuide su volumen!\n\n Dentro de "+(maxCant-contAlert)+" alertas más todo se apagará!",10000);
            }
        }
    }
    if (contAlert >= maxCant){
        contAlert=-1;
        alert("WHY!!! MEOW!!! Q.Q!!! T.T!!!")
    }
    // draw a bar based on the current volume
    canvasContext.fillRect(0, 0, meter.volume*WIDTH*1.4, HEIGHT);

    // set up the next visual callback
    rafID = window.requestAnimationFrame( drawLoop );
}

function tempAlert(msg,duration){
    var el = document.createElement("div");
    el.setAttribute("style","position:absolute;top:20%;left:40%;background-color:white;width:500px;height:500px");
    el.innerHTML = "<h1>"+ msg + "</h1>";
    setTimeout(function(){
        el.parentNode.removeChild(el);
    },duration);
    document.body.appendChild(el);
}