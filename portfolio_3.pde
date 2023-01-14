arrow arrow1, arrow2, arrow3, arrow4;

void setup(){
  size(1000,1000);
  arrow1 = new arrow(200,100, 5, -5); //calls an arrow facing top right, as it is moving top right
  arrow2 = new arrow(600,100, -5, -5);
  arrow3 = new arrow(500,500, -5, -5);
  arrow4 = new arrow(800,500, 5, 5);
}


void draw(){
  background(255); //screen : white

  arrow1.update(); //move and render functions
  arrow2.update();
  arrow3.update();
  arrow4.update();
  
  arrow1.collisionCheck(arrow2); //calls the collision detections
  arrow1.collisionCheck(arrow3);
  arrow1.collisionCheck(arrow4);
  
  arrow2.collisionCheck(arrow3);
  arrow2.collisionCheck(arrow4);
  arrow2.collisionCheck(arrow1);
  
  arrow3.collisionCheck(arrow4);
  arrow3.collisionCheck(arrow1);
  arrow3.collisionCheck(arrow2);
  
  arrow4.collisionCheck(arrow1);
  arrow4.collisionCheck(arrow2);
  arrow4.collisionCheck(arrow3);

}
