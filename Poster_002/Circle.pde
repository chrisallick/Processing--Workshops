class Circle extends Element {
  
  Circle( PApplet _parent, int _x, int _y, int _w, int _h ) {
    super( _parent, _x, _y, _w, _h );
  }

  void draw() {
    fill( c );
    ellipse( x, y, w, h );
  }
}
