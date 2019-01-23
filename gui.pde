class GUI {
  ArrayList<Element> elements = new ArrayList();
  
  // style:
  float margin = 16.0;
  int rows = 4;
  int cols = 4;

  void render() {
    for (Element elem : elements) {
      elem.render();
    }
  }
  
  void push(Element elem) {
    elements.add(elem);
  }

  void draw_loop() {
    render();
  }
}
