import controlP5.*;

int[] lijst = new int[10];
String namen;

import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(500,500);
 cp = new ControlP5(this);

  knop1 = cp.addButton("Knop1");

  knop1.setCaptionLabel("Naam ding")
                .setSize(160,75)
                .setPosition(110,65)
                .setCaptionLabel("Voeg naam toe aan lijst")
                .setColorLabel(color(255,255,255));

  tekstveld1 = cp
                .addTextfield(" ")
                .setSize(200,75)
                .setPosition(90,140)
                .setText("")
                .setColorLabel(color(0,0,0));
          
}
void draw(){
  
}

void knop1(){
  namen = tekstveld1.getText();
  float(namen);
  for(int i = 0; i < lijst.length; namen++){
  lijst[i] = 10+namen*10;
  }
}
