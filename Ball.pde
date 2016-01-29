class Ball {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  int radius;
  int counter;
  int counter2;
  
  // Constructor method. Initialize starting values.
  Ball() {
    x = 250;
    y=250;
    xSpeed=5;
    ySpeed=5;
    radius=15;
    counter=0;
    counter2=0;
  }
  
  // Flip the speed along the x axis. This method is called when the ball should bounce.
  void bounceX() {
   xSpeed=xSpeed * -1;
  }
  void speedup() {
   xSpeed=xSpeed * 1.15;
  }
  // Flip the speed along the y axis. This method is called when the ball should bounce.
  void bounceY() {
   ySpeed=ySpeed * -1;
  }
  
  // Update the x and y coordinates of the ball. Bounce on the y axis if needed.
  void update() {
   x=x+xSpeed;
   y=y+ySpeed;
   if(y+radius> height ||y-radius<0){
     bounceY();
   }
   if (x+radius>width){
     x=width/2;
     y=height/2;
     counter2++;
   }
   if (x-radius<0){
     x=width/2;
     y=height/2;
     counter++;
   }
  }
  
  void display() {
    pushMatrix();
    translate(x,y);
    ellipse(0,0,radius,radius);
    popMatrix();
    textSize(50);
    text(counter2,100,150);
    text(counter,width-100,150);
  }
  boolean overlaps(Paddle p) {
    if (x + radius > p.getLeftSide() && x - radius < p.getRightSide()) {
      if (y + radius > p.getTopSide() && y - radius < p.getBottomSide()) {
        return true;
      }
    }
    return false;
  }
}