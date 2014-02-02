Settings settings;
//
class Settings{
  
  //
  //
  public String settingsFileName = "data/settings.json"; 
  // nom du fichier
  //
  public int autoSaveDelay = 60;
  // sauvegardera toutes 60 secondes

  //
  public JSONObject json;
  private boolean saving = false;
  
  
  public Settings(){
    // charge le fichier JSON
    json = loadJSONObject(settingsFileName);
  }
  
  // save
  public void save(){
    saveJSONObject(json,settingsFileName);
  }
  
  // autoSave
  public void autoSave(){
    if(floor(millis()*.001)%autoSaveDelay==0){
      if(!saving){
      save();
      saving = true;
      }
    }else if(saving){
      saving = false;
    }
  }
}

