int[] getallen = new int[10];
int bababooey = 0;
int gezocht = 5;

void setup(){
  getallen[0] = 1;
  getallen[1] = 5;
  getallen[2] = 6;
  getallen[3] = 11;
  getallen[4] = 5;
  getallen[5] = 5;
  getallen[6] = 7;
  getallen[7] = 9;
  getallen[8] = 10;
  getallen[9] = 12;
  
println(getallen);
for(int i = 0; i < getallen.length; i++){
  if(gezocht == getallen[i]){
    bababooey++;
}
  
}
println(bababooey);
}
