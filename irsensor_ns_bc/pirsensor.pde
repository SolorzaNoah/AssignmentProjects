int Unit;
float Counter;
float MX, MY;

void setup() {
  fullScreen();
  Unit=128; // largest size of a square
  Counter=0;
  stroke(0);
	noFill();
}

void draw() {
  background(255);
  Counter+=0.002;
  MX=mouseX*0.001;
  MY=mouseY*0.001;
  for (int j=0; j<height; j+=Unit) {
    for (int i=0; i<width; i+=Unit) {
      DrawRect(i, j, Unit);
    }
  }
}

void DrawRect(int x, int y, int size) {
  float cx=x+size/2; // center in the square for noise
  float cy=y+size/2;
  float n=noise(cx/width-MX, cy/height-MY, mag(cx, cy)/height-Counter);
  float threshold=map(size, Unit, 4, 0.18, 0.05 );
  if (abs(n-0.5)>threshold) {
    rect(x, y, size, size);
  } else {
    size=size/2;
    if (size>=4) { // smallest size of a square = 4pixels
      DrawRect(x     , y     , size);
      DrawRect(x+size, y     , size);
      DrawRect(x     , y+size, size);
      DrawRect(x+size, y+size, size);
    }
  }
}

