GUI gui;
Element btn;
Element btn2;

void setup() {
 size(800, 800, P2D);
 gui = new GUI();
 btn = new Element(gui, 5, 5, 50, 50);
 btn2 = new Element(gui, 40, 40, 50, 50);
 
}

void draw() {
  background(0);
  gui.draw_loop();
}
