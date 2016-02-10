import ddf.minim.*;
Minim minim; 
AudioPlayer song;
int tilt=0;
int inc=0;
PImage pictureOfRecord;
void setup(){
  pictureOfRecord= loadImage("record.jpg");
  size(pictureOfRecord.width,pictureOfRecord.height);
  minim = new Minim(this);
  song = minim.loadFile("The_Darkness.mp3", 512);//in the setup method
}
void draw(){
  inc=mouseY/10;
  background(255);
  if(mousePressed){
    tilt+=inc;
    song.play();
  }else{
    song.pause();
  }
  rotateImage(pictureOfRecord,tilt);
  image(pictureOfRecord,0,0);
  textSize(20);
  fill(255,0,0);
  rotateImage(pictureOfRecord,tilt-(tilt*2));
  text("Click to play, move mouse up and down",10,20);
  text("to change speed",10,45);
}
     
void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}

