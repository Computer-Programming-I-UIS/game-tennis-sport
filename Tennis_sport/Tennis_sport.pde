//Biblioteca de sonido //<>//
import processing.sound.*;
SoundFile sonido;
//Variables de estados
int estado;
int PANTALLAINICIAL = 0;
int INSTRUCCIONES = 1;
int SJUEGO = 2;
int JUEGOM = 3;
int JUEGOF = 4;
int DERROTA = 5;
int VICTORIA = 6;
int VICTORIA2 = 7;
int ABANDONARM = 8;
int ABANDONARF = 9;


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


//Jugadores
Tenista1 mjugador;
Tenista2 fjugador;
vsTenista1 VSmjugador;
vsTenista2 VSfjugador;

Pelota pelota;

boolean ganador;
boolean reinicio = false;
int puntajeMaximo;

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


 sonido = new SoundFile(this, "sonido.mp3");
 sonido.play(); //Reproducir sonido 
  

  

    //Jugadores
  mjugador = new Tenista1(280, 850);
  fjugador = new Tenista2(280, 850);
  VSmjugador = new vsTenista1(680, 270);
  VSfjugador = new vsTenista2(680, 270);
  
  pelota = new Pelota(1); //se crea la pelota
  ganador = false; //al inicio no hay ningun ganador
  
  puntajeMaximo = 60; //el puntaje que los jugadores deben de alcanzar para ganar
  
}

void draw() {
  
  if (estado == PANTALLAINICIAL) { //Pantalla de inicio
    background(0);
    image(img, 0, 0, 1000, 1000);
    image(img5, 50, 850, 80, 100);
    
    
    
    
  } else if (estado == INSTRUCCIONES) { //Pantalla de instrucciones del juego
    background(0);
    image(img2, 0, 0, 1000, 1000);
   
  } else if (estado == SJUEGO){  //Pantalla de seleccion de jugador
     background(0);
    image(img3, 0, 0, 1000, 1000);
    
    
   
    
  } else if (estado == JUEGOM){  //Pantalla del partido jugador 'Jos'
     background(0);
    image(img4, 0, 0, 1000, 1000);
    image(img8, 20, 20, 40, 40);
    image(img9, 20, 80, 40, 40);
   
    
    
     //Moviemto del jugador y dibujo hombre
     mjugador.update1();
     mjugador.ser1();
     
     VSfjugador.update2();
     VSfjugador.ser2();
     
     pelota.mostrar();
    pelota.mover();
     pelota.validarReboteParedes();
     
    
  } else if (estado == JUEGOF){  //Pantalla del partido jugadora 'Fran'
     background(0);
    image(img4, 0, 0, 1000, 1000);
    image(img8, 20, 20, 40, 40);
    image(img9, 20, 80, 40, 40);
   
    //Moviemto del jugador y dibujo mujer
    fjugador.update2(); 
    fjugador.ser2();
    
    VSmjugador.update1();
    VSmjugador.ser1();
    
    pelota.mostrar();
    pelota.mover();
     pelota.validarReboteParedes();

 } else if (estado == ABANDONARM) { //Pantalla de abandonar juego
    background(0);
    image(img10, 200, 300, 600, 400);
    
 } else if (estado == ABANDONARF) { //Pantalla de abandonar juego
    background(0);
    image(img10, 200, 300, 600, 400);


   
 }
    
    
  
}

void mouseReleased() { //Controles de usuario para estados

//menu a eleccion del jugador 
  if (mouseY > 640 && mouseY < 670 && mouseX > 600 && mouseX < 880 && estado == PANTALLAINICIAL) {
    
    estado = SJUEGO;
   
    
//eleccion de jugador 'Jos' a juego
  } else if (mouseY > 250 && mouseY < 700 && mouseX > 150 && mouseX < 460 && estado == SJUEGO) {
    
    estado = JUEGOM;
    
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
    
    sonido.pause(); //Detener sonido
  
    
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
    
    sonido.pause(); //Detener sonido
   
//eleccion del jugador a menu
  } else if (mouseY > 930 && mouseY < 970 && mouseX > 830 && mouseX < 960 && estado == SJUEGO) {
  
    estado = PANTALLAINICIAL;
    
//menu a instrucciones  
  } else if (mouseY > 710 && mouseY < 740 &&  mouseX > 600 && mouseX < 880 && estado == PANTALLAINICIAL) {
    estado =INSTRUCCIONES;
    
//instrucciones a menu
  } else if (mouseY > 930 && mouseY < 970 && mouseX > 830 && mouseX < 960 && estado == INSTRUCCIONES) {
    estado = PANTALLAINICIAL;
    
//Desactivar sonido
  } else if (mouseY > 780 && mouseY < 810 && mouseX > 650 && mouseX < 810 && estado == INSTRUCCIONES) {

    sonido.stop(); //Detener sonido

  }
}
