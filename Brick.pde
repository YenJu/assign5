class Brick{
int IX;
int IY;
int brickWidth;
int brickHeight;
int NumInRow;
int num;

void display(int colorB){
  fill(255);
  stroke(colorB);
for(int i =0;i<num;i++){
  int row =i /NumInRow;
  int col = i% NumInRow;
   
   int x = IX + brickWidth * col;
   int y = IY + brickHeight *row;
   rect (x,y, brickWidth,brickHeight);
   
  
 }
} 

Brick(){
IX = 125;
IY = 60;
brickWidth = 44;
brickHeight = 25;
NumInRow = 10;
num = 50;
}


}
