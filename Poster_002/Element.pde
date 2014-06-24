class Element {
  int x, y, w, h;

  int c;
  
  PApplet parent;
  
  Tween t;
  
  Element( PApplet _parent, int _x, int _y, int _w, int _h ) {
    this.x = _x;
    this.y = _y;
    this.w = _w;
    this.h = _h;
    this.parent = _parent;
    c = bgs[(int)random(bgs.length)];
    
    Motion.setup(parent);
    t = new Tween((int)random(50,750))
      .addColor(this, "c", bgs[(int)random(bgs.length)])
        .onEnd("tweenEnded")
            .play();
  }
  
  void tweenEnded(Tween _t) {
    _t.getColor("c").setEnd(bgs[(int)random(bgs.length)]);
    _t.play();
  }
}
