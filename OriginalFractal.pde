//PShape hexagon;
//int [] xCorners = {0, 30, 90, 120, 90, 30};
//int [] yCorners = {50, 0, 0, 50, 100, 100};
int randRed;
int randGreen;
int randBlue;

public void setup() {
  size(500, 500);
  background(#B3C9DB);
  fractal(250, 250, 200);
}
public void show() {
  //hexagon = createShape();
  //hexagon.beginShape();
  //fill(#E3B840);
  //for (int nI = 0; nI < xCorners.length; nI++)
  //  {
  //    hexagon.vertex(xCorners[nI], yCorners[nI]);
  //}
  ////endShape(CLOSE);
  ////hexagon.vertex(0, 50);
  ////hexagon.vertex(30, 0);
  ////hexagon.vertex(90, 0);
  ////hexagon.vertex(120, 50);
  ////hexagon.vertex(90, 100);
  ////hexagon.vertex(30, 100);
  //hexagon.endShape(CLOSE);
  //shape(hexagon);
}

public void draw() {
  randRed = (int)(Math.random()*137+95);
  randGreen = (int)(Math.random()*137+97);
  randBlue = (int)(Math.random()*137+97);
}

public void fractal(int x, int y, int len) {
  noStroke();
  fill((int)(Math.random()*100+100), (int)(Math.random()*137+97), (int)(Math.random()*137+97));
  if (len <= 10) {
    ellipse(x, y, len, len);
    //int [] tempXCorners = {x, x + len/2, x + (3/2*len), x+(2*len), x+(3/2*len), x+len/2};
    //int [] tempYCorners = {y, y-(5/6*len), y-(5/6*len), y, y+(5/6*len), y+(5/6*len)};
    //createShape();
    //beginShape();
    //stroke(8);
    //for (int nI = 0; nI < xCorners.length; nI++){
    //  vertex(tempXCorners[nI], tempYCorners[nI]); 
    //}
    //endShape(CLOSE);
  }
  else {
    ellipse(x, y, len, len);
    fractal((int)x - len/2, y, (int)len/2);
    fractal((int)x + len/2, y, (int)len/2);
  }
}