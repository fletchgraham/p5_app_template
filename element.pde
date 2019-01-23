class Element {
  float x = 0.0;
  float y = 0.0;
  float w = 100.0;
  float h = 24.0;

  Element(GUI parent, float x_, float y_, float w_, float h_) {
    parent.push(this);
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }

  PVector mouse_over() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      float x_percent = (mouseX - x)/ w;
      float y_percent = (mouseY - y)/ h;
      PVector coords_relative = new PVector(x_percent, y_percent);
      return coords_relative;
    } else {
      return null;
    }
  }
  
  void render() {
    if(mouse_over() != null) {
      fill(255);
    } else {
      fill(0);
    }
    stroke(255);
    rect(x,y,w,h);
  }
}
