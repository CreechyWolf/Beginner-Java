int size = 20;
int x;
int y;

void setup()
{
  size (2000,1000); //size of canvas
  cars(); //call cars
}

void cars()
{
  
  for(x = 20; x < 900; x = x + 100){ //for loop for column
    for(y = 50; y < 500; y = y + 100){ // for loop for rows
      car();
  }
 }
  
}

void car() //calling all the other functions
{
  top(x, y, size*2); //passing paramter values
  body(x, y, size*2);
  wheels(x, y+70, size);
  smallwheels(x, y+70, size/2);
}

void top(int x, int y, int size) 
{
  //top box of the car
  fill(128);
  rect(x+10,y-10, size,size);
}

void body(int x, int y, int size)
{
  //bottom box of the car
  fill(128);
  rect(x-10,y+30, size+40,size);
}

void wheels(int x, int y, int size)
{
  //both outer circles for wheels
  fill(0);
  ellipse(x,y,size,size);
  ellipse(x+60,y,size,size);
}

void smallwheels(int x, int y, int size)
{
  //both small circles within the wheels
  fill(255);
  ellipse(x,y,size,size);
  ellipse(x+60,y,size,size);
}
