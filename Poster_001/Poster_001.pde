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

void setup() {
  size( 600, 800 );
  
  w = (width - (num_x*padding) - offset) / num_x;
  h = w;
  
  ellipseMode( CORNER );
  smooth();
  
  drawPoster();
}

void draw() {}

void drawPoster() { 
 background( 243,251,253 );
  for( int r = 0; r < 5; r++ ) {
    for( int c = 0; c < 6; c++ ) {
      int f = (int)random(bgs.length);
      noStroke();
      fill( bgs[f] );
      int x = r*(w)+(padding*r)+offset;
      int y = c*(w)+(padding*c)+offset;
      rect( x, y, w, h );
      
      f = (int)random(bgs.length);
      noStroke();
      fill( bgs[f] );
      x = r*(w)+(padding*r)+offset;
      y = c*(w)+(padding*c)+offset;
      ellipse( x, y, w, h );
    }
  }
}

void mouseClicked() {
  drawPoster();
}
