color bgs[] = {
  color(246,212,0),
  color(0,132,79),
  color(193,1,50),
  color(227,114,38),
  color(109,30,119),
  color(29,91,164)
};

void setup() {
  size( 600, 600 );
  
  smooth();
  noStroke();
 
  drawTriangles();
}

void draw() {
  
}

void drawTriangles() {
  background( 225,225,227 );
  
  translate( width/2, height/2);
 
  float radius = 250;
  float num_tri = 20;
  
  float last_radius = 0;
  int last_color = -1;

  float angle = TWO_PI/(float)num_tri;

  for( int i = 0; i < num_tri; i++ ) {
    float new_radius = radius + random( -10, 10 );
    while( abs(new_radius - last_radius) < 6 ) {
      new_radius = radius + random( -10, 10 );
    }
    
    float x = new_radius*sin(angle*i);
    float y = new_radius*cos(angle*i);
    
    float x2 = new_radius*sin(angle*(i+1));
    float y2 = new_radius*cos(angle*(i+1));

    int new_color = (int)random(bgs.length);
    while( new_color == last_color ) {
      new_color = (int)random(bgs.length);
    }
    fill( bgs[new_color] );
    triangle( 0, 0, x, y, x2, y2 );

    last_radius = new_radius;
    last_color = new_color;
  }
}

void mousePressed() {
  drawTriangles();
}
