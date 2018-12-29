PImage img;
float amount = 1;


void setup() {
  size(720, 720, P2D);
  img = loadImage("line.jpg");
}
void draw() {
  image(img, 0, 0);
  amount *= 1.15f;

  //LINE 3
  for (int i=140; i<580; i++) {
    color c = get(i, 265);
    beginShape(LINES);
    stroke(c, 150);
    vertex(i, noise(i)*amount + 265-amount);
    stroke(c);
    vertex(i, 265);
    endShape();
  }

  //Trista
  for (int i=140; i<580; i++) {
    color c = get(i, 415);
    beginShape(LINES);
    stroke(c, 150);
    vertex(i, noise(i)*amount + 415-amount);
    stroke(c);
    vertex(i, 415);
    endShape();
  }

  //2018 DEC
  for (int i=277; i<440; i++) {
    color c = get(i, 460);
    beginShape(LINES);
    stroke(c, 150);
    vertex(i, noise(i)*amount + 460-amount);
    stroke(c);
    vertex(i, 460);
    endShape();
  }

  //Buttom
  for (int i=0; i<720; i++) {
    beginShape(LINES);
    stroke(noise(i)*20+230, 100);
    vertex(i, noise(i)*amount + 720-amount);
    stroke(noise(i)*20+230);
    vertex(i, 720);
    endShape();
  }
  //println(mouseX, mouseY);
  saveFrame("frames/####.png");
}
