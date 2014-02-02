Settings.pde
=====
la classe Settings est un petit outil pour faciliter la sauvegarde de données. On utilise un fichier settings.json, qui contient des variables de tout type : `int, float, String, boolean, JSONObject, JSONArray`.

Il hérite beaucoup de la classe `JSONObject`. pour plus d’information sur [la ClasseJSONObject, lire la référence Processing 2+](http://www.processing.org/reference/JSONObject.html).

En plus de cela, la classe Settings offre des raccourcis pour charger automatiquement les données au démarrage, et aussi pour sauvegarder automatique, toutes les minutes. 

les données sont sauvegardées au format JSON, dans un fichier `data/settings.json`

## pré-requis

Processing 2+ 

## utilisation


- copier le fichier `settings.pde` dans votre projet Processing
- copier le fichier `data/settings.json` dans votre projet Processing, à l’identique (créer le dossier `data` si absent)
- dans le `setup` de votre sketch, déclarer une variable `settings = new Settings();`
- utiliser dans `setup` et `draw` l’objet `JSONObject` depuis `settings.json`
- sauvegarder automatiquement avec `settings.autoSave()`;

## exemple d'utilisation

```java
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
```
