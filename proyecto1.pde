void setup() {
  size(800, 600);
  noLoop(); 
}

void draw() {
  background(0);

  // Fondo estrellado
  for (int i = 0; i < 200; i++) {
    stroke(255);
    point(random(width), random(height));
  }

 
  for (int i = 0; i < 8; i++) {
    float x = random(width/2, width); 
    float y = random(height);
    float r = random(30, 70);
    dibujarAsteroide(x, y, r);
  }

 
  
}




void dibujarAsteroide(float x, float y, float r) {
  fill(120);
  stroke(80);
  beginShape();
  for (int i = 0; i < 10; i++) {
    float ang = TWO_PI / 10 * i;
    float rx = x + cos(ang) * (r * random(0.7, 1.2));
    float ry = y + sin(ang) * (r * random(0.7, 1.2));
    vertex(rx, ry);
  }
  endShape(CLOSE);
}
