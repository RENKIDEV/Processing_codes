import processing.data.*;

JSONObject json;
JSONArray personnes;
int totalPersonnes;
int index = 0;

void setup() {
  size(600, 200);
  json = loadJSONObject("ident.json");
  personnes = json.getJSONArray("personnes");
  totalPersonnes = personnes.size();
w
  background(0);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(18);
}

void draw() {
  background(0);

  if (index < totalPersonnes) {
    JSONObject personne = personnes.getJSONObject(index);
    String nom = personne.getString("nom");
    String prenom = personne.getString("prenom");
    String dateNaissance = personne.getString("date_naissance");

    String message = "Bonjour, je m'appelle " + prenom + " " + nom + ", je suis né le " + dateNaissance;
    text(message, width / 2, height / 2);
  }
}

void keyPressed() {
  index = (index + 1) % totalPersonnes; //Passer à la prochaine personne
}
