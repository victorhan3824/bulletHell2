
//enemy1 ==============================================================================
class Enemy1 extends GameObject {
  
  Enemy1() {
    super(random(30,width-30), -30, 0, 2, 60, 2, enemy1);
  }
  
  void act() {
    super.act();
    
    //shoot
    if (frameCount%(int) random(30, 50) == 0) objects.add(new EnemyBullet(x, y, 0, 10));
    if (frameCount%(int) random(30, 50) == 0) objects.add(new EnemyBullet(x+50, y, 0, 10));
    
    //collision ======================================================================
    int i = 0;
    while(i < objects.size()) {
      GameObject obj = objects.get(i); //takeout the "i"th object in the objects list
      if (obj instanceof Bullet) { //if obj that we took out is of Bullet class
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0; //removing the bullet that we shot the enemy with
        } 
      }
      i++;
    }
    //remove if goes off screen
    if (offScreen()) lives = 0;
  }
}

//enemy2 ==============================================================================
class Enemy2 extends GameObject {
  Enemy2() {
    super(random(20,width-20), -15, 0, 5, 40, 1, enemy2);
    //x,y,vx,vy,size,lives,display
  }
  
  void act() {
    super.act();
    
    //shoot
    if (frameCount%(int) random(20, 30) == 0) objects.add(new EnemyBullet(x+17, y+15, 0, 10));
    
    //collision ======================================================================
    int i = 0;
    while(i < objects.size()) {
      GameObject obj = objects.get(i); //takeout the "i"th object in the objects list
      if (obj instanceof Bullet) { //if obj that we took out is of Bullet class
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0; //removing the bullet that we shot the enemy with
        } 
      }
      i++;
    }
    //remove if goes off screen
    if (offScreen()) lives = 0;
  }
}
