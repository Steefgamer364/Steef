float gewicht = 72.5;
float lengte = 1.92;
float leeftijd = 32;
float BMI = 0;


BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round(BMI);
println(BMI);

size(720, 500);
background(255,255,255);

rect(140,200,120,30);
rect(300,100,120,30);
rect(460,200,120,30);

fill(0,0,0);
text("Gewitcht:" + gewicht + "KG",145,220);
text("leeftijd: " + lengte + "meter",470,220);
text("Lengte:" + lengte + "meter",470,220);

textSize(30);
text("BMI: " + BMI ,310,350);

if(leeftijd < 70){
if(BMI < 18,5){
  fill(255,255,0);
}else if(BMI < 25){
  fill(0,255,0);
  else if(BMI < 30){
    fill(255,255,0);
  }else{
    fill(255,0,0);
  }
}

textSize(30);
text("BMI: " + BMI ,310,350);
  
  
