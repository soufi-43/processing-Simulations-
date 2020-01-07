

// A simple pendulum simulation
// Given a pendulum with an angle theta (0 being the pendulum at rest) and a radius r
// we can use sine to calculate the angular component of the gravitational force.

// Gravity Force = Mass * Gravitational Constant;
// Pendulum Force = Gravity Force * sine(theta)
// Angular Acceleration = Pendulum Force / Mass = gravitational acceleration * sine(theta);

// there is a specific angle beetween the pendulums where they change their colors  which is  p/7 where they somehow converged to touch each other  



Pendulum[] p = new Pendulum[2];
 

void setup() {
  size(640,360);
  // Make a new Pendulum with an origin position and armlength
  
  for (int i  = 0 ; i<p.length ;i++ ){
    p[i] = new Pendulum(new PVector(width/2,0), random(10,175)) ; 
  
  }
  

}

void draw() {
  background(255);
  for (int i  = 0 ; i<p.length ;i++ ){
    p[i].go() ; 
  
  }
  

if(p[0].angle-p[1].angle<PI/7 && p[0].angle-p[1].angle>-PI/7 ){
   p[1].display(255);

}

 

}

void mousePressed() {
  p[0].clicked(mouseX,mouseY);
  
   
  
  
}

void mouseReleased() {
 p[0].stopDragging();
    
  
}
