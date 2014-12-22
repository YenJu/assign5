class Bar{
float x;
float y;
float barThick;
float barLen;

void move(){
  x = mouseX;
  if(x<25){
    x= 25;
  }
  if(x>width-25){
  x = width-25;}
  
}
void display(float len,int col,int colS){
rectMode(CENTER);
rect(x,y,len,barThick);
fill(col);
stroke(colS);
}
Bar(){
x= mouseX;
y = 420;
barThick = 10;
}
}
