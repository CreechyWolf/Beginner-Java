int x;
int y;
int size=15;
int edge=30;

size(400,400); //set size of canvas screen

for (y=10; y<300; y = y+20){ //loop for creating rows
  for (x=10; x<300; x = x+60){ //loop for creating columns
  ellipse(x,y, size,size); //left circle of dumbell
  ellipse(x+edge,y, size,size); //right circle of dumbell
  line(x,y, x+edge,y); //line for dumbell
  }
}
