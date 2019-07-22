Player p;
 
void setup() {
  size(1000, 1000, P3D);
  p = new Player(width/2, height/2);
 frameRate(240);
  //frameRate(15);
}
 
void draw() {
  background(255);
  p.render();
  p.steer();
}
 
void keyPressed() {
  p.steer();
}
 
 
class Player
{
  PShape p;
  
   int cir_height=100;
   int cir_width=100;
   int cir_xpos=0;
   int cir_ypos=0;
   PImage img = loadImage("Tulips.jpg");
   float cRadius=125;
  
  
  
  
  
  
  
  float x, y;
  float v = 0.6;
  float rot;
  
  
  
  Player(float xpos, float ypos)
  {
    x = xpos;
    y = ypos;
    spawn();
    rot=0;
  }  
  void spawn()
  {
    
    stroke(15,10,20);
    strokeWeight(0);
    textureMode(NORMAL); 
    p = createShape();
    p.beginShape();
    p.texture(img);
 
    for (int i = 0; i<100; i++) { 
          float stepFac = 2*PI*(float(i)/100); 
          p.vertex(cir_xpos+cRadius/2*sin(stepFac),cir_ypos+cRadius/2*cos(stepFac),(sin(stepFac)+1)/2,(cos(stepFac)+1)/2); 
    } 


    p.endShape(CLOSE);



   




  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  }
  void render()
  {
 
 
    pushMatrix();
    translate(500, 500);    
    //rotate(rot);
    rotate(rot);
    //translate(0,0); 
    shape(p,0,0);    
    //x += v;    
    popMatrix();    
 
    //stroke(250,250,20);
   // line(0,height/2+12,width,height/2+12);
  }
  void steer()
  {
    rot+=0.1;
  }
  
 
  
  
}
