class Element {
  GUI parent;
  int row = 0;
  int col = 0;

  float x;
  float y;
  float w;
  float h;

  Element(GUI parent_) {
    parent = parent_;
    parent.push(this);
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
    x = (width/parent.cols) * col;
    y = (height/parent.rows) * row;
    w = width/parent.cols;
    h = height/parent.rows;

    if (mouse_over() == null) {
      fill(0);
    } else {
      fill(255);
    }
    stroke(255);
    rect(x, y, w, h);
  }
}
