//import processing.javafx.*;

void setup() {
  size(1280, 720, FX2D);
  noStroke();
  background(0);
}

void draw() {
  stroke(255);
  strokeWeight(15);
  line (mouseX, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, 20, 20);

  pushMatrix();
  translate(width*.5, height*.5);
  scale(.99);
  translate(0, -4);
  //rotate(0.01);
  //tint(100,25);
 // blendMode(SCREEN);
  tint(200, sin(frameCount/100)*255, cos(frameCount/105)*255, 20);
  imageMode(CENTER);

  image(get(), 0, 0, width, height);

  popMatrix();

  println(frameRate);

}
