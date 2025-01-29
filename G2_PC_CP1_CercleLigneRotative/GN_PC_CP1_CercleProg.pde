int i; // variable qui augmente
final int pas=12; // constante entière
void setup() {
  size(1024,800); 
  i=0;
}
void draw() {
  background(255);
  ellipse(512,400,400,400); // Affichage de l'élipse
  i+=pas; // incrémente i de pas
  float angle=radians(i); 
  translate(512,400); 
  line(0,0,180*cos(angle),180*sin(angle)); // Ligne tournante
}
