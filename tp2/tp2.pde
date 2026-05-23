// ==========================================================
// PRINCIPAL - VIAJE AL CENTRO DE LA TIERRA
// ==========================================================

PFont fuenteTexto;
PFont fuenteBotones;

PImage imgPortada, imgCentro, imgManuscrito, imgIslandia, imgProfesor, imgAxel, imgHans, imgDescenso, imgPerdidos, imgErupcion;

int estado = 0; 
int tiempoInicioEstado = 0;

float bgY1 = 0;
float bgY2;
float velocidad = 2; 

void setup() {
  size(640, 480);
  smooth();
  
  // CARGA DE FUENTES
  fuenteTexto = loadFont("fuente_textos.vlw"); 
  fuenteBotones = loadFont("fuente_botones.vlw"); 
  
  // CARGA DE IMÁGENES (Todas en formato .png y cuadradas)
  imgPortada = loadImage("portada.png");
  imgCentro = loadImage("centrodelatierra.png");
  imgManuscrito = loadImage("manuscrito.png");
  imgIslandia = loadImage("islandia.png");
  imgProfesor = loadImage("profesor.png");
  imgAxel = loadImage("axel.png");
  imgHans = loadImage("hans.png");
  imgDescenso = loadImage("descenso.png");
  imgPerdidos = loadImage("perdidos.png");
  imgErupcion = loadImage("erupcion.png");
  
  bgY2 = height; 
}

void draw() {
  // El fondo se dibuja y mueve solo durante los estados de historia (1 al 8)
  if (estado > 0 && estado < 9) {
    dibujarFondo();
  }
  
  if (estado == 0) pantallaInicio();
  else if (estado == 1) { slideCentro(); chequearTiempo(); }
  else if (estado == 2) { slideManuscrito(); chequearTiempo(); }
  else if (estado == 3) { slideIslandia(); chequearTiempo(); }
  else if (estado == 4) { slideProfesor(); chequearTiempo(); }
  else if (estado == 5) { slideAxel(); chequearTiempo(); }
  else if (estado == 6) { slideHans(); chequearTiempo(); }
  else if (estado == 7) { slideDescenso(); chequearTiempo(); }
  else if (estado == 8) { slidePerdidos(); chequearTiempo(); }
  else if (estado == 9) slideErupcion(); // Pantalla final que espera click
}
