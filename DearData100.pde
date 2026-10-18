void setup() {
  size(600, 400);
  background(240);
  noStroke();

  // draw a grid of 100 circles, like 100 data points
  for (int row = 0; row < 10; row++) {
    for (int col = 0; col < 10; col++) {
      fill(50 + col * 20, 100, 200 - row * 15);
      circle(60 + col * 50, 40 + row * 35, 20);
    }
  }
}
