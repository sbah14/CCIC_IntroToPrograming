String [][] mtx1 = {
  {"0", " ", "0"},
  {" ", "-", " "},
  {"\\", "_", "/"}
};
String [][] mtx2 = {
  {"_", " ", "_"},
  {" ", "-", " "},
  {"/", "-", "\\"}
};
int endNum = 10000; //value that keeps loop from ending. 
int i = 0; 
//beginning of loop.
while (i < 10){
if(i < endNum){
  delay(500); //delay used to stop code for .5 seconds
  println(""); //used to add space between matrices
  for (int row = 0; row <= 2; row++){
  for (int col = 0; col <= 2; col++){
    print(mtx1 [row][col]); 
  }//loop for the first matrix
  println("");
  }
delay(500);
println("");
for (int r = 0; r <= 2; r++){
  for (int c = 0; c <= 2; c++){
    print(mtx2[r][c]);
  }//loop for second matrix
  println("");
} 
}
}
