String[] wrists = {
  "analogue watch", "nothing", "smartwatch", "bracelet", "hair tie",
  "digital watch", "nothing", "fitness band", "beads", "covered"
};
void setup() {
  size(600, 450);
  background(240);
  noStroke();
  for (int i = 0; i < 100; i++) {
    int x = 60 + (i % 10) * 50;
    int y = 40 + (i / 10) * 35;
    if (i < wrists.length) {
      fill(getColour(wrists[i]));
    } else {
      fill(220);
    }
    ellipse(x, y, 20, 20);
  }
  textSize(12);
  fill(0, 0, 255);
  text("Watch", 40, 420);
  fill(0, 180, 90);
  text("Smart", 130, 420);
  fill(255, 140, 0);
  text("Jewellery", 220, 420);
  fill(150, 60, 200);
  text("Band", 330, 420);
  fill(120);
  text("Nothing", 410, 420);
  fill(0);
  text(wrists.length + " / 100 logged", 490, 420);
}
color getColour(String item) {
  if (item.equals("analogue watch") || item.equals("digital watch")) {
    return color(0, 0, 255);
  }
  if (item.equals("smartwatch") || item.equals("fitness band")) {
    return color(0, 180, 90);
  }
  if (item.equals("bracelet") || item.equals("beads")) {
    return color(255, 140, 0);
  }
  if (item.equals("hair tie") || item.equals("wristband")) {
    return color(150, 60, 200);
  }
  return color(120);
}
