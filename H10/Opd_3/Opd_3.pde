import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

  float metbtw = 0;
  int geenbtw = 0;
  String tekst = "0";


void setup(){
  size(800,800);
  background(255,255,255);
  cp = new ControlP5(this);

  knop1 = cp.addButton("Knop1");

  knop1.setCaptionLabel("btw-converter")
                .setSize(160,75)
                .setPosition(110,65)
                .setCaptionLabel("BTW calculator extreeme (patent pending)")
                .setColorLabel(color(255,255,255));

  tekstveld1 = cp
                .addTextfield(" ")
                .setSize(200,75)
                .setPosition(90,140)
                .setText("Hoi")
                .setColorLabel(color(0,0,0));
}


void draw(){

}

void Knop1(){
   tekst = tekstveld1.getText();
   geenbtw = int(tekst);
   metbtw = geenbtw *1.21;
   metbtw *= 100;
   metbtw = int(metbtw);
   metbtw /= 100;
   println("€ " + metbtw);
}
