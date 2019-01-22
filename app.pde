class App {
  ArrayList<Element> elements = new ArrayList();
  float margin = 16.0;

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
