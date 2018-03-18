PFont letra1;
void pantalla1 (int xi, int yi){
  pushMatrix ();
  
  translate (xi,yi);
  size (550,700);
  //textura = loadImage("textura.jpg");
  //image (textura, 0, 0);
  letra1 =createFont ("Maquina.otf", 20);
  fill(2,32,69);
  textFont (letra1);
  textSize (60);
  text ("RAYUELA", 150,100);
  textSize (25);
  text ("Julio Cortázar", 170, 130);
  textSize (15);
  text ("Rayuela es una novela que trata del amor turbulento de", 45, 190);
  text ("Oliveira y La Maga, las caminatas por Paris en busca del", 43, 207);
  text("cielo y el infierno y su reverso en un Buenos Aires", 60, 222);
  text ("teñido por el recuerdo.", 180, 239);
  text ("Esta historia se desarrolla en tres momentos de la", 60, 269);
  text ("relación, los primeros momentos, su relacion amorosa", 46, 284);
  text ("y su ruptura.", 200, 299);
  text("Este programa, mostrará el cielo de Paris según las", 60, 334);
  text ("emociones vividas por los personajes del capitulo", 68, 349);
  text ("que se seleccione, estos serán el 1, el 7 y el 91.",79, 364);
  textSize (25);
  text ("PRESIONA 'S' PARA VER LOS CAPITULOS", 50, 550);
  popMatrix();
}
  