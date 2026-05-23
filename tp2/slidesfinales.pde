// ==========================================================
// DESCENSO Y ERUPCIÓN FINAL
// ==========================================================

void slideDescenso() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 2000);
  
  // En lugar de fade con tint, la imagen CRECE desde el centro (Efecto Escala)
  float imgSize = map(tiempoAnimacion, 0, 2000, 0, 220);
  
  if (imgDescenso != null) {
    image(imgDescenso, width/2 - (imgSize/2), 100 + (110 - imgSize/2), imgSize, imgSize); 
  }

  fill(255); textAlign(CENTER); textSize(30);
  text("EL DESCENSO", width/2, 370);
  textSize(18);
  text("La temperatura aumenta rápidamente...", width/2, 410);
  text("La luz se desvanece por completo.", width/2, 440);
}

void slidePerdidos() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  // Entra desde arriba hacia abajo
  float yPos = map(tiempoAnimacion, 0, 1500, -300, 80);
  
  if (imgPerdidos != null) {
    image(imgPerdidos, width/2 - 110, yPos, 220, 220); // Cuadrada 220x220
  }

  fill(255); textAlign(CENTER); textSize(28);
  text("UN MUNDO SUBTERRÁNEO", width/2, yPos + 260);

  textSize(18);
  text("Mares gigantes y bestias prehistóricas.", width/2, yPos + 300);
  text("Lo imposible se vuelve real.", width/2, yPos + 330);
}

void slideErupcion() {
  background(40, 10, 10); // Un fondo rojo oscuro y estático para el final
  
  textFont(fuenteTexto);
  
  if (imgErupcion != null) {
    image(imgErupcion, width/2 - 110, 40, 220, 220); // Cuadrada 220x220
  }

  fill(255, 200, 0); textAlign(CENTER); textSize(30);
  text("¡EL VOLCÁN ERUPCIONA!", width/2, 300);
  
  fill(255); textSize(18);
  text("Son expulsados violentamente a la superficie.", width/2, 340);
  
  // El único botón para terminar y reiniciar
  dibujarBoton(220, 370, 200, 60, "REINICIAR");
}
