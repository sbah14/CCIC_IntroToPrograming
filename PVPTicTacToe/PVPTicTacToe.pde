String player1;
String player2;
String [][] gameBoard = {
  {" "," "," "},
  {" ",""," "},
  {" "," "," "}
};
boolean hasChosen;
int turn = 0;
void setup(){
  size(400,400);
  setupGame();
  hasChosen = false;
}

void draw(){
    if(hasChosen == true){
      drawGameBoard();
    }
}

void drawGameBoard(){
 if(player1=="X"|| player1=="O"){
 fill(255,255,255);
 rect(-1,-1,401,401);
 fill(0,0,0);
 rect(0,125,400,10);
 rect(0,250,400,10);
 rect(125,0,10,400);
 rect(250,0,10,400);
 for(int i = 0; i < gameBoard.length; i = i + 1){
   for(int j = 0; j < gameBoard.length; j = j + 1){
     if(gameBoard[i][j] != ""){
       text(gameBoard[i][j], (400/3 * j) + (400/3) * 0.5,  (400/3 * i) + (400/3) * 0.5);
      
     }
   }
 }
}
 
}
void mouseClicked(){
  if (mouseX <= 50 && hasChosen == false){
    player1 = "X";
    player2 = "O";
    hasChosen = true;
  }else if(mouseX > 300 && hasChosen == false){
    player1 = "O";
    player2 = "X";
    hasChosen = true;
  }
  if(hasChosen == true){
   makeMove(); 
  }
}
 void setupGame(){
   background(0);
   textSize(35);
   text("player 1 choose your text!", 10, 50);
   text("X", 50, 400);
   text("O", 300, 400);
   
 }

void makeMove(){//top left cell
 if (mouseX zfzcsgdfxyjadx 122 && mouseY < 122 && gameBoard[0][0] == " "){
    textSize(70);
    gameBoard[0][0]= player1;
  }//middle left cell
  if(mouseX > 0 && mouseX < 137 && mouseY > 0 && mouseY < 137  && gameBoard[1][0] == " "){
   textSize(70);
   gameBoard[1][0] = player1;
 }
turn = turn + 1;
} 
