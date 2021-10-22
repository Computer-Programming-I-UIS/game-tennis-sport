class Pelota {
  PVector posicion, velocidad;
  int radio = 30;
  PImage pelota;
<<<<<<< HEAD

  Pelota(int direccion) {
    pelota = loadImage("pelota.png");

    //Se posiciona la pelota en la pantalla
    posicion = new PVector(470, 320);
    //Se asigna la velocidad de la pelota aleatoriamente con un valor entre 4 y 5
    velocidad = new PVector(direccion*random(4, 15), random(4, 15));
=======
  
  Pelota(int direccion) {
    pelota = loadImage("pelota.png");
    
    //Se posiciona la pelota en el centro de la pantalla
    posicion = new PVector(width/2, height/2); // hay que cambiarlo a cada jugador
    
    //Se asigna la velocidad de la pelota aleatoriamente con un valor entre 6 y 10
    velocidad = new PVector(direccion*random(6,10), random(6,10));
>>>>>>> a922cf828b11b297e11731bacc80a52a65070642
  }

  //permite a la pelota moverse libremente
  void mover() {
    posicion.add(velocidad);
  }
<<<<<<< HEAD

  //dibuja la pelota
  void mostrar() {
    image(pelota, posicion.x-15, posicion.y-15, radio, radio);
  }

=======
  
  //dibuja la pelota
  void mostrar() {
   image(pelota, posicion.x-15, posicion.y-15, radio, radio);
  } 
>>>>>>> a922cf828b11b297e11731bacc80a52a65070642
  PVector getPosicion() {
    return posicion;
  }
}
