/* @pjs preload="flag.png"; */
PImage img;
int X=80;
int Y=80;
int bounce= 1;

void setup() {
  size(600,600);
  background(255);
  img = loadImage("frame.jpg");
  image(img,85,50);
  
textSize(70);
fill(0,102,255);
text("Thank", 230, 200);
text("You", 265, 265);
}

//anything here repeats while code is running
void draw() {
  fill(255, random(110, 255), 0);
  ellipse(350,400,150,150);
  fill(0);
  ellipse(325,380,20,20);
  fill(0);
  ellipse(380,380,20,20);
  triangle(350,420,330,395,370,395);
  line(350,440,400,420);
  line(300,420,350,440);
  fill(255);
  rect(X,Y,20,20);
  
//creates movement
  X=X+bounce;
  Y=Y+bounce;
  
//sets limits to movement
  if(X>width-165 || X<80)
  {
    bounce=bounce*(-100);
  }

  //if statement runs only when mouse is pressed
  if(mousePressed) {
    arc(185,340,100,100,160,180);
    fill(255);
    ellipse(165,325,20,20);
    ellipse(205,325,20,20);
    ellipse(185,360,30,30);
    fill(255,0,255,125);
    ellipse(245,405,100,100);
}else{
  fill(255);
}
   rect(mouseX, mouseY, 50, 50);
}
