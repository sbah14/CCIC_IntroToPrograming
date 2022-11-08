String [][] gameBoard = {
  {" ", " ", " "}, 
  {" ", " ", " "},
  {" ", " ", " "}
};
int value = 0;
void setup(){
  size(400,400);
  drawGameBoard();
  playerMove();
}
void drawGameBoard(){
 rect(0,0,400,400);
 fill(0,0,0);
 rect(0,125,400,10);
 rect(0,250,400,10);
 rect(125,0,10,400);
 rect(250,0,10,400);
}
void draw(){
  fill(value);
  noStroke();
  rect(25,25,50,50);
  line(mouseX, 20 , mouseX, 80);
  line(20, mouseY, 80, mouseY);
}
void mouseClicked(){
  if (value == 0){ 
    value = 255;
  }else{
    value = 0;
    println("X" + mouseX);
    println("Y" + mouseY);
  }
}
void playerMove(){
  if (mouseX<125 && mouseY<125 && mouseX>0 && mouseY>0){
    gameBoard[0][0]="X";
    textSize(125);
    text("X", 125, 120);
  }else if(mouseX<250 && mouseY<125 && mouseX>0 && mouseY>0){
    gameBoard[0][1]="X";
    textSize(125);
    text("X", 125, 120);
  }else if(mouseX<400 && mouseY<125 && mouseX>0 && mouseY>0){
    gameBoard[0][2]="X";
    textSize(125);
    text("X", 1, 250);
} 
}
