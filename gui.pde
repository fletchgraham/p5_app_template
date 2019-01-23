class GUI {
  ArrayList<Element> elements = new ArrayList();
  
  // style:
  float margin = 16.0;
  int rows = 2;
  int cols = 2;

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
