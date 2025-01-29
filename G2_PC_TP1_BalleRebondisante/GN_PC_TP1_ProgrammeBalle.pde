import processing.sound.*;

SoundFile file;
int largeur = 1920;
int hauteur = 1080;
final int border = 1060;
float amortissement = 0.5; // Réduction de la vitesse après rebond

// Première balle
float x1, y1;
float moovex1 = 10;
int rebonds1 = 0;
boolean balle1Visible = false;

// Deuxième balle
float x2, y2;
float moovex2 = 10;
int rebonds2 = 0;
boolean balle2Visible = false;

PImage img;

void setup() {
  size(1920, 1080);
  img = loadImage("Balle.png");
  file = new SoundFile(this, "ball.mp3");
}

void draw() {
  background(255);
  
  // Gestion de la première balle
  if (balle1Visible && rebonds1 < 3) {
    image(img, x1, y1, 40, 40);
    y1 += moovex1;

    if (y1 >= border) {
      y1 = border;
      rebonds1++;
      moovex1 *= -amortissement; // Réduction de la vitesse après rebond
      file.play();
    }
    
    // Inversion de la direction après rebond, uniquement si elle n'a pas atteint 3 rebonds
    if (rebonds1 < 3 && moovex1 < 0 && y1 <= border - (hauteur / pow(2, rebonds1 + 1))) {
      moovex1 *= -1;
    }
  }

  // Gestion de la deuxième balle
  if (balle2Visible && rebonds2 < 3) {
    image(img, x2, y2, 40, 40);
    y2 += moovex2;

    if (y2 >= border) {
      y2 = border;
      rebonds2++;
      moovex2 *= -amortissement;
      file.play();
    }
    
    // Inversion de la direction après rebond, uniquement si elle n'a pas atteint 3 rebonds
    if (rebonds2 < 3 && moovex2 < 0 && y2 <= border - (hauteur / pow(2, rebonds2 + 1))) {
      moovex2 *= -1;
    }
  }
}

void mousePressed() {
  if (!balle1Visible) {
    balle1Visible = true;
    x1 = mouseX;
    y1 = mouseY;
    moovex1 = 10;
    rebonds1 = 0;
  } else if (!balle2Visible) {
    balle2Visible = true;
    x2 = mouseX;
    y2 = mouseY;
    moovex2 = 10;
    rebonds2 = 0;
  }
}
