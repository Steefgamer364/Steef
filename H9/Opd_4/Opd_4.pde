

void setup(){
 size(500,500); 
}

void draw(){
  background(255,255,255);
  stroke(0,0,0);  
  vierkant(100,100,100,100);
}

void vierkant( int x, int y, int w, int h){
  //top line
  line(x,y,x+w,y);
  //bottom line
  line(x,y+h,x+w,y+h);
  //left line
  line(x,y,x,y+h);
  //right line
  line(x+w,y,x+w,y+h);N
}
