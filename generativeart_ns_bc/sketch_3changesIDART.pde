final int MAX_CIRCLE_CNT = 2500, MIN_CIRCLE_CNT = 100, 
  MAX_VERTEX_CNT = 30, MIN_VERTEX_CNT = 3;

color c = color(0,0,0);
int circleCnt, vertexCnt;
void setup() {
  size(700, 700);  
}

void draw() {
  
  if (mousePressed)
  {
    c = color(random(0,255),random(0,255),random(0,255));  //change color when pressed or held
  }   
  
  background(0);
  translate(width / 2, height / 2);

  updateCntByMouse();

  for (int ci = 0; ci < circleCnt; ci++) {
    float time = float(frameCount) / 20;
    float thetaC = map(ci, 0, circleCnt, 0, TAU); //looks like this makes up a number of how many shapes they'll be
    float scale = 300;

    PVector circleCenter = getCenterByTheta(thetaC, time, scale);
    float circleSize = getSizeByTheta(thetaC, time, scale);
  
    stroke(c);
    noFill();
    beginShape();
    for (int vi = 0; vi < 5; vi++) { // the '5' here and in the next line together made it so the shape never changed and stayed at 5 sides
      float thetaV = map(vi, 0, 5, 0, TAU);
      float x = circleCenter.x + cos(thetaV) * circleSize;
      float y = circleCenter.y + sin(thetaV) * circleSize;
      vertex(x, y);
    }
    endShape(CLOSE);
  }
}
void updateCntByMouse() 
{
  float xoffset = abs(mouseX - width / 2), yoffset = abs(mouseY - height / 2);
  circleCnt = 500;//int(map(xoffset, 0, width / 2, MAX_CIRCLE_CNT, MIN_CIRCLE_CNT)); // setting this to 150 changed how many shapes there were instead of randomizing
  vertexCnt = int(map(yoffset, 0, height / 2, MAX_VERTEX_CNT, MIN_VERTEX_CNT));
}

PVector getCenterByTheta(float theta, float time, float scale) 
{
  PVector direction = new PVector(cos(theta), sin(theta));
  float distance = 0.6 + 0.2 * cos(theta * 6.0 + cos(theta * 8.0 + time));
  PVector circleCenter =PVector.mult(direction, distance * scale);
  return circleCenter;
}

// this is what gets the shapes to continually change sizes
float getSizeByTheta(float theta, float time, float scale) 
{ 
  float offset = 0.2 + 0.12 * cos(theta * 9.0 - time * 2.0);
  float circleSize = scale * offset;
  return circleSize;
}
//so this would be what gets the shapes to change color, correct
//color getColorByTheta(float theta, float time) 
//{
  //float th = 8.0 * theta + time * 2.0;
  //float r = 0.6 + 0.4 * cos(vertexCnt), 
  //  g = 0.6 + 0.4 * cos(circleCnt / 3), 
   // b = 0.6 + 0.4 * cos(circleCnt * 2.0 / 3.0), 
  //  alpha = map(circleCnt, MIN_CIRCLE_CNT, MAX_CIRCLE_CNT, 150, 30);
// return color(r * 255, g * 255, b * 255, alpha);
//}

//void mouseClicked(){
//  rotate(PI/3.0);
//}
