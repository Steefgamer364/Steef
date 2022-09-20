int antwoord = 0;
int getalEen = 1;
int getalTwee = 3;

for(int i = 0; i < 10; getalEen++){
  antwoord = getalEen * getalTwee;
  println(antwoord + "=" + getalTwee + "*" +getalEen);
  getalEen = getalTwee;
  getalTwee = antwoord;
  
}
