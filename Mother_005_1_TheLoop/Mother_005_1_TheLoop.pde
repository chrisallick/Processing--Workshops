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
  if( hasRun ) {
    image(myAnimation, 0, 0 );
  } else {
    hasRun = true;
    background( 255 );
  }
}
