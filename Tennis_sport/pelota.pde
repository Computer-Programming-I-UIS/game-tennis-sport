class Pelota {
  PVector posicion, velocidad;
  int radio = 30;
  PImage pelota;
  
  Pelota(int direccion) {
    pelota = loadImage("pelota.png");
    
    //Se posiciona la pelota en el centro de la pantalla
    posicion = new PVector(width/2, height/2); // hay que cambiarlo a cada jugador
    
    //Se asigna la velocidad de la pelota aleatoriamente con un valor entre 6 y 10
    velocidad = new PVector(direccion*random(6,10), random(6,10));
  }
  
  //permite a la pelota moverse libremente
  void mover() {
    posicion.add(velocidad);
  }
  
  //dibuja la pelota
  void mostrar() {
   image(pelota, posicion.x-15, posicion.y-15, radio, radio);
  } 
  PVector getPosicion() {
    return posicion;
  }
}
