//Learning how to learn.
//What is an Reference? API? Documenatation? Library?
//Stack overflow
size(500, 500);

noStroke();

background( 255 );

fill( 236, 46, 46 );

// challenge 1
// reproduce this image
arc(50, 50, 80, 80, 0, PI+QUARTER_PI, PIE);

// challenge 2
// reproduce this sketch
PImage img = loadImage("cat.png");
image( img, 0, 0 );

// challenge 3 - the ultimate challenge
// what about a gif?
// i hope no one can do this...
// http://gifki.net/images/full/meow.gif
