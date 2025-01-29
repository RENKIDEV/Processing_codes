// Créez un programme permettant d'afficher toutes les communes dont l'altitude minimum est supérieure à 1500 m

Table table;

void setup() {
  table = loadTable("communes.csv", "header"); //chargement de fichier csv
  println(table.getRowCount() + " total de ligne"); // compte le nombre de ligne du fichier csv afin de verifier que celui ci est bien chargé
  for (TableRow row : table.rows()) { // Pour chaque ligne du tableaux

    String reg = row.getString("reg_nom"); // recuperer la valeur des regions pour chaque ligne et la defini au sein de la variable reg
    String name = row.getString("nom_standard"); // nom des villes dans la variable name
    int alt_min = row.getInt("altitude_minimale"); //valeur de l'entier altitude minimal dans alt_min
    
    if (alt_min > 1500) { //verifie que alt_min est superieure a 1500 min
      println(name,"  ",reg,alt_min);
    }
  }
}
