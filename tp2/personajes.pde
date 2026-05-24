void slideProfesor() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  float posX = map(tiempoAnimacion, 0, 1500, -300, 70);
  
  if (imgProfesor != null) {
    image(imgProfesor, posX, 100, 220, 220);
  }

  fill(255);
  textAlign(LEFT);
  textSize(26);
  text("PROFESOR LIDENBROCK", posX + 240, 150);

  textSize(18);
  text("Está obsesionado con descubrir", posX + 240, 220);
  text("los secretos ocultos bajo la Tierra.", posX + 240, 250);
  text("Nada detiene su ambición.", posX + 240, 280);
}

void slideAxel() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  float posX = map(tiempoAnimacion, 0, 1500, width + 200, 350);
  
  if (imgAxel != null) {
    image(imgAxel, posX, 100, 220, 220);
  }

  fill(255);
  textAlign(RIGHT);
  textSize(26);
  text("AXEL", posX - 20, 150);

  textSize(18);
  text("Axel acompaña a su tío", posX - 20, 220);
  text("a través de cavernas peligrosas.", posX - 20, 250);
  text("Aunque tiene miedo, sigue adelante.", posX - 20, 280);
}

void slideHans() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  float posY = map(tiempoAnimacion, 0, 1500, -300, 60);
  
  if (imgHans != null) {
    image(imgHans, width / 2 - 110, posY, 220, 220);
  }

  fill(255);
  textAlign(CENTER);
  textSize(26);
  
  if (tiempo > 1500) {
    text("HANS BJELKE", width / 2, 320);
    textSize(18);
    text("Un guía islandés impasible y silencioso.", width / 2, 360);
    text("Su fuerza y tranquilidad son la clave", width / 2, 390);
    text("para sobrevivir a los abismos.", width / 2, 420);
  }
}
