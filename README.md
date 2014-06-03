FPSound
=======

2D Sound class for use with Flashpunk.

=======
USE:

//Create 2D Sound:
var sound2D:Sound2D = new Sound2D(SOURCE, LOUDNESS, 0, 0);
sound2D.loop = true; //Set sound properties, such as loop.

//Create Audio Source (Sound position relative to entity)
var audioSource:AudioSource = new AudioSource(earEntity, sound2D, X, Y);
add(audioSource);
