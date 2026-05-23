// ==========================================================
// TIEMPOS DINÁMICOS Y FONDO ANIMADO
// ==========================================================

int obtenerDuracionPantalla() {
  if (estado == 1) return 6000;  // Centro de la Tierra
  if (estado == 2) return 10000; // Manuscrito
  if (estado == 3) return 7000;  // Islandia
  if (estado == 4) return 10000; // Profesor
  if (estado == 5) return 10000; // Axel
  if (estado == 6) return 10000; // Hans
  if (estado == 7) return 7000;  // Descenso
  if (estado == 8) return 8000;  // Perdidos
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
  if (estado == 1 || estado == 2) background(40, 70, 130);
  else if (estado >= 3 && estado <= 6) background(80, 55, 35);
  else background(10, 10, 10);
  
  noStroke();
  for (int i=0; i<20; i++) {
    fill(255, 30);
    ellipse((i*40)%width, bgY1 + (i*20)%height, 4, 4);
    ellipse((i*30)%width, bgY2 + (i*30)%height, 6, 6);
  }

  bgY1 -= velocidad;
  bgY2 -= velocidad;

  if (bgY1 <= -height) bgY1 = height;
  if (bgY2 <= -height) bgY2 = height;
  if (bgY1 >= height) bgY1 = -height;
  if (bgY2 >= height) bgY2 = -height;
}
