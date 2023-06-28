static final float DEFAULT_RADIUS = 15;
class Ball {
  float x, y;
  ArrayList<Float> history;
 
  public Ball(float x, float y) {
    this.x = x;
    this.y = y;
    
    history = new ArrayList<>();
    
  }
  public void update(float speed) {
     x += speed;
     history.add(x);
  }
  public void draw() {
    for(float prev: history) {
      circle(prev, y, DEFAULT_RADIUS);
    }
  circle(x, y, DEFAULT_RADIUS);
  }
}
