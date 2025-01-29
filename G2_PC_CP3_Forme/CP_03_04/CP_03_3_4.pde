final int red=#FF0000;//initialisation de la constante qui defini la couleur rouge
final int green=#00FF00 ;
float alpha = radians(30); //angle d'inclinaison du rectangle
final float longueur = 600; //longueur du rectangle  
final float largeur = 400; //largeur du rectangle
int width=1280, height=800; //largeur et longueur du screen

void setup() {
  size(1280,800);
  noStroke();
}


void draw() {
  background(255);
  fill(red);
  pushMatrix();
  translate(width/2,height/2);
  rotate(alpha);
  rect(-longueur/2,-largeur/2,longueur,largeur);
  popMatrix();
  fill(green);
  translate(100,200);
  ellipse(0,0,100,400);
  alpha += radians(1.0); // incrémenter alpha de 1°
// pour la frame suivante
}
