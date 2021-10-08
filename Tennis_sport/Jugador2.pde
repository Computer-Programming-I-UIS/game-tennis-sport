//Clase
class vsTenista1 { 
  float posX1;
  float posY1;
  float w1;
  PImage mjugador;
  PImage mjugador_arriba;
  
  //CONSTRUCTOR
  vsTenista1(int posXinic1, int posYinic1){
  posX1 = posXinic1;
  posY1 = posYinic1;
  w1 = 70;
  mjugador = loadImage("mjugador.png");

   
  }
  
   //METODOS
//Controles del mouse  
void update1(){
if(keyPressed){
     
    if(key == 'd' || key == 'D'){
  posX1 = posX1 + 10;
    }
}

if(keyPressed){
     
    if(key == 'a' || key == 'A'){   
     posX1 = posX1 - 10;
    }
}
    
if(keyPressed){
     
    if(key == 's' || key == 'S'){
  posY1 = posY1 + 10;
  posY1 = constrain(posY1, 250, 460); // Limites en la pantalla
    }
}

if(keyPressed){
     
    if(key == 'w' || key == 'W'){
  posY1 = posY1 - 10;
  posY1 = constrain(posY1, 250, 460); // Limites en la pantalla
    }
}

}

  //Dibujo
  void ser1(){
   //image(jugadorM, posX1-67, posY1-49,w1,w1);
   image(mjugador, posX1-67, posY1-49,w1,w1+20);
   
  }
}

class vsTenista2 { 
  float posX2;
  float posY2;
  float w2;
  PImage fjugador;
  PImage fjugador_arriba;
  
  //CONSTRUCTOR
  vsTenista2(int posXinic2, int posYinic2){
  posX2 = posXinic2;
  posY2 = posYinic2;
  w2 = 70;
  fjugador = loadImage("fjugador.png");
  
   
  }
  
  //METODOS
//Controles del mouse  
void update2(){
if(keyPressed){
     
    if(key == 'd' || key == 'D'){
  posX2 = posX2 + 10;
    }
}

if(keyPressed){
     
    if(key == 'a' || key == 'A'){   
     posX2 = posX2 -  10;
    }
}
    
if(keyPressed){
     
    if(key == 's' || key == 'S'){
  posY2 = posY2 +  10;
  posY2 = constrain(posY2, 250, 460); // Limites en la pantalla
    }
}

if(keyPressed){
     
    if(key == 'w' || key == 'W'){
  posY2 = posY2 -  10;
  posY2 = constrain(posY2, 250, 460); // Limites en la pantalla
    }
}

}

  //Dibujo
  void ser2(){
   image(fjugador, posX2-67, posY2-49,w2,w2+20);
   
  }
}
