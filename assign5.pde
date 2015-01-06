Ball theBall;
Bar theBar;
Brick theBrick;

//game status
final int GAME_START   = 0;
final int GAME_PLAYING = 1;
final int GAME_PAUSE   = 2;
final int GAME_WIN     = 3;
final int GAME_LOSE    = 4;
int status;//Game Status

void setup(){
size(640,480);
status = GAME_START;
theBall = new Ball(360,240);
theBar = new Bar();
theBrick = new Brick();
}
void draw(){
  
background(0);

   switch(status){ 
     case GAME_START:
     printText(320,180,320,220,"START","Press ENTER to Start",60) ;
     break;
     case GAME_PLAYING:
     
     background(0);
     drawLife(200);
     drawBall();
     drawBar();
     drawBrick();
     
     
     
    
     break;
     case GAME_PAUSE:
     printText(320,180,320,220,"PAUSE","Press ENTER to Pause",40);
     break;
     case GAME_WIN:
     printText(320,300,320,340,"WINNER","YOU WIN!!",40);
     break;
     case GAME_LOSE:
     printText(320,180,320,220,"BOOM","You are dead!!",40);
     break;
     
}
}

void printText(int x1,int y1,int x2,int y2,String title,String subtitle,int i){
   
    textSize(i);
    fill(95,194,226);
    textAlign(CENTER,CENTER);
    text(title,x1,y1);
    
    textSize(20);
    textAlign(CENTER,CENTER);
    text(subtitle,x2,y2);
}
void statusCtrl() {
  if (key == ENTER) {
    switch(status) {

    case GAME_START:
      status = GAME_PLAYING;
      
      break;
    case GAME_PLAYING:
     background(50,50,50);
     drawLife(200);
     drawBall();
     drawBar();
     drawBrick();
     break;
         }
  }
}
void keyPressed(){
 statusCtrl();
 }
void drawBall(){
  theBall.move();
  theBall.display(255,255);
  //hit test

  
}
void drawBar(){
  theBar.move();
  theBar.display(50,0,255);
  
}
void drawLife(int col) {
  fill(col,0,0);
  text("LIFE:", 36, 455);
  /*---------Draw  Life---------*/
  
  int lifeIX = 78;
  int lifeIY =459;
  int spacing = 25;
  for(int i =0; i<3;i++){
  int x = lifeIX+i*spacing;
  int y = lifeIY;
  ellipse(x,y,15,15);
 }
}
void drawBrick(){
  theBrick.display(0);
    

}
void mouseClicked(){
if(status == GAME_PLAYING){
theBall.mouseClicked();}
}
