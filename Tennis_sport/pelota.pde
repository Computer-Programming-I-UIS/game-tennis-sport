class Pelota {
  PVector posicion, velocidad;
  int anchoJugador, altoJugador;
  
  Pelota(int direccion) {
    anchoJugador = 20;
    altoJugador = 100;
    
    //Se posiciona la pelota en el centro de la pantalla
    posicion = new PVector(width/2, height/2);
    
    //Se asigna la velocidad de la pelota aleatoriamente con un valor entre 4 y 5
    velocidad = new PVector(direccion*random(6,7), random(6,7));
  }
  
  //permite a la pelota moverse libremente
  void mover() {
    posicion.add(velocidad);
  }
  
  //dibuja la pelota de los jugadores
  void mostrar() {
    fill(255);
    noStroke();
    ellipse(posicion.x, posicion.y, 20,20);
  }
  void validarReboteParedes() {
    //si la pelota sobrepasa de los bordes superior o inferior
    //rebotará cambiando la direccion de la velocidad en Y
    if(posicion.y > height) {
      velocidad.y *= -1;
    } else if(posicion.y < 0) {
      velocidad.y *= -1;
    }
  }
  
  PVector getPosicion() {
    return posicion;
  }
}
