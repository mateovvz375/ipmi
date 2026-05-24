int obtenerDuracionPantalla() {
  if (estado == 1) return 6000;
  if (estado == 2) return 10000;
  if (estado == 3) return 7000;
  if (estado == 4) return 10000;
  if (estado == 5) return 10000;
  if (estado == 6) return 10000;
  if (estado == 7) return 7000;
  if (estado == 8) return 8000;
  return 5000;
}

void chequearTiempo() {
  int tiempoPasado = millis() - tiempoInicioEstado;
  if (tiempoPasado >= obtenerDuracionPantalla()) {
    estado++;
    tiempoInicioEstado = millis();
  }
}

void dibujarFondo() {
  if (estado == 0) {
    background(20, 30, 70);
  } else if (estado == 1 || estado == 2) {
    background(40, 70, 130);
  } else if (estado >= 3 && estado <= 6) {
    background(80, 55, 35);
  } else if (estado == 7 || estado == 8) {
    background(10, 10, 10);
  } else if (estado == 9) {
    background(40, 10, 10);
  }
  
  noStroke();
  for (int i = 0; i < 20; i++) {
    fill(255, 30);
    ellipse((i * 40) % width, posY1 + (i * 20) % height, 4, 4);
    ellipse((i * 30) % width, posY2 + (i * 30) % height, 6, 6);
  }

  posY1 -= velocidad;
  posY2 -= velocidad;

  if (posY1 <= -height) {
    posY1 = height;
  }
  if (posY2 <= -height) {
    posY2 = height;
  }
}
