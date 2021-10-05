//Variables de estados
int estado;
int PANTALLAINICIAL = 0;
int INSTRUCCIONES = 1;
int SJUEGO = 2;
int JUEGO2 = 3;
int DERROTA = 4;
int VICTORIA = 5;
int VICTORIA2 = 6;


//Imagenes 
PImage img;
PImage img2;
PImage img3;
PImage img4;


void setup() {
  
  //Tamaño de la ventana
  size(1000, 1000);

  //Estado default
  estado = PANTALLAINICIAL;
  
  //Archivos de imagenes
  img = loadImage("Portada.png");
  img2 = loadImage("Instrucciones.png");
  img3 = loadImage("jugadores.png");
   
}

void draw() {
  
  if (estado == PANTALLAINICIAL) { //Pantalla de inicio
    background(0);
    image(img, 0, 0, 1000, 1000);
    
  } else if (estado == INSTRUCCIONES) { //Pantalla de instrucciones del juego
    background(0);
    image(img2, 0, 0, 1000, 1000);
   
  } else if (estado == SJUEGO){
     background(0);
    image(img3, 0, 0, 1000, 1000);
  }
}

void mouseReleased() { //Controles de usuario para estados

//menu a eleccion del jugador 
  if (mouseY > 640 && mouseY < 670 && mouseX > 600 && mouseX < 880 && estado == PANTALLAINICIAL) {
    estado = SJUEGO;
    
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
