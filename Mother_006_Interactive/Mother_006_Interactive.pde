import gifAnimation.*;

Gif myAnimation;

boolean hasRun;

void setup() {
  size(500, 500);
  
  myAnimation = new Gif(this, "meow.gif");
  myAnimation.play();
  
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

// challenge center the image on the mouse
// make the image smaller
