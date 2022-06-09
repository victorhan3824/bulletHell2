void game() {
  background(black);
  
  addObjects();
  gameEngine();
  gameDebug();
  
} //end of the drawing part ======================================================

void addObjects() { //------------------------------------------------------------
  //adding the star into the stars list
  objects.add(0, new Star());
  //adding enemies
  if (frameCount % 100 == 0) objects.add(new Enemy1());  
  if (frameCount % 30 == 0) objects.add(new Enemy2());    
}

void gameEngine() { //------------------------------------------------------------
  //get the stars to drop and die
  int i = 0;
  while (i < objects.size()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();
    if (s.lives == 0) objects.remove(i);
    else i++;
  }  
}

void gameDebug() { //-------------------------------------------------------------
  //stat
  if (statCounter > 0) {
    fill(255);
    textSize(15);
    text("Framerate: " + frameRate,40,20);
    text("Star amount: " + objects.size(),40,40);
    text("X Coordinate: " + player1.x,40,60);
    text("Y Coordinate: " + player1.y,40,80);
    text("Lives: " + player1.lives,40,100);
    text("Time: " + hour() + ":" + minute() + ":" + second(), 40, 120);
    text("Score: " + frameCount/10, 40, 140);
  }  
}
//end of sub-functions ===========================================================

void gameClick() {
  mode = OVER;
}
