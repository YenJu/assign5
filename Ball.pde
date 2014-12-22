class Ball{
//property
float x;
float y;
float xSpeed;
float ySpeed;
float size;
Boolean going = true;


void move(){
x+=xSpeed;
if(x>width){
xSpeed *= -1;}
if(x<0){
xSpeed *= -1;}
y+=ySpeed;
if(y>height){
ySpeed *= -1;}
if(y<0){
ySpeed *= -1;}
}

void display(int col,int colS){
  fill(col);
stroke(colS,0,0);
if(going){
ellipse(mouseX,410,size,size);}
else{ellipse(x,y,size,size);
}
}
void mouseClicked(){
if(going =false){
  ellipse(x,y,size,size);
}}
//constructor
Ball(int IX,int IY){
x = IX;
y = IY;
xSpeed =10;
ySpeed = 10;
size = 10;
}
}
