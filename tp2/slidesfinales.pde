void slideDescenso() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 2000);
  
  float imgSize = map(tiempoAnimacion, 0, 2000, 0, 220);
  
  if (imgDescenso != null) {
    image(imgDescenso, width / 2 - (imgSize / 2), 100 + (110 - imgSize / 2), imgSize, imgSize);
  }

  fill(255);
  textAlign(CENTER);
  textSize(30);
  text("EL DESCENSO", width / 2, 370);
  textSize(18);
  text("La temperatura aumenta rápidamente...", width / 2, 410);
  text("La luz se desvanece por completo.", width / 2, 440);
}

void slidePerdidos() {
  textFont(fuenteTexto);
  int tiempo = millis() - tiempoInicioEstado;
  int tiempoAnimacion = min(tiempo, 1500);
  
  float posY = map(tiempoAnimacion, 0, 1500, -300, 80);
  
  if (imgPerdidos != null) {
    image(imgPerdidos, width / 2 - 110, posY, 220, 220);
  }

  fill(255);
  textAlign(CENTER);
  textSize(28);
  text("UN MUNDO SUBTERRÁNEO", width / 2, posY + 260);

  textSize(18);
  text("Mares gigantes y bestias prehistóricas.", width / 2, posY + 300);
  text("Lo imposible se vuelve real.", width / 2, posY + 330);
}

void slideErupcion() {
  textFont(fuenteTexto);
  
  if (imgErupcion != null) {
    image(imgErupcion, width / 2 - 110, 40, 220, 220);
  }

  fill(255, 200, 0);
  textAlign(CENTER);
  textSize(30);
  text("¡EL VOLCÁN ERUPCIONA!", width / 2, 300);
  
  fill(255);
  textSize(18);
  text("Son expulsados violentamente a la superficie.", width / 2, 340);
  
  dibujarBoton(220, 370, 200, 60, "REINICIAR");
}
