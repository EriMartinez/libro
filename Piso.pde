class Piso{
  float x,y,w,h;
  Body b;
  
  Piso(float x_, float y_, float w_, float h_){
    x= x_;
    y =y_;
    w = w_;
    h = h_;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    bd.position.set(posicionTransformada);
    b = box2d.createBody(bd);
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    b.createFixture(sd,1);
  }
  
  void display(){
    noStroke();
    fill(179,146,29);
    rectMode(CENTER);
    rect(x,y,w,h);
  }
  
}