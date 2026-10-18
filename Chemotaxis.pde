Bacteria[] bacteria = new Bacteria[100];

void setup() {
  size(500, 500);
  for (int i = 0; i < bacteria.length; i++) {
    bacteria[i] = new Bacteria(
      (int)(Math.random() * width),
      (int)(Math.random() * height),
      color(100, 255, 0)
    );
  }
}

void draw() {
  background(255);

  for (int i = 0; i < bacteria.length; i++) {
    bacteria[i].move();
    bacteria[i].show();
  }
}

class Bacteria {
  int x; 
  int y; 
  int c;

  Bacteria(int startX, int startY, int bacteriaColor) {
    x = startX;
    y = startY;
    c = bacteriaColor;
  }

  void move() {
    x += (int)(Math.random() * 3) - 1;
    y += (int)(Math.random() * 3) - 1;

    if (Math.random() < 0.5) {
      if (mouseX > x) {
        x++;
      } else if (mouseX < x) {
        x--;
      }
    } else {
      if (mouseY > y) {
        y++;
      } else if (mouseY < y) {
        y--;
      }
    }
  }

  void show() {
    stroke(2);
    fill(c);
    ellipse(x, y, 15, 15);
  }
}
