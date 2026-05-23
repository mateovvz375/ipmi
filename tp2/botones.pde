// ==========================================================
// CLICS DEL MOUSE Y BOTONES DE CÓDIGO
// ==========================================================

void pantallaInicio() {
  background(20, 30, 70);
  
  if (imgPortada != null) {
    // Se dibuja cuadrada y centrada arriba del texto
    image(imgPortada, width/2 - 100, 40, 200, 200); 
  }
  
  textFont(fuenteTexto);
  fill(255); textAlign(CENTER); textSize(35);
  text("VIAJE AL CENTRO\nDE LA TIERRA", width/2, 280);

  dibujarBoton(220, 360, 200, 60, "EMPEZAR");
}

void dibujarBoton(float x, float y, float w, float h, String textoBoton) {
  boolean mouseEncima = (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h);

  if (mouseEncima && mousePressed) fill(30, 80, 200); 
  else if (mouseEncima) fill(100, 150, 255); 
  else fill(70, 120, 255); 

  rect(x, y, w, h, 15); 

  textFont(fuenteBotones);
  fill(255); textAlign(CENTER); textSize(26);
  text(textoBoton, x + (w/2), y + (h/2) + 8); 
}

void mousePressed() {
  // SÓLO DOS CLICS PERMITIDOS EN TODO EL CÓDIGO

  // 1. Botón EMPEZAR
  if (estado == 0 && mouseX > 220 && mouseX < 420 && mouseY > 360 && mouseY < 420) {
    estado = 1;
    tiempoInicioEstado = millis();
  }
  
  // 2. Botón REINICIAR
  if (estado == 9 && mouseX > 220 && mouseX < 420 && mouseY > 370 && mouseY < 430) {
    estado = 0; // Vuelve directo al menú principal
    bgY1 = 0;   // Resetea el fondo
    bgY2 = height;
  }
}
