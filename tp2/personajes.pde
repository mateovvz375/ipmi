// ==========================================================
// PRESENTACIÓN DE PERSONAJES
// ==========================================================

void slideProfesor() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  // Entra de izquierda a derecha
  float profX = map(tiempoAnimacion, 0, 1500, -300, 70); 
  
  if (imgProfesor != null) {
    image(imgProfesor, profX, 100, 220, 220); // Cuadrada 220x220
  }

  fill(255); textAlign(LEFT); textSize(26);
  text("PROFESOR LIDENBROCK", profX + 240, 150);

  textSize(18);
  text("Está obsesionado con descubrir", profX + 240, 220);
  text("los secretos ocultos bajo la Tierra.", profX + 240, 250);
  text("Nada detiene su ambición.", profX + 240, 280);
}

void slideAxel() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  // Entra de derecha a izquierda
  float axelX = map(tiempoAnimacion, 0, 1500, width + 200, 350);
  
  if (imgAxel != null) {
    image(imgAxel, axelX, 100, 220, 220); // Cuadrada 220x220
  }

  fill(255); textAlign(RIGHT); textSize(26);
  text("AXEL", axelX - 20, 150);

  textSize(18);
  text("Axel acompaña a su tío", axelX - 20, 220);
  text("a través de cavernas peligrosas.", axelX - 20, 250);
  text("Aunque tiene miedo, sigue adelante.", axelX - 20, 280);
}

void slideHans() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  // Cae de arriba hacia abajo
  float hansY = map(tiempoAnimacion, 0, 1500, -300, 60);
  
  if (imgHans != null) {
    image(imgHans, width/2 - 110, hansY, 220, 220); // Cuadrada 220x220
  }

  fill(255); textAlign(CENTER); textSize(26);
  
  if (tiempo > 1500) {
    text("HANS BJELKE", width/2, 320);
    textSize(18);
    text("Un guía islandés impasible y silencioso.", width/2, 360);
    text("Su fuerza y tranquilidad son la clave", width/2, 390);
    text("para sobrevivir a los abismos.", width/2, 420);
  }
}
