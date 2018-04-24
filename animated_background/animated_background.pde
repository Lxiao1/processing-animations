PImage bg;
PVector[] clouds;

void setup() {
  size(690, 431);
  // The background image must be the same size as the parameters
  // into the size() method. In this program, the size of the image
  // is 640 x 360 pixels.
  bg = loadImage("landscape.jpg");
  

  clouds = new PVector[10];
  for (int i = 0; i < clouds.length; i++) {
    float x = random(0, width);
    float y = random(0, height/3);
    clouds[i] = new PVector(x, y);
  }
}


void draw() {
  background(bg);
  
  // loop through clouds
  for (int i = 0; i < clouds.length; i++) {
    // move each cloud
    clouds[i].add(1, 0);
    
    // reset if they go too far
    if (clouds[i].x - 75 > width) {
      clouds[i].x = -75;
      clouds[i].y = (int) random(50, height/2);
    }
    
    // draw each cloud
    noStroke();
    fill(255);
    ellipse(clouds[i].x, clouds[i].y, 70, 50);
    ellipse(clouds[i].x+20, clouds[i].y+15, 70, 50);
    ellipse(clouds[i].x-20, clouds[i].y+15, 70, 50);
  }
 
}