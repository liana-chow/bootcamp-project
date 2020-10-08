float randomized = random(5,10);
int howMany = round(randomized); //ensuring whole flowers are formed
Flower[] flowerGarden = new Flower[howMany]; //global array where the objects are stored
boolean [] hasBloomed = new boolean[howMany];
boolean allBloomed = false; //used to verify if all flowers have bloomed

void setting(){
  noStroke(); //putting the background into a function
  fill(#57CADE); 
  rect(0,0,800,500); //sky
  fill(#48AF39);
  rect(0,400,800,100); // grass
}

void setup(){
  size(800, 500); //setting canvas size
  setting(); //initial background drawn
  for (int i = 0; i<howMany;i++){
    flowerGarden[i] = new Flower(round((i+1)*75), (round(random(325,375))));
  } //creating the flowers into the array
}

void draw(){
  frameRate(45);
  for (int i = 0; i < howMany;i++){
    if ((dist(flowerGarden[i].xCenter, flowerGarden[i].yCenter, mouseX, mouseY)< 25) && (flowerGarden[i].maxHeight<flowerGarden[i].yCenter)){
      flowerGarden[i].grow();
    } //checking if they have already reached their max height
    if(flowerGarden[i].maxHeight==flowerGarden[i].yCenter){
      flowerGarden[i].bloom();
      hasBloomed[i] = true; //if they have reached their full height then they will bloom
    }
  }
  for (int i = 0; i < howMany;i++){
    if (hasBloomed[i] == true){ //checking if all have bloomed
      allBloomed = true;
    } else {
      allBloomed = false; 
    }
  }
  if(allBloomed == true){ //if all have bloomed, display the text
    textAlign(CENTER);
    textSize(32);
    fill(#FCFCFC);
    text("Grow at your own pace...", 400,450);
  }
}
