PImage bg;
PVector[] clouds;

void setup() {
  size(690, 431);

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
  
  //loop clouds
  for (int i = 0; i < clouds.length; i++) {
    //move clouds
    clouds[i].add(2, 0);
    
    //reset if they go too far
    if (clouds[i].x - 75 > width) {
      clouds[i].x = -75;
      clouds[i].y = (int) random(50, height/2);
    }
    
    // draw each cloud
    noStroke();
    fill(255);
    ellipse(clouds[i].x, clouds[i].y, 100, 50);
    ellipse(clouds[i].x+20, clouds[i].y+15, 100, 50);
    ellipse(clouds[i].x-20, clouds[i].y+15, 100, 50);
  } 
 
}

void mousePressed(){
  System.out.println(mouseX + ", " + mouseY);
}
