  import controlP5.*;
  
  ControlP5 cp;
  
  Button knop1;
  
  Textfield tekstveld1;

void setup(){

  size(750,750);
  background(255,255,255);
  cp = new ControlP5(this) ;
  
  knop1 = cp.addButton("Knop1");
  knop1.setCaptionLabel("test");
  
  tekstveld1 = cp
  .addTextfield("Text1")
  .setPosition(100,100)
  .setText("Stefan")
  .setCaptionLabel("Doe iets, kom op, doe het nu ik heb niet de hele dag.")
  .setColorLabel(color(0,0,255));
}

void draw(){
  
  
}

void Knop1(){
  println("Hoi mijn naam is: " + tekstveld1.getText());
}
