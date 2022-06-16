 
class Flame extends GameObject{  
  //constructors
  int n;
  
  Flame(GameObject obj) {
    super(obj.x, obj.y, 0, 0, obj.size, 1, explosion[0]);
    n = 0;
  }
  
  //behavior functions
  void act() {  
    super.act();
    display = explosion[n];
    n++;
    
    if (n >= 12) {
      lives=0;
      n=0;
    }
  }
}
