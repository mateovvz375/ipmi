void slideCentro() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  float posY = map(tiempoAnimacion, 0, 1500, height + 200, 60);
  
  if (imgCentro != null) {
    image(imgCentro, width / 2 - 100, posY, 200, 200);
  }

  fill(255);
  textAlign(CENTER);
  textSize(30);
  text("EL VIAJE COMIENZA", width / 2, posY + 250);

  textSize(18);
  text("Una expedición hacia las profundidades", width / 2, posY + 290);
  text("del planeta Tierra cambiará la historia.", width / 2, posY + 320);
}

void slideManuscrito() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 2000);
  
  float posX = map(tiempoAnimacion, 0, 2000, width + 200, width / 2);
  
  if (imgManuscrito != null) {
    image(imgManuscrito, posX - 100, 60, 200, 200);
  }

  fill(255);
  textAlign(CENTER);
  textSize(24);
  text("UN MENSAJE OCULTO", posX, 300);

  textSize(18);
  text("Dentro de un antiguo libro aparece", posX, 340);
  text("un mensaje escrito por un explorador", posX, 370);
  text("que asegura haber llegado al centro.", posX, 400);
}

void slideIslandia() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 2000);
  
  float posX = map(tiempoAnimacion, 0, 2000, -200, width / 2);
  
  if (imgIslandia != null) {
    image(imgIslandia, posX - 100, 60, 200, 200);
  }

  fill(255);
  textAlign(CENTER);
  textSize(30);
  text("ISLANDIA", posX, 300);

  textSize(18);
  text("La expedición viaja hacia Islandia,", posX, 340);
  text("donde un volcán apagado esconde", posX, 370);
  text("la entrada al misterioso camino.", posX, 400);
}
