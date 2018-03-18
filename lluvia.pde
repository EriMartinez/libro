class Gota {
  float x,y,e,w,h;
  Body b;
  
  Gota (float x_, float y_, float e_){
    x = x_;
    y = y_;
    e = e_;    
    
    // construir una definición de cuerpo;
    BodyDef bd = new BodyDef();
    // existe tipo dinámico, tipo estático y tipo kinestético; 
    bd.type = BodyType.DYNAMIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    bd.position.set(posicionTransformada);
    
    // Construir el cuerpo
    b = box2d.createBody(bd);
 
    
    
    // Definir el polígono, o su contorno
   CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(e); 
    
    // Definir su fixture o sus características
    FixtureDef fd = new FixtureDef();
    fd.shape =  cs;
    //parametros : densidad, fricción y rebote;
    fd.density = 6;
    fd.friction = 0.5;
    fd.restitution = 0.5;
    
    // agregar todo al body;
    b.createFixture(fd);
    b.setAngularVelocity(80);
  }

  
  void display(){
    Vec2 pos = box2d.getBodyPixelCoord(b);

    pushMatrix();
    translate(pos.x, pos.y);
    //float angulo = b.getAngle();
    // modificar el metod display;
    noStroke();
    fill(255);
    ellipse(0, 0, e*2,e*2);
    popMatrix();
  }
}