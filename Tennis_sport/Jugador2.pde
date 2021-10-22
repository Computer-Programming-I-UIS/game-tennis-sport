//Clase
class vsTenista1 {
  float vsposX1;
  float vsposY1;
  float w1;
  PImage mjugador;
  PImage mjugador_arriba;
  int puntos;


  //CONSTRUCTOR
  vsTenista1(int vsposXinic1, int vsposYinic1) {
    vsposX1 = vsposXinic1;
    vsposY1 = vsposYinic1;
    w1 = 70;
    mjugador = loadImage("mjugador.png");
    mjugador_arriba = loadImage ("mjugador_arriba.png");
    puntos = 0;
  }

  //METODOS
  //Controles del mouse
  void update1() {
    if (keyPressed) {

      if (key == 'd' || key == 'D') {
        vsposX1 = vsposX1 + 10;

        if (vsposY1<480) {
          vsposX1 = constrain(vsposX1, 170, width-130); // Limites en la pantalla

          if (vsposY1<380) {
            vsposX1 = constrain(vsposX1, 200, width-160); // Limites en la pantalla
          }

          if (vsposY1<330) {
            vsposX1 = constrain(vsposX1, 230, width-180); // Limites en la pantalla
          }

          if (vsposY1<310) {
            vsposX1 = constrain(vsposX1, 250, width-200); // Limites en la pantalla
          }
        }
      }
    }

    if (keyPressed) {

      if (key == 'a' || key == 'A') {
        vsposX1 = vsposX1 - 10;

        if (vsposY1<480) {
          vsposX1 = constrain(vsposX1, 170, width-130); // Limites en la pantalla

          if (vsposY1<380) {
            vsposX1 = constrain(vsposX1, 200, width-160); // Limites en la pantalla
          }

          if (vsposY1<330) {
            vsposX1 = constrain(vsposX1, 230, width-180); // Limites en la pantalla
          }

          if (vsposY1<310) {
            vsposX1 = constrain(vsposX1, 250, width-200); // Limites en la pantalla
          }
        }
      }
    }

 
    
if(keyPressed){
     
    if(key == 's' || key == 'S'){
  vsposY1 = vsposY1 + 50;
  vsposY1 = constrain(vsposY1, 250, 460); // Limites en la pantalla
  
    }

    }


    if (keyPressed) {

      if (key == 's' || key == 'S') {
        vsposY1 = vsposY1 + 10;
        vsposY1 = constrain(vsposY1, 250, 460); // Limites en la pantalla
      }
    }



    if (keyPressed) {

      if (key == 'w' || key == 'W') {
        vsposY1 = vsposY1 - 10;
        vsposY1 = constrain(vsposY1, 250, 460); // Limites en la pantalla
      }
    }
}
  


  void ser1(){

   image(mjugador, vsposX1-67, vsposY1-49,w1,w1+20);
  }
  
  //contador de puntos
  void setPuntos(int puntos_) {
    puntos += puntos_;
  }
  

  int getPuntos() {
    return puntos;
  }
}

class vsTenista2 {
  float vsposX2;
  float vsposY2;
  float w2;
  PImage fjugador;
  PImage fjugador_arriba;
  int puntos;


  //CONSTRUCTOR
  vsTenista2(int vsposXinic2, int vsposYinic2) {
    vsposX2 = vsposXinic2;
    vsposY2 = vsposYinic2;
    w2 = 70;
    fjugador = loadImage("fjugador.png");
    fjugador_arriba = loadImage("fjugador_arriba.png");
    puntos = 0;

  
 
  }

  //METODOS

  //Controles del mouse
  void update2() {
    if (keyPressed) {

      if (key == 'd' || key == 'D') {
        vsposX2 = vsposX2 + 10;

        if (vsposY2<480) {
          vsposX2 = constrain(vsposX2, 170, width-130); // Limites en la pantalla
        }

        if (vsposY2<380) {
          vsposX2 = constrain(vsposX2, 200, width-160); // Limites en la pantalla
        }

        if (vsposY2<330) {
          vsposX2 = constrain(vsposX2, 230, width-180); // Limites en la pantalla
        }

        if (vsposY2<310) {
          vsposX2 = constrain(vsposX2, 250, width-200); // Limites en la pantalla
        }
      }
    }

    if (keyPressed) {

      if (key == 'a' || key == 'A') {
        vsposX2 = vsposX2 -  10;

        if (vsposY2<480) {
          vsposX2 = constrain(vsposX2, 170, width-130); // Limites en la pantalla
        }

        if (vsposY2<380) {
          vsposX2 = constrain(vsposX2, 200, width-160); // Limites en la pantalla
        }

        if (vsposY2<330) {
          vsposX2 = constrain(vsposX2, 230, width-180); // Limites en la pantalla
        }

        if (vsposY2<310) {
          vsposX2 = constrain(vsposX2, 250, width-200); // Limites en la pantalla
        }
      }
    }
    

    if (keyPressed) {

      if (key == 's' || key == 'S') {
        vsposY2 = vsposY2 +  10;
        vsposY2 = constrain(vsposY2, 250, 460); // Limites en la pantalla
      }
    }

if(keyPressed){
     
    if(key == 'w' || key == 'W'){
  vsposY2 = vsposY2 -  50;
  vsposY2 = constrain(vsposY2, 250, 460); // Limites en la pantalla

    }

}
  }

  //Dibujo

  void ser2() {
    image(fjugador, vsposX2-67, vsposY2-49, w2, w2+20);
  }
  //contador de puntos
  void setPuntos(int puntos_) {
    puntos += puntos_;
  }


  void ser2(){
   image(fjugador, vsposX2-67, vsposY2-49,w2,w2+20);
  }
  
   //contador de puntos
  void setPuntos(int puntos_) {
    puntos += puntos_;
  }
  

  int getPuntos() {
    return puntos;
  }
}
