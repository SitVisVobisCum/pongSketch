class Paddle {
  int x;
  int y;
  int wid;
  int hei;
  String direction;
  
  // Constructor method. It takes a parameter for the X position of this Paddle.
  Paddle(int startingX) {
 x=startingX;
 y=height/2;
 wid=8;
 hei=50;
    direction = "still";
  }
  
  // If the `direction` variable is "up", decrease the y coordinate.
  // If the `direction` variable is "down", increase the y coordinate.
  void update() {
    if (direction == "up"){
    y = y - 15 ;
    }
    if (direction == "down"){
    y = y + 15;
    }
  }
  
  int getLeftSide() {
    return x;
  }
  int getRightSide() {
    return x + wid;  
  } 
  int getTopSide() {
    return y;
  }
  int getBottomSide() {
    return y + hei;
  }
  void setDirection(String d) {
    direction = d;
  }
  
  // Display method. No need to make changes.
  void display() {
  pushMatrix();
  translate(x,y);
  rect(0,0,wid,hei);
  popMatrix();
  }
}