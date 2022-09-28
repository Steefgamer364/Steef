import controlP5.*;

import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  size(500,500);
 cp = new ControlP5(this) ;
knop1 = cp.addButton("Knop1")
          .setPosition(50,50)
          .setSize(200,200)
          .setCaptionLabel("klik mij");
          
 knop2 = cp.addButton("Knop2")
          .setPosition(250,250)
          .setSize(200,200)
          .setCaptionLabel("klik mij");
          
knop1.setColorForeground(color(255,0,0));

          
}



void draw(){
  
}

void Knop2(){
  println("dit is vekeerd");
}

void Knop1(){
  println("Is goed, raak nu gras aan");
}
