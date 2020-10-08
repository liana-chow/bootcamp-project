class Flower{
  int xCenter;
  int yCenter;
  int maxHeight;
  int bloomed;
  int stemWidth = 10;
  color stem = #48AF39;
  color petals = #F8FFF7;
  color center = #F2DF49; //all the variables needed
  
  Flower(int xCenter, int yCenter){ 
    this.xCenter = xCenter;
    this.yCenter = yCenter;
    this.maxHeight = round(random(100,300));
    this.bloomed = 0;
    noStroke();
    fill(stem);
    rect(xCenter-10, yCenter, stemWidth, 500);
  } //initalizing
  
  void bloom(){
    int circleSize = 20;
    noStroke();
    fill(petals);
    circle((xCenter-5)+(circleSize/2), yCenter+(circleSize/2), circleSize);
    circle((xCenter-5)-(circleSize/2), yCenter-(circleSize/2), circleSize);
    circle((xCenter-5)+(circleSize/2), yCenter-(circleSize/2), circleSize);
    circle((xCenter-5)-(circleSize/2), yCenter+(circleSize/2), circleSize);
    //drawing all the petals
    fill(center);
    circle((xCenter-5),yCenter,circleSize);
    //the entire flower has been drawn
  }
  
  void grow(){
      yCenter = yCenter-1;
      noStroke();
      fill(stem);
      rect(xCenter-10, yCenter, stemWidth, 500); //growing the stem by slowly decreasing the y-coordinate.
  }
}
