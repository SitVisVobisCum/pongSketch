Ball ball;
Paddle paddleOne;
Paddle paddleTwo;

void setup() {
  size(750,750);
  // initialize variables (in this case paddles&ball)
  paddleOne = new Paddle(10);
  paddleTwo=new Paddle(width-20);
  ball=new Ball();
}

void draw() {
  background(0,188,20);
  fill(255);
  noStroke();
  rect(width/2,0,1,height);
  fill(255,142,49);
  // update and display paddleOne
  paddleOne.update();
  paddleOne.display();
  
  // update and display paddleTwo
 paddleTwo.update();
 paddleTwo.display();
  // check if the ball needs to bounce... don't change this....
  if (ball.overlaps(paddleOne) == true){
    ball.bounceX();
  }
  if (ball.overlaps(paddleTwo) == true){
    ball.bounceX();
  }
  if (ball.overlaps(paddleOne) && (key == 'w' || key == 's')== true){
    ball.speedup();
  }
  if (ball.overlaps(paddleTwo) && (keyCode == UP || keyCode == DOWN) == true){
    ball.speedup();
  }
  
  // update and display the ball
  ball.update();
  ball.display();
}
// Key controls... don't change a thing below here
void keyPressed() {
  if (key == 'w') {
    paddleOne.setDirection("up");
  }
  if (key == 's') {
    paddleOne.setDirection("down");
  }
  if (keyCode == UP) {
    paddleTwo.setDirection("up");
  }
  if (keyCode == DOWN) {
    paddleTwo.setDirection("down");
  }
}
void keyReleased() {
  if (key == 'w') {
    paddleOne.setDirection("still");
  }
  if (key == 's') {
    paddleOne.setDirection("still");
  }
  if (keyCode == UP) {
    paddleTwo.setDirection("still");
  }
  if (keyCode == DOWN) {
    paddleTwo.setDirection("still");
  }
  if (key == ' ') {
    setup();
  }
}