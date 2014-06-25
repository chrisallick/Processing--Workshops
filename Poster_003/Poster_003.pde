color bgs[] = {
  color(246,212,0),
  color(0,132,79),
  color(193,1,50),
  color(227,114,38),
  color(109,30,119),
  color(29,91,164)
};

int radius = 230;
int num_tri = 20;

void setup() {
  size( 600, 600 );
  
  smooth();
  
  background( 235, 233, 234 );
}

void draw() {
  float x = width / 2;
  float y = height / 2;
  float radius = height / 3;
  float angle = 0;
  float angleStep = 0.05;
  float twopi = PI * 2;
  float dx, dy;

  float last_dx = 0;
  float last_dy = 0;
  while (angle <= twopi) {
    radius += random( -10, 10 );
    dx = x + radius * cos(angle);
    dy = y + radius * sin(angle);

    angle += angleStep;

    //ellipse(dx, dy, 20, 2);
    
    if( last_dx != 0 ) {
      triangle( x, y, last_dx, last_dy, dx, dy );
    }
    
    last_dx = dx;
    last_dy = dy;
  }

}
