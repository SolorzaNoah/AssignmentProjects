boolean pageStarted = false;
boolean isClicked = false;
boolean levelOneBeat = false;
boolean levelTwoBeat = false;
boolean levelThreeBeat = false;
PImage img;
PImage img2;
PImage img3;

import processing.sound.*;
SoundFile file;
String audioName = "chase.mp3";
String path;
void setup(){
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();
  size(800,600);
  background(60);
  frameRate(60);
}  
void draw() {
  if(!pageStarted) {
    //Start Page
    background(255,0,255);
    fill(0,0,0);
    textSize(40);
    text("Debt Maze" , 25, 150);
    textSize(20);
    text("hint on lvl 2 press left button immediately", 100, 100);
    textSize(1);
    img = loadImage("bulb_yellow.png");
    image(img,220,110);
    img2 = loadImage("Loans.jpg");
    image(img2,300,300);
    img3 = loadImage("money.jpg");
    image(img3,520,100);
    rect(30,500,150,60);
    fill(255,255,255);
    textSize(45);
    text("Start" , 50, 550);
    if ( mouseX > 30 && mouseX < 180 && mouseY > 500 && mouseY < 560 ) {
    if (mousePressed && (mouseButton == LEFT)) {
      pageStarted = true;
    }
  } 
  } else if (pageStarted = true) {
      noCursor();
    //LevelOne
      background(30);
      fill(0,255,255);
      stroke(0);
      ellipse(mouseX,mouseY,10,10);
      fill(0,0,0);
      rect(0, 0, 700, 200);
      rect(200, 300, 600, 300);
      rect(0, 200, 50, 400);
      rect(750, 0, 50, 400);
      fill(0,255,255);
      rect(700,0,50,30);
      if ( mouseX > 750 || (mouseX < 700 && mouseY < 200) || mouseX < 50 || ( mouseX > 200 && mouseY > 300) ) {
        pageStarted = false;
        cursor();
       }
      if ( mouseX > 700 && mouseX < 750 && mouseY < 30 ) {
        levelOneBeat = true;
      }

   }
      if ( levelOneBeat != false ) {
        noCursor();
        text("x: "+mouseX+" y: "+mouseY, 10, 15);
        textSize(200);
        //LevelTwo 
        background(60);
        fill(0,255,255);
        stroke(0);
        ellipse(mouseX,mouseY,10,10);
        fill(0,0,0);
        rect(0, 0, 20, 600);
        rect(750, 0, 50, 530);
        rect(0,0,700,20);
        rect(50,60,700,50);
        rect(0,130,730,50);
        rect(50,200,700,50);
        rect(0,270,730,50);
        rect(50,340,700,50);
        rect(0,410,730,50);
        rect(50,480,700,50);
        rect(0,550,800,50);
        fill(0,0,255);
        rect(530,530,30,20);
      if ( mouseX > 750 || (mouseX < 700 && mouseY < 20) || (mouseX < 20) || (mouseX > 50 && mouseY < 110 && mouseY > 60) || (mouseX < 700 && mouseY > 130 && mouseY < 180))   {
        levelOneBeat = false;
         cursor();
       }
      if ( mouseX > 500 && mouseX < 530 && mouseY > 500 ) {
        levelTwoBeat = true;
      }
      if ( mouseX > 0 && mouseX < 1080 && mouseY > 0 ) {
    if (mousePressed && (mouseButton == LEFT)){
        levelTwoBeat = true;}}
      }
      if ( levelTwoBeat != false) {
        //levelThree
        background(60);
        fill(0,255,255);
        stroke(0);
        ellipse(mouseX,mouseY,10,10);
        fill(0,0,0);
        rect(25,100,100,20);
        rect(25,10,20,100);
        rect(25,10,100,10);
        rect(110,10,20,70);
        rect(0,150,75,10);        
        rect(150,0,20,500);
        rect(250,50,20,700);
        rect(350,0,20,500);
        rect(450,50,20,700);
        fill(0,255,255);
        rect(50,30,50,50);
        if (mouseX <100 && mouseX > 50 && mouseY > 30 && mouseY < 80 ){
          levelThreeBeat = true;}
      }
        if ( mouseX > 450 && mouseX < 470 && mouseY > 20){
          levelTwoBeat = false;
           cursor();
         }
      if ( levelThreeBeat != false ) {
        background(60);
        fill(255,0,0);
        textSize(30);
    text("Congrats! Your student loans is over 9000! " , 25, 150);
     if (keyPressed == true) {
    fill(0);
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
}
        


      }