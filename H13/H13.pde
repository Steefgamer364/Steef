int playerChoice, computerChoice;
float rButtonX, rButtonY, rButtonW, rButtonH, pButtonX, pButtonY, pButtonW, pButtonH, sButtonX, sButtonY, sButtonW, sButtonH;
int a;
int totalscore;
int win;
int lose;

void setup(){
  size(800,300);
  playerChoice = 0;
  computerChoice = 0;
  a = -1;
  // Rock
  rButtonX = width/17;
  rButtonY = height/1.85;
  rButtonW = width/5;
  rButtonH = height/9;
  // Paper
  pButtonX = width/2.45;
  pButtonY = height/1.85;
  pButtonW = width/5;
  pButtonH = height/9;
  // Scissors
  sButtonX = width/1.32;
  sButtonY = height/1.85;
  sButtonW = width/5;
  sButtonH = height/9;
}

  
  void draw() {
    background(0);
    a();
    buttons();
    buttonsClicked();
    results();
  }
  
  void buttons() {
  fill(255);
  rect(rButtonX, rButtonY, rButtonW, rButtonH); // Rock Button
    rect(pButtonX, pButtonY, pButtonW, pButtonH); // Paper Button
      rect(sButtonX, sButtonY, sButtonW, sButtonH); // Scissors Button
      
  textSize(width/20);
  textAlign(CENTER);
  fill(0);
  text("Rock", width/6.67, height/1.6);
    text("Paper", width/1.96, height/1.6);
      text("Scissors", width/1.17, height/1.6);
  }
  
void buttonsClicked() {
  if(mousePressed) {
    if(mouseX > rButtonX && mouseX < rButtonX + rButtonW && mouseY > rButtonY && mouseY < rButtonY + rButtonH && computerChoice == 0) {
      playerChoice = 1; // Rock
      computerChoice = (int)random(1, 4);
    }
    if(mouseX > pButtonX && mouseX < pButtonX + pButtonW && mouseY > pButtonY && mouseY < pButtonY + pButtonH && computerChoice == 0) {
      playerChoice = 2; // Paper
      computerChoice = (int)random(1, 4);
    }
    if(mouseX > sButtonX && mouseX < sButtonX + sButtonW && mouseY > sButtonY && mouseY < sButtonY + sButtonH && computerChoice == 0) {
      playerChoice = 3; // Scissors
      computerChoice = (int)random(1, 4);
    }
  }
}
void a() {
  if(a == -1) {
    if(computerChoice == 1) {
      printantwoord("The computer has played Rock");
    }
     if(computerChoice == 2) {
      printantwoord("The computer has played Paper");
    }
     if(computerChoice == 3) {
      printantwoord("The computer has played Scissors" );
    }
  }
}
  void printantwoord(String zin){
    textSize(width/16.67);
      textAlign(CENTER);
      fill(0);
      text(zin, width/2, height/8);
  }
  
void results() {
  //Player and Computer Draw
  if((playerChoice == 1 && computerChoice == 1) ||
  (playerChoice == 2 && computerChoice == 2) ||
  (playerChoice == 3 && computerChoice == 3)) {
    fill(0,0,255);
    printResults("It's a draw, damn Daniel.");
    }
    //Player wins
  if((playerChoice == 2 && computerChoice == 1) ||
  (playerChoice == 1 && computerChoice == 3) ||
  (playerChoice == 3 && computerChoice == 2)) {
    fill(0,255,0);
    printResults("You win! Now go touch some grass.");
  }
    
    //Computer wins
  if((playerChoice == 1 && computerChoice == 2) ||
  (playerChoice == 3 && computerChoice == 1) ||
  (playerChoice == 2 && computerChoice == 3)) {
    fill(255,0,0);
      printResults("HAHAHHAHA YOU LOST L BOZO L L L L");

    }
}
  void printResults(String zin){
    textSize(width/17);
    textAlign(CENTER);
    text(zin, width/2, height/3);
     if(keyPressed) {
      // reset
      playerChoice = 0;
      computerChoice = 0;
  }
 }
