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


//Imagenes 
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
<<<<<<< HEAD
PImage img6;
PImage img7;
=======
>>>>>>> 0f7c7163600346555cce643ac57b122d9bdac73d

//Jugadores
Tenista1 mjugador;
Tenista2 fjugador;

void setup() {
  
  //Tamaño de la ventana
  size(1000, 1000);

  //Estado default
  estado = PANTALLAINICIAL;
  
  //Archivos de imagenes
  img = loadImage("Portada.png");
  img2 = loadImage("Instrucciones.png");
  img3 = loadImage("jugadores.png");
  img4 = loadImage("cancha.png");
  img5 = loadImage("clasificación.png");
<<<<<<< HEAD
  img6 = loadImage("animadom.gif");
  img7 = loadImage("animadof.gif");
=======
   
>>>>>>> 0f7c7163600346555cce643ac57b122d9bdac73d
    //Jugadores
  mjugador = new Tenista1(300, 850);
  fjugador = new Tenista2(500, 850);
}

void draw() { //<>//
  
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
    image(img6, 150, 250, 260, 450);
    image(img7, 560, 250, 260, 450);
    
   
    
  } else if (estado == JUEGOM){  //Pantalla del partido jugador 'Jos'
     background(0);
    image(img4, 0, 0, 1000, 1000);
    
     //Moviemto del jugador y dibujo
     mjugador.update1();
     mjugador.ser1();
    
  } else if (estado == JUEGOF){  //Pantalla del partido jugadora 'Fran'
     background(0);
    image(img4, 0, 0, 1000, 1000);
   
    //Moviemto del jugador y dibujo
    fjugador.update2();
    fjugador.ser2();
    
    
    
    
  }
}

void mouseReleased() { //Controles de usuario para estados

//menu a eleccion del jugador 
  if (mouseY > 640 && mouseY < 670 && mouseX > 600 && mouseX < 880 && estado == PANTALLAINICIAL) {
    
    estado = SJUEGO;
   
    
//eleccion de jugador 'Jos' a juego
  } else if (mouseY > 250 && mouseY < 700 && mouseX > 150 && mouseX < 410 && estado == SJUEGO) {
    
    estado = JUEGOM;
    
 //eleccion de jugadora 'Fran' a juego
  } else if (mouseY > 250 && mouseY < 700 && mouseX > 560 && mouseX < 820 && estado == SJUEGO) {
    
    estado = JUEGOF;
   
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
    
  }
}
