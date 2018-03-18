import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import ddf.minim.*;
Minim Audio;
AudioPlayer cancion;
Box2DProcessing box2d;
int x,y;
int pantalla=1;
ArrayList <Gota> gotas;
Piso un;
Piso a;
Gota g;
Piso h;
Piso e;

void setup(){
  Audio = new Minim (this); 
  cancion=Audio.loadFile("paris.mp3",200);
  box2d = new Box2DProcessing(this);
  
  size(550,700);
  box2d.createWorld();
  box2d.setGravity(0,-9.8);
  un = new Piso (250, 368,700,2);
  a = new Piso (260, 310,50,2);
  g = new Gota(300,200,2);
  h= new Piso (254,344,2,60);
  e= new Piso (273,344,2,60);
  
  gotas = new ArrayList<Gota>();
}

void draw(){
  box2d.step();
  background(179,146,29);
  cancion.play();
  if (pantalla==1){
    pantalla1(x,y);}
 
 if (pantalla==2){
   pantalla2();}
   
  if (pantalla==3){
    
    pantalla3(x,y);
  }
  
  if (pantalla==3 && mousePressed){
  if ((mouseX > 0)&& (mouseX< 550) && (mouseY> 0)&& (mouseY< 360)){
    float u = random(2,3);
    
    gotas.add(new Gota(mouseX,mouseY,u));}}
    
     
 if (pantalla==3 && key =='a')
{
  if (random(1) < 0.1) {
    box2d.setGravity(0,-9.8);
    gotas.add(new Gota(random(width), 20, 2));
    }
  
     for (int i = gotas.size()-1; i >= 0; i--) {
    Gota g = gotas.get(i);
    g.display();
    
    }
}
  
  
if (pantalla==3 && key=='c'){
  box2d.setGravity(0,-9.8);
  gotas.add(new Gota(random(width),-10,2));
  for (Gota g:gotas){
  g.display();
  }
   }
if  (pantalla==3 && key =='b'){
  box2d.setGravity (0,3);
for (Gota g:gotas){
  g.display();
  }
}

if (pantalla==3 && key=='c'){
  box2d.setGravity(0,-15);
  gotas.add(new Gota(random(width),-10,2));
  for (Gota g:gotas){
  g.display();
  }
 
   }
    
}    
 void keyPressed(){
 if (pantalla==1){
 if (key =='s' || key == 'S'){
 pantalla = 2;
 if (pantalla==2){
 pantalla2();}
 }
 }
 if (pantalla==2){
 if (key =='w' || key == 'W'){
 pantalla =3 ;
 if (pantalla==3){
 pantalla3(x,y);}
 }
 }
 
 if (pantalla==3){
 if (key =='t' || key == 'T'){
 pantalla =1 ;
 if (pantalla==1){
 pantalla1(x,y);}
 }
 }

 }