class Asteroid extends GameObject{
 
  Asteroid() {
    lives= 1;
    size = random(50,100);
    location = new PVector (random(0,width) ,(random(0,height)));
    velocity = new PVector (0,1);
    velocity.rotate(random(0,TWO_PI));
  }
 Asteroid(float s, float x, float y){
  lives = 1;
  size = random(50,100);
    location = new PVector (x,y);
    velocity = new PVector (0,1);
    velocity.rotate(random(0,TWO_PI));
    size = s;
    
    
 }
  
  void show(){
    noFill();
    stroke(255);
    ellipse(location.x, location.y, size,size);
    }
    
    void act(){
     super.act();
     
     int i = 0;
 while(i < myObjects.size()){
   GameObject b = myObjects.get(i);
   if(b instanceof Bullet ){
     
       if(dist(location.x, location.y, b.location.x, b.location.y)<=size/2 + b.size){
       b.lives=0;
       lives = 0;
       myObjects.add(new Asteroid(size/2, location.x, location.y));
       myObjects.add(new Asteroid(size/2, location.x, location.y));
   }
    }
    i++;
    }
}  
}