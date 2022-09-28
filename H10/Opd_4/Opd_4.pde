    import controlP5.*;
  
  ControlP5 cp;
  
  Button knop1;
  
  Textfield tekstveld1;
  
  Textfield tekstveld2;
 
void setup(){
  
  size(750,750);
  background(255,255,255);
  cp = new ControlP5(this) ;
  
  knop1 = cp.addButton("Knop1");
  knop1.setCaptionLabel("test");
  
  tekstveld2 = cp
  .addTextfield("Text2")
  .setPosition(400,100)
  .setText("")
  .setCaptionLabel("")
  .setColorLabel(color(0,0,255));
    
    tekstveld1 = cp
  .addTextfield("Text1")
  .setPosition(100,100)
  .setText("")
  .setCaptionLabel("")
  .setColorLabel(color(0,0,255));
  
}
int mijnGetal = 0;


void draw(){
  
  
}

void Knop1(){
  String mijnString = tekstveld1;
  mijnString = tekstveld1;
  mijnGetal = int(mijnString);

}
