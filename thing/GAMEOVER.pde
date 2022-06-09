void gameover() {
  background(red);
  
  //text
  fill(lightGray);
  textSize(99);
  text("GAMEOVER",width/4,height/2);
  textSize(24);
  fill(white);
  text("Back to start",width/4,height*2/3);
}

void gameoverClick() {
  mode = INTRO;
  reset();
  
}
