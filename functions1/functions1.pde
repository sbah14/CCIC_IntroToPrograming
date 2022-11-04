String [][] face = {
  {" ", "*", " ", "*", " "},
  {" ", " ", "*", " ", " "},
  {"|", "_", "_", "_", "|"}
};

void setup () {
  for (int i = 0; i < 10000; i++){
  wink();
  drawSmiley();
  delay(500);
  openEye();
  drawSmiley();
  clearConsole();
}
}
void drawSmiley(){
  for (int row = 0; row < face.length; row++){
  for (int col = 0; col < face[row].length; col++){
    print(face [row][col]); 
  }
  println("");
  }
}
void wink(){
    face[0][3]=("-");
}
void openEye(){
  face[0][3]=("*");
}
void clearConsole(){
println();
println();
println();
println();
}
