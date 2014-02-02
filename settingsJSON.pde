int i = 0;
void setup(){
  //
  // initialise l'objet Settings
  settings = new Settings();
  //
  // récupère une donnée float, sur le mot clé "etendue"
  float f = settings.json.getFloat("etendue");
  // récupère une donnée int sur le mot clé "compteur"
  i = settings.json.getInt("compteur");
  //
  println(f);
  println(i);
}

void draw(){
  //
  i++;
  //
  settings.json.setInt("compteur",i);
  //
  // lire la documentation de JSONObject dans la référence de Processing 2+
  //
  //
  settings.autoSave(); // sauvegarde régulièrement 
  // valeur en seconde à régler dans l'onglet settings
}
