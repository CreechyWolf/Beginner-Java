class arrow
{
 int x;
 int y;
 PImage topr, topl, botr, botl; //storing images
 int speedx = 1;
 int speedy = -1;
 
arrow(int x, int y, int speedx,  int speedy){ //constructor for positions and speed
    this.x = x;
    this.y = y;
    this.speedx = speedx;
    this.speedy = speedy;
  
    topr = loadImage("topright.png"); //loads from .pde source code directory
    topl = loadImage("topleft.png");
    botr = loadImage("bottomright.png");
    botl = loadImage("bottomleft.png");
 }
 
 void render()
 {
    imageMode(CENTER);
    
    if(speedx>0 && speedy<0){ //check for moving top right
      image(topr,x,y); //topr image
    } 
    if(speedx<0 && speedy>0){
      image(botl,x,y);
    }
    if(speedx<0 && speedy<0){
      image(topl,x,y);
    }
    if(speedx>0 && speedy>0){
      image(botr,x,y);
    }    
 }
 
 void move(){
   x = x + speedx; //moves the arrows x position according to speed
   y = y + speedy;
    
    if(this.x >= 950){ //collision detection for right wall
      speedx = speedx * -1;
    }
    if(this.x <= 50){ //collision detection for left wall
      speedx = speedx * -1;
    }
    if(this.y <= 50){ //collision detection for top wall
      speedy = speedy * -1;
    }
    if(this.y >= 950){ //collision detection for bottom wall
      speedy = speedy * -1;
    }
 }
 
 void collisionCheck(arrow other){
   if(this.x+100 > other.x && this.x < other.x+100){ //checks if this objects x position overlaps other objects x position 
     if(this.y+100 > other.y && this.y < other.y+100){ //checks if this objects y position overlaps other objects y position
       this.speedx = speedx * -1; //reverses direction
       this.speedy = speedy * -1;
     }
   }
 }
 
 void update(){
   move();
   render();
 }
 
} //end of class description
