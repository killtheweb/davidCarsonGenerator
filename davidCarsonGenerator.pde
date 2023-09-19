int x1, y1, x2, y2, x3, y3;
PImage pg;
int x = 0;

void setup() {
  size(600, 800);
  rectMode(CORNERS);
  //filter(GRAY);
  imageMode(CENTER);
  pg = loadImage("is.png");
  //pg.filter(GRAY);
  pg.resize(width-200, 0);
}

void draw() {
  background(255);
  int w = x2-x1;
  int h = y2-y1;

  image(pg, width/2, height/2);
  copy(x3, y3, w, h, x1, y1, w, h);

  //saveFrame();
}

void mousePressed() {
  x1 = x2 = mouseX;
  y1 = y2 = mouseY;
}

void mouseDragged() {

  x2 = mouseX;
  y2 = mouseY;
}

void mouseClicked() {
  x3 = mouseX;
  y3 = mouseY;
}

void keyPressed() {
  if (keyCode == UP) {
    saveFrame("test.jpg");
    rotate(x);
    pg = loadImage("test.jpg");
  }
  if (keyCode == LEFT) {
    blendMode(MULTIPLY);
  }
  if (keyCode == RIGHT) {
    blendMode(SUBTRACT);
  }
  if (keyCode == DOWN) {
    blendMode(BLEND);
  }
  if (key == 'r' || key == 'R') {
    x += 15;
  }
  if (key == 'e' || key == 'E') {
    x = 0;
  }
  if (key == 'q' || key == 'Q') {
    x -= 15;
  }
}
