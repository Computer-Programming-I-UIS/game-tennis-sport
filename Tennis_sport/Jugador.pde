//Clase
class Tenista1 { 
  float posX1;
  float posY1;
  float w1;
  PImage jugadorM;
  
  //CONSTRUCTOR
  Tenista1(int posXinic1, int posYinic1){
  posX1 = posXinic1;
  posY1 = posYinic1;
  w1 = 50;
  jugadorM = loadImage("jugadorM.jpeg");

   
  }
  
  //METODOS
//Controles del mouse  
void update1(){
if (keyPressed == true && key == CODED && keyCode == RIGHT){
  posX1 = posX1 + 6;
  
 // posX1 = constrain(posX1, 0, width); // Limites en la pantalla
}
if (keyPressed == true && key == CODED && keyCode == LEFT){
  posX1 = posX1 - 6;
  //posX1 = constrain(posX1, 0, width); // Limites en la pantalla
}
if (keyPressed == true && key == CODED && keyCode == DOWN){
  posY1 = posY1 + 6;
}
if (keyPressed == true && key == CODED && keyCode == UP){
  posY1 = posY1 - 6;
}

}

  //Dibujo
  void ser1(){
   //image(jugadorM, posX1-67, posY1-49,w1,w1);
   image(jugadorM, posX1-67, posY1-49,w1,w1);
   
  }
}

class Tenista2 { 
  float posX2;
  float posY2;
  float w2;
  PImage jugadorF;
  
  //CONSTRUCTOR
  Tenista2(int posXinic2, int posYinic2){
  posX2 = posXinic2;
  posY2 = posYinic2;
  w2 = 50;
  jugadorF = loadImage("jugadorF.jpeg");
  
   
  }
  
  //METODOS
//Controles del mouse  
void update2(){
if (keyPressed == true && key == CODED && keyCode == RIGHT){
  posX2 = posX2 + 6;
}
if (keyPressed == true && key == CODED && keyCode == LEFT){
  posX2 = posX2 - 6;
}
if (keyPressed == true && key == CODED && keyCode == DOWN){
  posY2 = posY2 + 6;
}
if (keyPressed == true && key == CODED && keyCode == UP){
  posY2 = posY2 - 6;
}

}

  //Dibujo
  void ser2(){
   image(jugadorF, posX2-67, posY2-49,w2,w2);
   
  }
}
