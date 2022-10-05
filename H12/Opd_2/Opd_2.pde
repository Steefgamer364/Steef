int seconden;
int leftAmount;
int millisLeft;
int Spaties =0;
boolean testing = true;
void setup(){
  size(500,500);
  
}

void draw(){
  background(255,255,255);
  
  seconden = millis()/1000;
  leftAmount = 9 - seconden;
    millisLeft = 1000 - (millis()%1000);
    
    if(leftAmount <= 0){
    leftAmount = 0;
    millisLeft = 0;
  }  
  
  if(seconden >= 10){
    testing = false;
  }
  fill(0,0,0);
  text("Spaties: "+ Spaties, 400,200);
  text("Seconden over:" + leftAmount + "." + millisLeft, 200,200);
}

void keyReleased(){
  if(keyCode == 32){
    Spaties++;
  }
}
