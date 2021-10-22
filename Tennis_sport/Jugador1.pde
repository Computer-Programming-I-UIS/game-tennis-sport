//Clase
class Tenista1 {
  float posX1;
  float posY1;
  float posX1reinicio;
  float posY1reinicio;
  float w1;
  PImage jugadorM;
  PImage jugadorm;
  int puntos;
<<<<<<< HEAD

  //CONSTRUCTOR
  Tenista1(int posXinic1, int posYinic1) {
    posX1 = posXinic1;
    posY1 = posYinic1;
    posX1reinicio = posXinic1;
    posY1reinicio = posYinic1;
    w1 = 100;
    jugadorM = loadImage("jugadorM.png");
    jugadorm = loadImage("jugadorM_arriba.png");
    puntos = 0; //Puntos del jugador
  }

  //METODOS
  //Controles del mouse
  void update1() {
    if (keyPressed == true && key == CODED && keyCode == RIGHT) {

      posX1 = posX1 + 10;
      posX1 = constrain(posX1, 70, width-30); // Limites en la pantalla

      if (reinicio==true) {

        posX1reinicio = posX1reinicio + 10;
        posX1reinicio = constrain(posX1reinicio, 70, width-30); // Limites en la pantal
      }
    }

    if (keyPressed == true && key == CODED && keyCode == LEFT) {

      posX1 = posX1 - 10;
      posX1 = constrain(posX1, 70, width-30); // Limites en la pantalla

      if (reinicio==true) {
        posX1reinicio = posX1reinicio - 10;
        posX1reinicio = constrain(posX1reinicio, 70, width-30); // Limites en la pantal
      }
    }
    if (keyPressed == true && key == CODED && keyCode == DOWN) {

      posY1 = posY1 + 10;
      posY1 = constrain(posY1, 570, height-100); // Limites en la pantalla

      if (reinicio==true) {
        posY1reinicio = posY1reinicio + 10;
        posY1reinicio = constrain(posY1reinicio, 570, height-100); // Limites en la pantalla
      }
    }
    if (keyPressed == true && key == CODED && keyCode == UP) {

      posY1 = posY1 - 10;
      posY1 = constrain(posY1, 570, height-100); // Limites en la pantalla

      if (reinicio==true) {
        posY1reinicio = posY1reinicio - 10;
        posY1reinicio = constrain(posY1reinicio, 570, height-100); // Limites en la pantalla
      }
    }
  }

  //Dibujo
  void ser1() {

    image(jugadorM, posX1-67, posY1-49, w1, w1+20);

    if (reinicio==false) {
      image(jugadorM, posX1-67, posY1-49, w1, w1+20);
    }

    if (reinicio==true)
    {
      image(jugadorM, posX1reinicio-67, posY1reinicio-49, w1, w1+20);
    }
  }

=======
  
  //CONSTRUCTOR
  Tenista1(int posXinic1, int posYinic1){
  posX1 = posXinic1;
  posY1 = posYinic1;
  posX1reinicio = posXinic1;
  posY1reinicio = posYinic1;
  w1 = 100;
  jugadorM = loadImage("jugadorM.png");
  jugadorm = loadImage("jugadorM_arriba.png");
  puntos = 0; //Puntos del jugador
}
  
  //METODOS
//Controles del mouse  
void update1(){
if (keyPressed == true && key == CODED && keyCode == RIGHT){
  
  posX1 = posX1 + 50;
  posX1 = constrain(posX1, 70, width-30); // Limites en la pantalla
  
   if(reinicio==true){
  
  posX1reinicio = posX1reinicio + 50;
  posX1reinicio = constrain(posX1reinicio, 70, width-30); // Limites en la pantal
   }
}

if (keyPressed == true && key == CODED && keyCode == LEFT){
  
  posX1 = posX1 - 50;
  posX1 = constrain(posX1, 70, width-30); // Limites en la pantalla
  
  if(reinicio==true){
  posX1reinicio = posX1reinicio - 50;
  posX1reinicio = constrain(posX1reinicio, 70, width-30); // Limites en la pantal
  }
  
}
if (keyPressed == true && key == CODED && keyCode == DOWN){
  
  posY1 = posY1 + 50;
  posY1 = constrain(posY1, 570, height-100); // Limites en la pantalla
  
  if(reinicio==true){
  posY1reinicio = posY1reinicio + 50;
  posY1reinicio = constrain(posY1reinicio, 570, height-100); // Limites en la pantalla
  }
  
}
if (keyPressed == true && key == CODED && keyCode == UP){
  
  posY1 = posY1 - 50;
  posY1 = constrain(posY1, 570, height-100); // Limites en la pantalla
  
  if(reinicio==true){
  posY1reinicio = posY1reinicio - 50;
  posY1reinicio = constrain(posY1reinicio, 570, height-100); // Limites en la pantalla
    } 
  }
}

  //Dibujo
  void ser1(){

   //image(jugadorM, posX1-67, posY1-49,w1,w1+20);
  
   
    if(reinicio==false){
   image(jugadorM, posX1-67, posY1-49,w1,w1+20);
    }
    
   if(reinicio==true)
   {
     image(jugadorM, posX1reinicio-67, posY1reinicio-49,w1,w1+20);
     
     //recordar reiniciar puntuación
   }
  }
>>>>>>> a922cf828b11b297e11731bacc80a52a65070642
  //contador de puntos
  void setPuntos(int puntos_) {
    puntos += puntos_;
  }
<<<<<<< HEAD

=======
  
>>>>>>> a922cf828b11b297e11731bacc80a52a65070642
  int getPuntos() {
    return puntos;
  }
}

class Tenista2 {
  float posX2;
  float posY2;
  float w2;
  PImage jugadorF;
  PImage jugadorf;
  int puntos;
<<<<<<< HEAD

  //CONSTRUCTOR
  Tenista2(int posXinic2, int posYinic2) {
    posX2 = posXinic2;
    posY2 = posYinic2;
    w2 = 100;
    jugadorF = loadImage("jugadorF.png");
    jugadorf = loadImage("jugadorF_arriba.png");
    puntos = 0;
  }
=======
  
  //CONSTRUCTOR
  Tenista2(int posXinic2, int posYinic2){
  posX2 = posXinic2;
  posY2 = posYinic2;
  w2 = 100;
  jugadorF = loadImage("jugadorF.png");
  jugadorf = loadImage("jugadorF_arriba.png");
  puntos = 0;
   
  }
  
  //METODOS
//Controles del mouse  
void update2(){
if (keyPressed == true && key == CODED && keyCode == RIGHT){
  posX2 = posX2 +  50;
  posX2 = constrain(posX2, 70, width-30); // Limites en la pantalla
}
if (keyPressed == true && key == CODED && keyCode == LEFT){
  posX2 = posX2 -  50;
   posX2 = constrain(posX2, 70, width-30); // Limites en la pantalla
}
if (keyPressed == true && key == CODED && keyCode == DOWN){
  posY2 = posY2 + 50;
  posY2 = constrain(posY2, 570, height-100); // Limites en la pantalla
}
if (keyPressed == true && key == CODED && keyCode == UP){
  posY2 = posY2 - 40;
  posY2 = constrain(posY2, 570, height-100); // Limites en la pantalla
}
>>>>>>> a922cf828b11b297e11731bacc80a52a65070642

  //METODOS
  //Controles del mouse
  void update2() {
    if (keyPressed == true && key == CODED && keyCode == RIGHT) {
      posX2 = posX2 +  10;
      posX2 = constrain(posX2, 70, width-30); // Limites en la pantalla
    }
    if (keyPressed == true && key == CODED && keyCode == LEFT) {
      posX2 = posX2 -  10;
      posX2 = constrain(posX2, 70, width-30); // Limites en la pantalla
    }
    if (keyPressed == true && key == CODED && keyCode == DOWN) {
      posY2 = posY2 + 10;
      posY2 = constrain(posY2, 570, height-100); // Limites en la pantalla
    }
    if (keyPressed == true && key == CODED && keyCode == UP) {
      posY2 = posY2 - 10;
      posY2 = constrain(posY2, 570, height-100); // Limites en la pantalla
    }
  }

  //Dibujo
  void ser2() {
    image(jugadorF, posX2-67, posY2-49, w2, w2+20);
  }

  //contador de puntos
  void setPuntos(int puntos_) {
    puntos += puntos_;
  }

  int getPuntos() {
    return puntos;
  }
<<<<<<< HEAD
=======
  //contador de puntos
  void setPuntos(int puntos_) {
    puntos += puntos_;
  }
  
  int getPuntos() {
    return puntos;
  }
>>>>>>> a922cf828b11b297e11731bacc80a52a65070642
}
