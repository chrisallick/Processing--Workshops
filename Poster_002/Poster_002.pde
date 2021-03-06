import ijeoma.motion.*;
import ijeoma.motion.tween.*; 

PFont font;

color bgs[] = {
  color(233,175,50),
  color(45,70,145),
  color(209,77,30),
  color(60,96,22),
  color(85,30,86),
  color(198,22,28)
};

int num_x = 5;
int num_y = 6;
int padding = 10;
int offset = 10;

int w, h;

ArrayList<Block> blocks;
ArrayList<Circle> circles;

void setup() {
  size( 600, 800 );
  
  w = (width - (num_x*padding) - offset) / num_x;
  h = w;
  
  font = loadFont("AkzidenzGrotesk-Bold-100.vlw");
  
  ellipseMode( CORNER );
  smooth();
  noStroke();

  blocks = new ArrayList<Block>();
  circles = new ArrayList<Circle>();
  
  for( int r = 0; r < 5; r++ ) {
    for( int c = 0; c < 6; c++ ) {
      int x = r*(w)+(padding*r)+offset;
      int y = c*(w)+(padding*c)+offset;
      blocks.add(new Block(this, x, y, w, h));
      circles.add(new Circle(this, x, y, w, h));
    }
  }
}

void draw() {
  background( 236,234,235 );

  for (Block block : blocks) {
    block.draw();
  }
  
  for (Circle circle : circles) {
    circle.draw();
  }
  
//  textFont( font, 130 );
//  text( "MOTHER", 25, 100 );
//  textFont( font, 90 );
//  blendMode( MULTIPLY );
//  text( "PROCESSING", 25, 200 );
  
//  int base = 100;
//  fill( 255 );
//  text("M", 25, base );
//  base+=118;
//  text("O", 26, base  );
//  base+=118;
//  text("T", 35, base );
//  base+=118;
//  text("H", 26, base );
//  base+=118;
//  text("E", 25, base );
//  base+=118;
//  text("R", 26, base );
}
