int tool = 0;
int red = 0;
int green = 0;
int blue = 0;

void setup() {
 size(1200,800);
 background(255);
 textSize(50);
}

void draw() {
  //Tools
    pencil();
    eraser();
  //Buttons
    design();
    pencilButton();
    eraserButton();
    colorSelector();
}

//------------Tools----------------

void pencil(){
  stroke(red,green,blue);
  strokeWeight(1);
  if(mousePressed && tool == 0){
    line(mouseX, mouseY, pmouseX, pmouseY);
 }
}

void eraser(){
   strokeWeight(5);
   if(mousePressed && tool == 1){
     stroke(255);
     noFill();
     rect(mouseX,mouseY,10,10);
   }
}

//-----------Buttons--------------------

void design(){
  strokeWeight(5);
  stroke(0);
  line(1000,0,1000,800);
}

void pencilButton(){
    strokeWeight(1);
    stroke(0);
    noFill();
    rect(1025,25,50,50);
    fill(0);
    text("P", 1035,70);
    if(mousePressed && mouseX > 1025 && mouseX < 1075 && mouseY > 25 && mouseY < 75){
      tool = 0;
    }
}

void eraserButton(){
  strokeWeight(1);
  stroke(0);
  noFill();
  rect(1100,25,50,50);
  fill(0);
  text("E",1110,70);
  if(mousePressed && mouseX > 1110 && mouseX < 1150 && mouseY > 25 && mouseY < 75){
    tool = 1;
  }
}

void colorSelector(){
  //All of them
  strokeWeight(1);
  stroke(0);
  //Red button
  noFill();
  rect(1025,745,40,40);
  fill(255,0,0);
  ellipse(1045,765,30,30);
  if(mousePressed && mouseX > 1025 && mouseX < 1065 && mouseY > 745 && mouseY < 785){
    red = 255;
    green = 0;
    blue = 0;
  }
  //Green button
  noFill();
  rect(1075,745,40,40);
  fill(0,255,0);
  ellipse(1095,765,30,30);
  if(mousePressed && mouseX > 1075 && mouseX < 1115 && mouseY > 745 && mouseY < 785){
    red = 0;
    green = 255;
    blue = 0;
  }
  //Blue button
  noFill();
  rect(1125,745,40,40);
  fill(0,0,255);
  ellipse(1145,765,30,30);
  if(mousePressed && mouseX > 1125 && mouseX < 1165 && mouseY > 745 && mouseY < 785){
    red = 0;
    green = 0;
    blue = 255;
  }
  //Yellow button
  noFill();
  rect(1025,695,40,40);
  fill(246,255,3);
  ellipse(1045,715,30,30);
  if(mousePressed && mouseX > 1025 && mouseX < 1065 && mouseY > 695 && mouseY < 735){
    red = 246;
    green = 255;
    blue = 3;
  }
  //Black button
  noFill();
  rect(1075,695,40,40);
  fill(0,0,0);
  ellipse(1095,715,30,30);
  if(mousePressed && mouseX > 1075 && mouseX < 1115 && mouseY > 695 && mouseY < 735){
    red = 0;
    green = 0;
    blue = 0;
  }
  //Orange button
  noFill();
  rect(1125,695,40,40);
  fill(255,154,3);
  ellipse(1145,715,30,30);
  if(mousePressed && mouseX > 1125 && mouseX < 1165 && mouseY > 695 && mouseY < 735){
    red = 255;
    green = 154;
    blue = 3;
  }
}
