import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

import gifAnimation.*;

Minim minim;
AudioPlayer player;

Gif myAnimation;

boolean hasRun;

void setup() {
  size(500, 500);
  
  myAnimation = new Gif(this, "meow.gif");
  myAnimation.play();
  
  minim = new Minim(this);
  player = minim.loadFile("meow.wav");
  
  hasRun = false;
}

void draw() {
  background(255);
  if( hasRun ) {
    image(myAnimation, mouseX-(myAnimation.width/4), mouseY-(myAnimation.height/4), myAnimation.width/2, myAnimation.height/2 );
  }
}

void mouseMoved() {
  hasRun = true;
}

void mousePressed() {
  player.rewind();
  player.play();
}
