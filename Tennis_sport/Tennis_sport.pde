//Biblioteca de sonido //<>//
import processing.sound.*;
SoundFile sonido;

//Variables de estados
int estado;
final int PANTALLAINICIAL = 0;
final int INSTRUCCIONES = 1;
final int SJUEGO = 2;
final int JUEGOM = 3;
final int JUEGOF = 4;
final int DERROTA = 5;
final int VICTORIA = 6;
final int VICTORIA2 = 7;
final int ABANDONARM = 8;
final int ABANDONARF = 9;
final int CREDITOS = 10;

//Imagenes 
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;

PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;
PImage img12;
PImage img13;
PImage img14;
PImage img15;
PImage img16;
PImage img17;
PImage img18;
PImage img19;
PImage img20;
PImage img21;

//Jugadores
Tenista1 mjugador;
Tenista2 fjugador;
vsTenista1 VSmjugador;
vsTenista2 VSfjugador;

//Pelota
Pelota pelota;
boolean ganador;
int puntajeMaximo;

boolean reinicio = false;

void setup() {
  
  //Tamaño de la ventana
  size(1000, 1000);

  //Estado default
  estado = PANTALLAINICIAL;
  
  //Archivos de imagenes
  img = loadImage("Portada.png");
  img2 = loadImage("instruccion.png");
  img3 = loadImage("jugadores.png");
  img4 = loadImage("cancha.png");
  img5 = loadImage("clasificación.png");
  img8 = loadImage("salir.png");
  img9 = loadImage("sonido.png");
  img10 = loadImage("abandonar.png");
  img11 = loadImage("winnerjos.png");
  img12 = loadImage("winnerfran.png");
  img13 = loadImage("gameover.png");
  img14 = loadImage("creditos.png");
  img15 = loadImage("winnerfran.png");
  img16 = loadImage("winnerjos.png");
  img17 = loadImage("fjugador_arriba.png");
  img18 = loadImage("mjugador_arriba.png");
  img19 = loadImage("jugadorF_arrriba.png");
  img20 = loadImage("jugadorM_arriba.png");
  img21 = loadImage("puntuacion.png");
 
 sonido = new SoundFile(this, "sonido.mp3");
 sonido.play(); //Reproducir sonido 
  
    //Jugadores
  mjugador = new Tenista1(280, 850);
  fjugador = new Tenista2(280, 850);
  VSmjugador = new vsTenista1(680, 270);
  VSfjugador = new vsTenista2(680, 270);
  
  pelota = new Pelota(1); //se crea la pelota
  ganador = false; //al inicio no hay ningun ganador
  puntajeMaximo = 180; //el puntaje que los jugadores deben de alcanzar para ganar 
}

void draw() {
  
  if (estado == PANTALLAINICIAL) { //Pantalla de inicio
    background(0);
    image(img, 0, 0, 1000, 1000);
    image(img5, 50, 850, 80, 100);
    image(img9, 20, 80, 40, 40);
    
  } else if (estado == INSTRUCCIONES) { //Pantalla de instrucciones del juego
    background(0);
    image(img2, 0, 0, 1000, 1000);
    image(img9, 20, 80, 40, 40);
    
  } else if (estado == CREDITOS){ //Pantalla de créditos
    background(0);
    image(img14,0,0,1000,1000);
    image(img9, 20, 80, 40, 40);
    
  }else if (estado == SJUEGO){  //Pantalla de seleccion de jugador
    background(0);
    image(img3, 0, 0, 1000, 1000);
    image(img9, 20, 80, 40, 40);
    
  } else if (estado == JUEGOM){  //Pantalla del partido jugador 'Jos'
     background(0);
    image(img4, 0, 0, 1000, 1000);
    image(img8, 20, 20, 40, 40);
    image(img9, 20, 80, 40, 40);
    image(img21, 265, 43, 455, 158);
   
     //Moviento y dibujo del jugador JOS
     mjugador.update1();
     mjugador.ser1();
     
     //Movimiento y dibujo del jugador FRAN
     VSfjugador.update2();
     VSfjugador.ser2();
     
     //Puntaje de cada jugador
    pushMatrix();
    textSize(30);
    fill(0);
    text(mjugador.getPuntos(), 400, 130); //Puntos
    text(VSfjugador.getPuntos(), 400, 170); //Puntos

    //Jugador Jos abajo
    if (mjugador.getPuntos() == 60) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
    } else if (mjugador.getPuntos() == 75) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
    } else if (mjugador.getPuntos() == 90) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
    } else if (mjugador.getPuntos() == 105) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
    }
    if (mjugador.getPuntos() == 120) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
    } else if (mjugador.getPuntos() == 135) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
    } else if (mjugador.getPuntos() == 150) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
    } else if (mjugador.getPuntos() == 165) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
    }
    if (mjugador.getPuntos() == puntajeMaximo) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
      text("X", 660, 130); //Tercer set
    }
    //Jugador Fran arriba
    if (VSfjugador.getPuntos() == 60) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
    } else if (VSfjugador.getPuntos() == 75) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
    } else if (VSfjugador.getPuntos() == 90) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
    } else if (VSfjugador.getPuntos() == 105) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
    }
    if (VSfjugador.getPuntos() == 120) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
    } else if (VSfjugador.getPuntos() == 135) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
    } else if (VSfjugador.getPuntos() == 150) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
    } else if (VSfjugador.getPuntos() == 165) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
    }
    if (VSfjugador.getPuntos() == puntajeMaximo) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
      text("X", 660, 170); //Tercer set
    }
    if (ganador == false) {
      pelota.mostrar();
      pelota.mover();
    }
    popMatrix();
   
    
  } else if (estado == JUEGOF){  //Pantalla del partido jugadora 'Fran'
     background(0);
    image(img4, 0, 0, 1000, 1000);
    image(img8, 20, 20, 40, 40);
    image(img9, 20, 80, 40, 40);
    image(img21, 265, 43, 455, 158);
   
    //Moviento y dibujo del jugador FRAN
    fjugador.update2(); 
    fjugador.ser2();
    
    //Movimiento y dibujo del jugador JOS
    VSmjugador.update1();
    VSmjugador.ser1();
    
     //Puntaje de cada jugador
    pushMatrix();
    textSize(30);
    fill(0);
    text(VSmjugador.getPuntos(), 400, 130); //Puntos
    text(fjugador.getPuntos(), 400, 170); //Puntos

    //Jugador Jos arriba
    if (VSmjugador.getPuntos() == 60) { //Agregar las X a todos los sets
      fill(#FF0808);
      text("X", 500, 130); //Primer set
    } else if (VSmjugador.getPuntos() == 75) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
    } else if (VSmjugador.getPuntos() == 90) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
    } else if (VSmjugador.getPuntos() == 105) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
    }
    if (VSmjugador.getPuntos() == 120) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
    }else if(VSmjugador.getPuntos() == 135) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
    }else if(VSmjugador.getPuntos() == 150) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
    }else if(VSmjugador.getPuntos() == 165) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
    }
    if (VSmjugador.getPuntos() == puntajeMaximo) {
      fill(#FF0808);
      text("X", 500, 130); //Primer set
      text("X", 585, 130); //Segundo set
      text("X", 660, 130); //Tercer set
    }
    //Jugador Fran abajo
    if (fjugador.getPuntos() == 60) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
    }else if (fjugador.getPuntos() == 75){
      fill(#FF0808);
      text("X", 500, 170); //Primer set
    }else if (fjugador.getPuntos() == 90){
      fill(#FF0808);
      text("X", 500, 170); //Primer set
    }else if (fjugador.getPuntos() == 105){
      fill(#FF0808);
      text("X", 500, 170); //Primer set
    }
    if (fjugador.getPuntos() == 120) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
    }else if (fjugador.getPuntos() == 135){
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
    }else if (fjugador.getPuntos() == 150){
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
    }else if (fjugador.getPuntos() == 165){
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
    }
    if (fjugador.getPuntos() == puntajeMaximo) {
      fill(#FF0808);
      text("X", 500, 170); //Primer set
      text("X", 585, 170); //Segundo set
      text("X", 660, 170); //Tercer set
    }
    if (ganador == false) {
      pelota.mostrar();
      pelota.mover();
    }
    popMatrix();
    

 } else if (estado == ABANDONARM) { //Pantalla de abandonar juego
    background(0);
    image(img10, 200, 300, 600, 400);
    
 } else if (estado == ABANDONARF) { //Pantalla de abandonar juego
    background(0);
    image(img10, 200, 300, 600, 400);
 }
  validarPuntos();
  validarGanador();
}

void mouseReleased() { //Controles de usuario para estados

// Verificar posicion colision pelota jugador
  switch(estado) {
  case JUEGOM:
    if ( dist(mjugador.posX1-27, mjugador.posY1+1, pelota.posicion.x, pelota.posicion.y) <= ((mjugador.w1-20)/2) + (pelota.radio) ) { // JUGADOR JOS ABAJO
      image(img20, mjugador.posX1-67, mjugador.posY1-49, mjugador.w1, mjugador.w1+20);
      println("Holaaa");
      pelota.velocidad.y *= -1;
      pelota.velocidad.x *= -1*random(0.1, 1.1);
    }
    if ( dist(VSfjugador.vsposX2-67, VSfjugador.vsposY2+1, pelota.posicion.x, pelota.posicion.y) <= ((VSfjugador.w2-20)/2) + (pelota.radio) ) { // JUGADOR FRAN ARRIBA
      image(img17, VSfjugador.vsposX2-42, VSfjugador.vsposY2+1, VSfjugador.w2, VSfjugador.w2+20);
      println("Holaaa");
      pelota.velocidad.y *= -1;
      pelota.velocidad.x *= -1*random(0.1, 1.1);
    }
    break;
  case JUEGOF:
    if ( dist(VSmjugador.vsposX1-67, VSmjugador.vsposY1+1, pelota.posicion.x, pelota.posicion.y) <= ((VSmjugador.w1-20)/2) + (pelota.radio) ) { // JUGADOR JOS ARRIBA
      image(img18, VSmjugador.vsposX1-42, VSmjugador.vsposY1+1, VSmjugador.w1, VSmjugador.w1+20);
      println("Holaaa");
      pelota.velocidad.y *= -1;
      pelota.velocidad.x *= -1*random(0.1, 1.1);
    }
    if ( dist(fjugador.posX2-27, fjugador.posY2+1, pelota.posicion.x, pelota.posicion.y) <= ((VSfjugador.w2-20)/2) + (pelota.radio) ) { // JUGADOR FRAN ABAJO
      image(img19, fjugador.posX2-67, fjugador.posY2-49, fjugador.w2, fjugador.w2+20);
      println("Holaaa");
      pelota.velocidad.y *= -1;
      pelota.velocidad.x *= -1*random(0.1, 1.1);
    }
    break;
  }


//menu a eleccion del jugador 
  if (mouseY > 640 && mouseY < 670 && mouseX > 600 && mouseX < 880 && estado == PANTALLAINICIAL) {
    
    estado = SJUEGO;
 
 }else if (mouseY > 80 && mouseY < 140 && mouseX > 20 && mouseX < 60 && estado == PANTALLAINICIAL) {
    if (sonido.isPlaying()) {
      sonido.pause(); //Detener sonido
    } else {
      sonido.play();
    } 
    
//eleccion de jugador 'Jos' a juego
  } else if (mouseY > 250 && mouseY < 700 && mouseX > 150 && mouseX < 460 && estado == SJUEGO) {
    
    estado = JUEGOM;
  
  }else if (mouseY > 80 && mouseY < 140 && mouseX > 20 && mouseX < 60 && estado == PANTALLAINICIAL) {
    if (sonido.isPlaying()) {
      sonido.pause(); //Detener sonido
    } else {
      sonido.play();
    } 
//abandonar juego
  } else if (mouseY > 20 && mouseY < 60 && mouseX > 20 && mouseX < 60 && estado == JUEGOM) {
    
    estado = ABANDONARM;
    
//abandonara inicio
 } else if (mouseY > 555 && mouseY < 605 && mouseX > 405 && mouseX < 465 && estado == ABANDONARM) {
    
    estado = PANTALLAINICIAL;
    reinicio = true;
    
//abandonara a partido
 } else if (mouseY > 555 && mouseY < 605 && mouseX > 550 && mouseX < 600 && estado == ABANDONARM) {
    
    estado = JUEGOM;
    
// Desactivar sonido en la partida
  } else if (mouseY > 80 && mouseY < 140 && mouseX > 20 && mouseX < 60 && estado == JUEGOM) {
    if(sonido.isPlaying()){
    sonido.pause(); //Detener sonido
  }else{
    sonido.play();
  }
    
 //eleccion de jugadora 'Fran' a juego
  } else if (mouseY > 250 && mouseY < 700 && mouseX > 560 && mouseX < 890 && estado == SJUEGO) {
    
    estado = JUEGOF;
    
 //abandonar juego
  } else if (mouseY > 20 && mouseY < 60 && mouseX > 20 && mouseX < 60 && estado == JUEGOF) {
    
    estado = ABANDONARF;
    
//abandonara inicio
 } else if (mouseY > 555 && mouseY < 605 && mouseX > 405 && mouseX < 465 && estado == ABANDONARF) {
    
    estado = PANTALLAINICIAL;
    
    
//abandonara a partido
 } else if (mouseY > 555 && mouseY < 605 && mouseX > 550 && mouseX < 600 && estado == ABANDONARF) {
    
    estado = JUEGOF;
    
// Desactivar sonido en la partida
  } else if (mouseY > 80 && mouseY < 140 && mouseX > 20 && mouseX < 60 && estado == JUEGOF) {
   
   if(sonido.isPlaying()){
    sonido.pause(); //Detener sonido
  }else{
    sonido.play();
  }
    
//eleccion del jugador a menu
  } else if (mouseY > 930 && mouseY < 970 && mouseX > 830 && mouseX < 960 && estado == SJUEGO) {
  
    estado = PANTALLAINICIAL;
    
//menu a instrucciones  
  } else if (mouseY > 710 && mouseY < 740 &&  mouseX > 600 && mouseX < 880 && estado == PANTALLAINICIAL) {
    estado =INSTRUCCIONES;
    
//instrucciones a menu
  } else if (mouseY > 930 && mouseY < 970 && mouseX > 830 && mouseX < 960 && estado == INSTRUCCIONES) {
    estado = PANTALLAINICIAL;
  
  }else if (mouseY > 80 && mouseY < 140 && mouseX > 20 && mouseX < 60 && estado == PANTALLAINICIAL) {
    if (sonido.isPlaying()) {
      sonido.pause(); //Detener sonido
    } else {
      sonido.play();
    } 
//menu a créditos   
}else if (mouseY > 890 && mouseY < 900 &&  mouseX > 830 && mouseX < 905 && estado == PANTALLAINICIAL) {
  estado = CREDITOS;

//créditos a menu
 }else if(mouseY > 930 && mouseY < 970 &&  mouseX > 830 && mouseX < 960 && estado == CREDITOS) {
   estado = PANTALLAINICIAL;
 }else if (mouseY > 80 && mouseY < 140 && mouseX > 20 && mouseX < 60 && estado == PANTALLAINICIAL) {
    if (sonido.isPlaying()) {
      sonido.pause(); //Detener sonido
    } else {
      sonido.play();
    } 
  }
}

void validarPuntos() {
  PVector posicionPelota = pelota.getPosicion();

  switch(estado) {
  case JUEGOM://Juego de Jos
    if (posicionPelota.y < 315 && mjugador.getPuntos() <= puntajeMaximo) {
      mjugador.setPuntos(15);
      pelota = new Pelota(1);
    } else if (posicionPelota.y > 880 && VSfjugador.getPuntos() <= puntajeMaximo) {
      VSfjugador.setPuntos(15);
      pelota = new Pelota(1);
    } else if (keyPressed && ganador == true) {
      setup();
    }
    break;
  case JUEGOF:
    // Juego de Fran
    if (posicionPelota.y > 880 && VSmjugador.getPuntos() <= puntajeMaximo) {
      VSmjugador.setPuntos(15);
      pelota = new Pelota(1);
    } else if (posicionPelota.y < 315 && fjugador.getPuntos() <= puntajeMaximo) {
      fjugador.setPuntos(15);
      pelota = new Pelota(1);
    } else if (keyPressed && ganador == true) {
      setup();
    }
    break;
  }
}

void validarGanador() {
  fill(0);
  //Al alcanzar el puntaje maximo el jugador gana
  if (mjugador.getPuntos() == puntajeMaximo) {
    image(img16, 250, 150, 500, 500);
    textSize(30);
    text("Presione cualquier tecla para volver a jugar", 100, 800);
    ganador = true;
  } else if (VSfjugador.getPuntos() == puntajeMaximo) {
    image(img15, 250, 250, 500, 500);
    textSize(30);
    text("Presione cualquier tecla para volver a jugar", 100, 800);
    ganador = true;
  }
  //Al alcanzar el puntaje maximo el jugador gana
  if (fjugador.getPuntos() == puntajeMaximo) {
    image(img15, 250, 250, 500, 500);
    textSize(40);
    text("Presione cualquier tecla para volver a jugar", 100, 800);
    ganador = true;
  } else if (VSmjugador.getPuntos() == puntajeMaximo) {
    image(img16, 250, 250, 500, 500);
    textSize(40);
    text("Presione cualquier tecla para volver a jugar", 100, 800);
    ganador = true;
  }
}



