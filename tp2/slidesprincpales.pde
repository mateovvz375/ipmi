// ==========================================================
// PANTALLAS DE LA HISTORIA
// ==========================================================

void slideCentro() {
  textFont(fuenteTexto); 
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  // La imagen entra desde ABAJO
  float yPos = map(tiempoAnimacion, 0, 1500, height + 200, 60); 
  
  if (imgCentro != null) {
    image(imgCentro, width/2 - 100, yPos, 200, 200); // Cuadrada 200x200
  }

  fill(255); textAlign(CENTER); textSize(30);
  text("EL VIAJE COMIENZA", width/2, yPos + 250); 

  textSize(18);
  text("Una expedición hacia las profundidades", width/2, yPos + 290);
  text("del planeta Tierra cambiará la historia.", width/2, yPos + 320);
}

void slideManuscrito() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 2000); 
  
  // La imagen entra desde la DERECHA
  float xPos = map(tiempoAnimacion, 0, 2000, width + 200, width/2);
  
  if (imgManuscrito != null) {
    image(imgManuscrito, xPos - 100, 60, 200, 200); // Cuadrada 200x200
  }

  fill(255); textAlign(CENTER); textSize(24);
  text("UN MENSAJE OCULTO", xPos, 300);

  textSize(18);
  text("Dentro de un antiguo libro aparece", xPos, 340);
  text("un mensaje escrito por un explorador", xPos, 370);
  text("que asegura haber llegado al centro.", xPos, 400);
}

void slideIslandia() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 2000);
  
  // La imagen entra desde la IZQUIERDA
  float xPos = map(tiempoAnimacion, 0, 2000, -200, width/2);
  
  if (imgIslandia != null) {
    image(imgIslandia, xPos - 100, 60, 200, 200); // Cuadrada 200x200
  }

  fill(255); textAlign(CENTER); textSize(30);
  text("ISLANDIA", xPos, 300);

  textSize(18);
  text("La expedición viaja hacia Islandia,", xPos, 340);
  text("donde un volcán apagado esconde", xPos, 370);
  text("la entrada al misterioso camino.", xPos, 400);
}
