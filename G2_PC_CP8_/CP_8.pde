/** sujet CP-8
  programme qui indique la mention, pour une note moyenne donnée parmi « ajourné, « passable », « assez bien », « bien », « très bien » && /** Classer 3 nombres, ou 3 variables, par ordre croissant.



*/


void trier(int X1,int X2,int X3) { //fonction pour effectuer le tri avec les trois entiers demandée en arguments 
  if ((X1 <= X2) && (X2 <= X3)) { // X1 plus petit de X2 et X2 plus petit que X3
    println(X1,X2,X3); 
  } else {
    if ((X1 >= X2) && (X2 >= X3)) { //X1 plus grand que X2 et X2 plus grand que X3
      println(X3,X2,X1);
    } else {
      if ((X1 >= X2) && (X2 <= X3)) { // X1 plus grand que X2 et X2 plus petit que X3
        println(X1,X3,X2);
      } else { // sinon X1 plus peti que X2 et X2 plus grand que X3
        println(X1,X3,X2);
      }
    }
  }
}

void Moyenne(int moyenne) {
    if (moyenne >= 18) { // ma moyenne est supperieur ou egale a 18
    println("Tres Bien");
  } else {
    if (moyenne >= 16) { // ma moyenne est suppetieur ou egale a 16 mais plus petit que 18
      println("Bien");
    } else {
      if (moyenne >= 14) { // ma moyenne est supperieur ou egale a 14 mais plus petit que 16
        println("Assez bien");
      } else {
        if (moyenne >= 12) { // ma moyenne est supperieur ou egale a 12 mais plus petit que 14
          println("Passable");
        } else { //moyenne inferieur a 12 donc ajournée
            println("Ajourné");
          }
        }
      }
    }
  }
}

void setup() {
  Moyenne(9);
  Moyenne(15);
  Moyenne(18);
  trier(18,12,15);
}



void drawn() {

}
