/*
   ::::::..      ::::::  ::    ::  ::::::
 ::: :::::::     ::      ::    ::  ::
 :::       ::    ::::::  ::    ::  ::::::
 ::: :::::::         ::  ::.  .::      ::
 :::.....::      ::::::    ::::    ::::::
 :::.....::
 :::     ::                                 
 */

//color pallette =======================================================
color white      = #FFFFFF; 
color red        = #FF0000;
color pink       = #FF6ABC;
color lightBlue  = #00FCEE;
color brown      = #9F642C;
color blue       = #324BE3;
color gray       = #818183;
color lightGreen = #00FF00;
color medGreen   = #006C27;
color yellow     = #F6FF05;
color orange     = #FF7E05;
color darkBrown  = #341F18; 
color black      = #000000;      
color lightGray  = #939393;

// variables ==================================================
final int INTRO = 0;
final int GAME  = 1; 
final int OVER  = 2;
final int PAUSE = 3;
int mode; 

//class initialization
ArrayList<GameObject> objects;
Starship player1;

//keyboard variable
boolean up, down, left, right, space;
boolean stat;

//misc variables
PFont AVA;
PImage spaceship, myLaser;
PImage enemy1, enemyBullet, enemy2;
int statCounter;

//intro gif stuff
PImage[] introGif;
int frameNum;

//setup, draw, mouse ===================================================
void setup() {
  fullScreen();  
  mode = INTRO; 
  textAlign(CORNER, CENTER);
  rectMode(CENTER);
  
  //intro gif stuff
  frameNum = 50;
  introGif = new PImage[frameNum];
  int i = 0;
  for (int a=0; a < 5; a++) {
    for (int b=0; b < 10; b++) {
      introGif[i] = loadImage("introGif/frame_0"+a+b+"_delay-0.04s.gif");
      i++;
    }
  }
  
  //text, fonts, images
  AVA = createFont("AVA.ttf", 169);
      //player ship
  spaceship = loadImage("spaceship.png");
  myLaser = loadImage("myLaser.png");
      //Non-player entities  
  enemy1 = loadImage("enemy1.png");
  enemy2 = loadImage("enemy2.png");
  enemyBullet = loadImage("enemy1Laser.png");

  /*this code can now be found MISC tab, under function void reset() {}
  //class initalization input
  objects = new ArrayList<GameObject>();
  player1 = new Starship();
  objects.add(player1);
  
  //misc
  statCounter = 1;
  */
  reset();
}

void draw() {
  if (mode == INTRO)        intro();
  else if (mode == GAME)     game();
  else if (mode == OVER) gameover();
}

void mouseClicked() {
  if (mode == INTRO)        introClick();
  else if (mode == GAME)     gameClick();
  else if (mode == OVER) gameoverClick();
}
