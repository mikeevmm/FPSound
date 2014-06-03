FPSound
=======

2D Sound class for use with Flashpunk.

=======
USE:
<br>
//Create 2D Sound:<br>
var sound2D:Sound2D = new Sound2D(SOURCE, LOUDNESS, 0, 0);<br>
sound2D.loop = true; //Set sound properties, such as loop.<br>
<br>
//Create Audio Source (Sound position relative to entity)<br>
var audioSource:AudioSource = new AudioSource(earEntity, sound2D, X, Y);<br>
add(audioSource);
