class Pelota {
  PVector posicion, velocidad;
  int radio = 30;
  PImage pelota;

  Pelota(int direccion) {
    pelota = loadImage("pelota.png");

    //Se posiciona la pelota en la pantalla
    posicion = new PVector(470, 320);
    //Se asigna la velocidad de la pelota aleatoriamente con un valor entre 4 y 5
    velocidad = new PVector(direccion*random(4, 15), random(4, 15));
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
