GUI gui;
Element btn;
Element btn2;

void setup() {
 size(800, 800, P2D);
 surface.setResizable(true);
 gui = new GUI();
 btn = new Element(gui);
 btn2 = new Element(gui);
 btn2.col = 1;
 
}

void draw() {
  background(0);
  gui.draw_loop();
}
