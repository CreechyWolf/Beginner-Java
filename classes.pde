color ALIEN1 = color(0,255,0); //sets the colours of alien parts
color ALIEN2 = color(50,100,0);

class alien
{
  int x=600; //aliens spawn at x = 600
  int y=(int)random(50,350); //alien spawns randomly on the y axis between 50 and 350
  int speedx = -2;
  int speedy;

void drawAlien(){
  //draw an alien  

   fill(ALIEN1);
   ellipse(x,y,30,30);
   fill(ALIEN2);
   ellipse(x,y,50,15);
}

void render()
 {
    drawAlien();
 }

void move()
{  
  x = x + speedx;
  speedy = (int)random(-7,7); //moves randomly between -7 to 7 on x axis
  y = y + speedy;
  if(this.x <= 0){ //collision detection for left wall
      this.x = 800;
    }
  if(this.y > 400){ //collision detection for bottom wall, will be pushed up
    y = y - 7;
  }
  if(this.y < 0){ //collision detection for top wall, will be pushed down
    y = y + 7;
  }
}

void update(){
   move();
   render();
 }

 boolean crash(defender other){
   if(this.x+50 > other.x && this.x < other.x+50){ //checks if this objects x position overlaps other objects x position 
     if(this.y+20 > other.y && this.y < other.y+20){ //checks if this objects y position overlaps other objects y position
       return true;
     }
     else return false;
   }
   else return false;   
 }
}

class defender
{
  int x;
  int y;

  int speedy;
  
void drawDefender(){
   //draw a defender:x,y is top left corner, shape is from y..y+30 tall
   fill(0,0,200);
   rect(x,y,20,10); //draw top box
   fill(255,0,0); //draw rocket
   rect(x,y+10,50,20);
   triangle(x+50,y+10,x+50,y+30,x+60,y+20);
}

void render()
 {
    drawDefender();
 }

void speed(int speedy){
  this.speedy = speedy;
}  
 
void move()
{
  y = y + speedy;
  if(this.y > 370){ //collision detection for bottom wall
    y = y - 5;
  }
  if(this.y < 0){ //collision detection for top wall 
    y = y + 5;
  }
}

 void update(){
   move();
   render();
 }
}
