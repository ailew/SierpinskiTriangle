public void setup() {
  size(500, 500);
}

public void draw() {
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  frameRate(10);
  background(0);
  sierpinski(300, 100, 400);
}

public void sierpinski(int len, int x, int y) {
  if (len <= 2) {
    triangle(x, y, x+len, y, x+(len/2), y-len);
  } else {
    sierpinski(len/2, x, y);
    sierpinski(len/2, x+len/2, y);
    sierpinski(len/2, x+len/4, y-len/2);
  }
}
