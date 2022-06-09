

class EnemyBullet extends GameObject {
  
  EnemyBullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 10, 1, enemyBullet);
  }
  
  void act() {
    super.act();
    if (y > height) lives = 0;
  }
 
}
