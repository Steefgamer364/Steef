import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;
Button knop3;
Button knop4;

float antwoord;

Textfield tekstveld1;
Textfield tekstveld2;

void setup(){
  size(400,200);
  cp = new ControlP5(this);


  tekstveld1 = cp
              .addTextfield("Eerste getal")
              .setPosition(28,100)
              .setSize(100,20)
              .setColorBackground(color(100))
              .setText("0")
              .setColorForeground(0)
              .setCaptionLabel("1ste getal")
                .setColorLabel(color(255,255,255));
                
  tekstveld2 = cp
             .addTextfield("Tweede getal")
             .setPosition(130,100)
             .setSize(100,20)
             .setColorBackground(color(100))
             .setText("0")
             .setColorForeground(0)
             .setCaptionLabel("2de getal")
               .setColorLabel(color(255,255,255));
               
   knop1 = cp.addButton("keer")
             .setPosition(240,100)
             .setSize(20,20)
             .setColorBackground(color(100))
             .setColorLabel(color(255,255,255))
             .setColorForeground(0)
             .setCaptionLabel("*");
             
             knop2 = cp.addButton("plus")
             .setPosition(240,125)
             .setSize(20,20)
             .setColorBackground(color(100))
             .setColorLabel(color(255,255,255))
             .setColorForeground(0)
             .setCaptionLabel("+");
             
             knop3 = cp.addButton("minus")
             .setPosition(265,125)
             .setSize(20,20)
             .setColorBackground(color(100))
             .setColorLabel(color(255,255,255))
             .setColorForeground(0)
             .setCaptionLabel("-");
             
              knop4 = cp.addButton("deel")
             .setPosition(265,100)
             .setSize(20,20)
             .setColorBackground(color(100))
             .setColorLabel(color(255,255,255))
             .setColorForeground(0)
             .setCaptionLabel("/");
  
}

void draw(){
  
 
}



void keer(){
 float getal1 = int(tekstveld1.getText());
 float getal2 = int(tekstveld2.getText());
 antwoord = getal1 * getal2;
}

void deel (){
 float getal1 = int(tekstveld1.getText());
 float getal2 = int(tekstveld2.getText());
 antwoord = getal1 / getal2;
}

void plus (){
 float getal1 = int(tekstveld1.getText());
 float getal2 = int(tekstveld2.getText());
 antwoord = getal1 + getal2;
}

void minus (){
 float getal1 = int(tekstveld1.getText());
 float getal2 = int(tekstveld2.getText());
 antwoord = getal1 - getal2;

println(antwoord);
}
