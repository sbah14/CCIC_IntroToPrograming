/*the aliens for the game using images rather than making a shape, 
PImage used to store the aliens rather than using another type of variable
*/
PImage img;
PImage blackImg;

PImage [][] aliens = {
  {img, img, img, img},
  {img, img, img, img},
  {img, img, img, img},
  {img, img, img, img}};

boolean clicked;

/*used to store both x and y values of the 2d matrix, 
I did this because I needed a way to in the future 
make the values stored in the matrix of the images, integers
*/
int[][][] coord = new int[4][4][2]; 

//both of these floats are to make the bullets and the rocket move
float moveX = 180.0;
float moveY = 300.0;

boolean deadAlien;

int tempI;
int tempJ;

//creates the start page and initializes the images
void setup(){
  background(0,0,0);
  size(400,400);
  startPage();
  clicked = false;
  img = loadImage("unnamed.png");
  blackImg = loadImage("Solid_black.png"); 
}
//calls the second page
void draw(){
  if(clicked == true){
    background(0);
    drawAliens();
    rocket();
  }
}

/* This function uses the 3D array coords to track the x,y coordinate of each alien being drawn.
   This method also iterates through the 2D array aliens to convert the PImages to images that can be drawn/displayed on the screen. 
*/
void drawAliens(){
  int x = 120;
  int y = 90;
  for(int i = 0; i < aliens.length; i++){
    for(int j = 0; j < aliens[i].length; j++){ 
      for(int k = 0; k < coord[i][j].length; k++){
          if(k == 0){
              coord[i][j][k] = x; // Assigning the first index to all x coordinates in the x,y pair
          }
           else{
              coord[i][j][k] = y; // Assigning the second index to all y coordinates in the x,y pair
           }
      }
      if(deadAlien){
        if(i == tempI && j == tempJ){
          aliens[i][j] = blackImg;
        }
      } 
      else{
        aliens[i][j] = img;
      }
      image(aliens[i][j], x, y, width/10, height/10);
      x = x + 40; // Creates even horizontal spacing between aliens
    }
    x = resetVal(x, 120); // Allow for the aliens to appear in a matrix format
    y = y + 40; // Creates even vertical spacing between aliens
  }
}
// This function takes two parameters, int variable and int restNum and assigns the changing variable with the int to rest it.
int resetVal(int variable, int restNum){
    variable = restNum;
    return variable;
}
  
void mouseClicked(){
  if (mouseX < 250 && clicked == false){
    clicked = true;
    background(0);
  }
}
void keyPressed(){
  moveLeft();
  moveRight();
  bullets();
}
void startPage(){
 textSize(70);
 text("Start Game!", 30, 150);
 fill(0,255,0);
 textSize(50);
 text("Start", 150, 250);
}

//This function creates a rectangle that acts are a rocket
void rocket(){
  fill(3, 252, 252);
  rect(moveX, 330, 50, 10);
}
void moveLeft(){
  if(keyCode == LEFT){
    moveX = moveX - 1;
  }
  if(moveX == 0){
  moveX = moveX + 1; // This stops the rocket from exceeding the left side if the window
}
}
void moveRight(){
  if(keyCode == RIGHT){
    moveX = moveX + 1;
  }
  if(moveX == 350){
    moveX = moveX - 1; // This stops the rocket from exceeding the right side if the window
  }
}

//This function creates a rectangle that are a bullet
void bullet(){
  fill(255, 255, 255);
  rect((moveX+25), moveY, 5, 10);
}

//This function animates the bullet. The bullet moves up the screen until it hits an alien or 95
void bullets(){
  if(keyCode == UP){ 
    while(moveY >= 80){
      bullet(); // Create a new bullet with each UP key
      boolean delete = deleteAliens();
      if (delete){
        break; /*ends the loop but, never statisifies it again since 78 >= 95 will never be true
                  I mean that is if you want continous bullets*/
      }
      moveY = moveY - 1; // Increment to move the bullet up the screen
    }
  }
}

/*This function returns a boolean to determines weither an alien has be hit or not. 
  Using the predined 3D array coord, when the bullet is in range (plus or minus 40 pixels) of the alien's x,y coordinate.  */
boolean deleteAliens(){ 
  for(int i = 0; i < aliens.length; i++){
   for(int j = 0; j < aliens[i].length; j++){ 
     for(int k = 0; k < coord[i][j].length; k++){
       if(coord [i][j][0] + 40  >= moveX &&  coord[i][j][0] <= moveX && coord[i][j][1] + 35 == moveY){
         deadAlien = true;
         tempI = i;
         tempJ = j;
         return true;
       }
     }
    }
  }
  return false;
}
