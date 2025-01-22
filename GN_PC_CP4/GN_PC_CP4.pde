//Présentation du programme : 

// Programme permettant de manipuler des tableaux, et d'afficher a l'ecran une ligne tracé du centre de la fenetre au coin gauche.



/* Quelques déclarations « globales » */
int i;
int j = 4; // Avec ou sans initialisation
final int l = 4; // Une constante ne pouvant donc pas être redéfinie

// Des déclarations et initialisations de tableaux
int[] t = {1, 2, 3, 4};
int[] t1 = new int[4];
int[] t2 = new int[l];


//A quoi sert t'elle ? permet d'initialiser nos tableau t1 et t2 et de définir la taille de notre fenètre. 
void setup() {
  size(1024, 800);
  // Initialisation de t1
  t1[0] = 1;
  t1[1] = 1;
  t1[2] = 1;
  t1[3] = 4;
  // Initialisation de t2
  for (int k = 0; k < t2.length; k++) {
    t2[k] = k + 1;
  }
}

// A quoi sert t'elle ? Elle permet de dessiner une ligne du millieux de la fenetre jusqu'au coin gauche 
void draw() {
  background(255); // Le fond de la fenêtre est colorié en blanc

  translate(width / 2, height / 2); // Déplace l’origine au milieu de la fenêtre

  // Dessine une ligne du coin en haut à gauche au centre de la fenêtre
  line(-width / 2, -height / 2, 0, 0);
}
