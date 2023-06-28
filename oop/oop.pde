import java.util.ArrayList;

private final int WIDTH = 800;
private final int HEIGHT = 600;

private ArrayList<Ball> balls;

void setup() {
 balls = new ArrayList<>();
 
 balls.add(new Ball(0.0f, HEIGHT * (1.0f / 5)));
 balls.add(new Ball(0.0f, HEIGHT * (2.0f / 5)));
 balls.add(new Ball(0.0f, HEIGHT * (3.0f / 5)));
 balls.add(new Ball(0.0f, HEIGHT * (4.0f / 5)));
 
 
}
void settings() {
  size(WIDTH, HEIGHT);
}

void draw() {
  background(0);

  for(int i = 0; i < balls.size(); i++) {
    Ball current = balls.get(i);
    current.update((float) (i + 1));
    current.draw();
  }
  
 
}
