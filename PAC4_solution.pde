boolean run;

void setup() { 
  size(600, 400); 
  frameRate (20);

  run = false;
}

void draw() { 
  background(0, 0, 0); 
  
  stroke(250, 0, 0); //Dibuixem el circuit
  line(150, 250, 150, 300);
  line(150, 300, 450, 300);
  line(450, 300, 450, 100);
  line(450, 100, 150, 100);
  line(150, 100, 150, 150);
  
  line(150, 250, 100, 200); //Dibuixem l'interruptor
  
  fill(250, 0, 0);
  rect (290, 290, 50, 30); //Dibuixem la resistència vermella
  
  fill(0, 0, 0);
  ellipse (300, 100, 50, 50); //Dibuixem la bombeta negra

  if (run == true){ //Quan fem click amb el mouse
  
   stroke(0, 0, 0); //Tanquem el circuit
   line(150, 250, 100, 200);
   stroke(250, 0, 0);
   line(150, 250, 150, 150);
   
   fill(0, 250, 0); //La bombeta s'encén
   ellipse (300, 100, 50, 50);
   
   fill(250, 0, 0); //assegurem que la resistència no canvia de color
   rect (290, 290, 50, 30);
   
   
  } else{ //Quan tornem a fer click
  
   stroke(250, 0, 0); //Obrim el circuit
   line(150, 250, 100, 200);
   stroke(0, 0, 0);
   line(150, 250, 150, 150);
    
   stroke(250, 0, 0); //La bombeta s'apaga
   fill(0, 0,0); 
   ellipse (300, 100, 50, 50);
  }
  
  
}

void mousePressed() { //Cada cop que fem click canvia el valor de la variable run
  if (run == true){
    run = false;
  }else{
    run = true;
  }
}
