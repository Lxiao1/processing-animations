PImage bg;
int cloudX;
int cloudY;

void setup() {
  size(690, 431);

  bg = loadImage("landscape.jpg");

  cloudX = 700;
  cloudY = 200;
}



void draw() {
  background(bg);

  //grass
  fill(#11BF18);
  quad(0, 431, 0, 304, 690, 294, 690, 431);

  //sky
  fill(#00bfff);
  quad(0, 0, 690, 0, 690, 304, 0, 304);

  //sun
  noStroke();
  fill(#FEFF05);
  ellipse(630, 100, 150, 150);

  cloudX += 2;

  if (cloudX - 75 > width) {
    cloudX = -75;
    cloudY = (int)random(height/3);
  }

  //draw cloud
  noStroke();
  fill(255);
  noStroke();
  fill(255);
  ellipse(cloudX, cloudY, 70, 50);
  ellipse(cloudX+20, cloudY+15, 70, 50);
  ellipse(cloudX-20, cloudY+15, 70, 50);
}

void mousePressed() {
  System.out.println(mouseX + ", " + mouseY);
}