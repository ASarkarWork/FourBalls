import java.util.ArrayList;

final int WIDTH = 800;
final int HEIGHT = 600;
final int BALL_RADIUS = 15;

ArrayList<Float> ball1s = new ArrayList<>();
ArrayList<Float> ball2s = new ArrayList<>();
ArrayList<Float> ball3s = new ArrayList<>();
ArrayList<Float> ball4s = new ArrayList<>();

void setup() {
  //
}
void settings() {
  size(WIDTH, HEIGHT);
}
void updateBall(ArrayList<Float> positions, float speed) {
  if(positions.isEmpty()) {
    positions.add(0.0);
    return;
  }
  
  float last = positions.get(positions.size() - 1);
  
  positions.add(last + speed);
}
void drawBalls(ArrayList<Float> positions, float ht) {
  for(float x: positions) {
    circle(x, ht, BALL_RADIUS);
  }
}
void draw() {
  background(0);
  
  updateBall(ball1s, 1.0f);
  updateBall(ball2s, 2.0f);
  updateBall(ball3s, 3.0f);
  updateBall(ball4s, 4.0f);
  
  drawBalls(ball1s, HEIGHT * (1.0f/5));
  drawBalls(ball2s, HEIGHT * (2.0f/5));
  drawBalls(ball3s, HEIGHT * (3.0f/5));
  drawBalls(ball4s, HEIGHT * (4.0f/5));
}
