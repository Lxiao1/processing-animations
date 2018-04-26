PVector[] rain;

void setup() {
  size(690, 431);


  rain = new PVector[100];
  for (int i = 0; i < rain.length; i++) {
    float x = random(0, width);
    float y = random(0, height);
    rain[i] = new PVector(x, y);
  }
}


void draw() {  
  //grass
  fill(#11BF18);
  quad(0, 431, 0, 304, 690, 294, 690, 431);

  //sky
  fill(#00bfff);
  quad(0, 0, 690, 0, 690, 304, 0, 304);

  //loop rain
  for (int i = 0; i < rain.length; i++) {
    //move rain
    rain[i].add(0, 10);

    //reset if they go too far
    if (rain[i].y + 100 > height) {
      rain[i].y = (int) random(50, height/2);
    }

    ellipse(rain[i].x, rain[i].y, 1, 10);

    //draw cloud
    noStroke();
    fill(255);
    ellipse(300, 50, 800, 150);
    ellipse(400, 100, 800, 150);
    ellipse(200, 100, 800, 150);
    
  }
}

void mousePressed() {
  System.out.println(mouseX + ", " + mouseY);
}