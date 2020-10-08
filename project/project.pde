float sides = 8;
float offs = 0;

void setup() {
  size(500, 500);
  background(0);
  colorMode(HSB, 255, 255, 255);
  translate(width/2, height/2);
}

void draw() {
  translate(width/2, height/2);
  if (mousePressed) {
    float h = noise(offs)*255;
    offs += 0.01;
    stroke(h, 255, 255, 255);
    float angle = TWO_PI/sides;
    for (int i = 0; i<sides; i++) {
      rotate(angle);
      strokeWeight(8);
      line(mouseX-width/2, mouseY-height/2, pmouseX-width/2, pmouseY-height/2);
    }
  }
}

void keyPressed()
{
  if (key == 's') {
    save("myImage.jpg");
  }
  if (key == 'n') {
    background(0);
  }
  if (key == 'f') {
    sides+=2;
  }
  if (key == 'd') {
    if (sides>6) {
      sides-=2;
    }
  }
}
