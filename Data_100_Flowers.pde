String[] places = {
  "Bromley Town Centre",
  "Bromley South",
  "Shortlands",
  "Orpington High Street",
  "Orpington Station",
  "Petts Wood"
};

int[] times = {25, 15, 32, 38, 23, 20};

void setup() {
  size(900, 650);
  background(0);
  textAlign(CENTER);

  fill(255);
  textSize(25);
  text("Flowers into Roads", 450, 35);

  for (int i = 0; i < 6; i++) {
    float x = 150 + (i % 3) * 300;
    float y = 200 + (i / 3) * 290;

  
    for (int p = 0; p < 16; p++) {
      float angle = TWO_PI * p / 16;

      pushMatrix();
      translate(x, y);
      rotate(angle);

    
      int colour = int(random(3));

      if (colour == 0) fill(255, 0, 0);
      else if (colour == 1) fill(255, 220, 0);
      else fill(0, 200, 0);

      noStroke();
      ellipse(0, -23, 13, 23);

      popMatrix();
    }

  
    fill(255, 220, 100);
    ellipse(x, y, 16, 16);

  
    fill(255);
    textSize(13);
    text(places[i], x, y + 65);

  
    fill(180);
    textSize(12);
    text(times[i] + " seconds", x, y + 85);
  }
}
