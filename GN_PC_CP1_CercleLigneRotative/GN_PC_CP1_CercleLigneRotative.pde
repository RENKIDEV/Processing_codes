int i; // variable entière
final int pas=12; // constante entière
void setup() {
  size(1024,800); /* initialisation de la taille de la
  fenêtre */
  i=0; // initialisation
}
void draw() {
  background(255); // efface l’écran en blanc
  ellipse(512,400,400,400);
  i+=pas; // incrémente i de pas
  float angle=radians(i); // convertit i en radians
  translate(512,400); /* translate le point origine
  précédent du vecteur (512,400)*/
  line(0,0,180*cos(angle),180*sin(angle));
}
