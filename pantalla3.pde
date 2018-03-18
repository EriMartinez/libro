

PImage pareja;
void pantalla3 (int xi, int yi){
  
  pushMatrix ();
  
  translate (xi,yi);
  noStroke();
  fill(2,32,69);
  rectMode(CENTER);
  rect(275,184,550,370);

  un.display();
  a.display();
  h.display();
  e.display();
  pareja = loadImage ("pareja.png");
  image (pareja, 215,280, 100,120);
  fill(255);
  textSize (30);
  text ("El cielo en Rayuela",120,50);
  
  textSize (25);
  text ("Presiona 'T' para finalizar",95, 650);
  text ("Cap 1: 'a', Cap 2: 'b', Cap 3: 'c'",100,570);
  text ("Juega dando clic en el cielo", 90, 600);
  
  

  popMatrix();
}