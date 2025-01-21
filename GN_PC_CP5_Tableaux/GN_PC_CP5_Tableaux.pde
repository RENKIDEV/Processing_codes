int larg = 40;  // largueur du rectangle
int longue = 80; // longueur du rectangle
float posX = 512; // position X de debut
float posY = 200; //position Y de debut
int compt = 4;  //nombre de case par ligne

void setup() {
  size(1200,800);
  noLoop();
}

void rectangle() { //fonction qui dessine le rectangle
  fill(#0000FF);
  rect(posX,posY,larg,longue);
}

void position(float X,float Y) { 
  posY = posY + Y;
  posX = posX - X;
}

void trace(int col) {
    for (int i = 0; i < col;i++) { // boucle qui trace les rectangles dans le sens horraire
    for (int j = 0; j < compt ;j++) {
      rectangle();
      posX = posX + 40; 
      
    }
    position(40,80);
    for (int k = 0; k < compt ;k++) { // boucle qui trace les rectangles dans le sens non-horraire
      rectangle();
      posX = posX - 40;
    }
    position(-40,80);
  }
}

void draw() {
  background(255);
  trace(2);
}
