import processing.sound.*;
SoundFile file;
int largeur = 1920;
int longeur = 1080;
float moovex = 10;
int x = 1920/2;
float y = 1080/2;
int IntersectionCount = 0;
float limite = y/3+y;
PImage img;
void setup() {
  size(1920, 1080);
  img = loadImage("Balle.png");
  file = new SoundFile(this, "ball.mp3");
}
void draw() {
  background(255);
  image(img, x, y, 40, 40);
  
  if (IntersectionCount == 0 || IntersectionCount ==2) {
    y += moovex;
  } else{
    if (IntersectionCount == 1) {
      y -= moovex;
    }else{
      exit();
    }
  }
  if (y == 1060) {
    IntersectionCount ++;
    moovex = moovex/2*1;
    print("Bordure : ",IntersectionCount);
    print("Bordure : ",moovex);
    file.play();
  } else {
    if (y<=limite && IntersectionCount ==1){
      IntersectionCount ++;
      print("Rebond :",IntersectionCount);
      moovex = moovex/2*+1;
    }
  }
  
}
