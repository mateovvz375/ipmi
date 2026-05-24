void pantallaInicio() {
  if (imgPortada != null) {
    image(imgPortada, 0, 0, 640, 480);
  }
  
  textFont(fuenteTexto);
  fill(255);
  textAlign(CENTER);
  textSize(35);
  text("VIAJE AL CENTRO\nDE LA TIERRA", width / 2, 280);

  dibujarBoton(220, 360, 200, 60, "EMPEZAR");
}

void dibujarBoton(float posX, float posY, float w, float h, String textoBoton) {
  boolean mouseEncima = (mouseX > posX && mouseX < posX + w && mouseY > posY && mouseY < posY + h);

  if (mouseEncima && mousePressed) {
    fill(255, 204, 0); 
  } else if (mouseEncima) {
    fill(255, 255, 150); 
  } else {
    fill(255, 230, 80); 
  }

  rect(posX, posY, w, h, 15);

  textFont(fuenteBotones);
  fill(0);
  textAlign(CENTER);
  textSize(26);
  text(textoBoton, posX + (w / 2), posY + (h / 2) + 8);
}

void mousePressed() {
  if (estado == 0 && mouseX > 220 && mouseX < 420 && mouseY > 360 && mouseY < 420) {
    estado = 1;
    tiempoInicioEstado = millis();
  }
  
  if (estado == 9 && mouseX > 220 && mouseX < 420 && mouseY > 370 && mouseY < 430) {
    estado = 0;
    posY1 = 0;
    posY2 = height;
    tiempoInicioEstado = millis();
  }
}
