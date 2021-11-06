Particle[] bob = new Particle[400];
void setup(){
  size(600,600);
  noStroke();
  frameRate(30);
  for(int i = 0; i < 200; i++)
    bob[i] = new OddballParticle();
  for(int i = 200; i < bob.length; i++)
    bob[i] = new Particle();
}
void draw(){
  fill(0,0,0,10);
  rect(0,0,800,800);
  for(int i = 0; i < bob.length; i++){
     bob[i].move();
     bob[i].show();
}
}
class Particle {
double myX, myY, mySpeed, myAngle;
Particle() 
{
  myX = 300;
  myY = (int)(Math.random()*800);
  myAngle = (Math.random()*13*Math.PI);
  mySpeed = Math.random()*5;
}
void show(){
fill(255);
ellipse((int)(myX),(int)(myY), 5, 5);

}
void move(){
 myX = myX + Math.cos(myAngle)*mySpeed;
 myY = myY + Math.sin(myAngle)*mySpeed;
}
}
class OddballParticle extends Particle {
  OddballParticle() {
    myX = 300;
    myY = 300;
    mySpeed = (int)(Math.random()*10);
    myAngle = (Math.random()*13*Math.PI);
  }
void show(){
fill(255, 255, 0, 10);
ellipse((int)(myX),(int)(myY), 10, 10);
}
}
