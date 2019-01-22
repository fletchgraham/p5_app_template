App app;
Element btn;
Element btn2;

void setup() {
 size(800, 800, P2D);
 app = new App();
 btn = new Element(app, 5, 5, 50, 50);
 btn2 = new Element(app, 40, 40, 50, 50);
 
}

void draw() {
  background(0);
  app.draw_loop();
}
