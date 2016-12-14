PImage img,imageinverse;
void setup () {
  size (405, 460);
 img = loadImage ("circuit.jpg");
 imageinverse = loadImage ("circuit2.jpg");

}

int value = 0;

void draw(){
  if(value == 0){
    image(img,0,0);
  }
  else if(value == 1){
   image(imageinverse,0,0);
  }else{
    image(img,0,0);
  }
}

void mousePressed(){
  value = value + 1;

  if(value > 2){
    value = 0;
  }
}