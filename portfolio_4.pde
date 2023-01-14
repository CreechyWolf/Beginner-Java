PImage background; 
int bgX=0; //global variable background location
int gameMode = 0;

alien alien1, alien2, alien3;
defender defender1;

void setup(){
  size(800,400);
  background = loadImage("spaceBackground.jpg");
  background.resize(width,height); //set image to be same size as the canva
  alien1 = new alien();
  alien2 = new alien();
  alien3 = new alien();
  
  defender1 = new defender();
}

void draw ()
{
  if(gameMode == 0){
    //scrolling background image
    image(background, bgX, 0); //draw image to fill the canvas
    //draw image again off the right of the canvas
    image(background, bgX+background.width, 0);    
    bgX = bgX- 4;
    if(bgX == -background.width) //if first image completely off the canvas
    {
      bgX=0; //reset back to initial value background
    }
    
    alien1.update();
    alien2.update();
    alien3.update();
    
    if(alien1.crash(defender1) || alien2.crash(defender1) || alien3.crash(defender1)){
      gameMode = 1;
    }
    defender1.update();

}
  else if(gameMode == 1){
    textSize(25);
    text("game over", 400,200);
  }
}

void keyPressed()
{
  if (key==CODED)
  {
    if (keyCode == UP)
    {  
      defender1.speed(-5);
    }
    if (keyCode == DOWN)
    {  
      defender1.speed(5);
    }  
  }
}

void keyReleased()
{
  if (key==CODED)
  {
    if (keyCode == UP)
    {  
      defender1.speed(0);
    }
    if (keyCode == DOWN)
    {  
      defender1.speed(0);
    }  
  }
}
