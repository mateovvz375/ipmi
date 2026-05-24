PFont fuenteTexto;
PFont fuenteBotones;

PImage imgPortada, imgCentro, imgManuscrito, imgIslandia, imgProfesor, imgAxel, imgHans, imgDescenso, imgPerdidos, imgErupcion;

int estado = 0;
int tiempoInicioEstado = 0;

float posY1 = 0;
float posY2;
float velocidad = 2;

void setup() {
  size(640, 480);
  smooth();
  
  fuenteTexto = loadFont("fuente_textos.vlw");
  fuenteBotones = loadFont("fuente_botones.vlw");
  
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
  
  posY2 = height;
}

void draw() {
  dibujarFondo();
  
  if (estado == 0) {
    pantallaInicio();
  } else if (estado == 1) {
    slideCentro();
    chequearTiempo();
  } else if (estado == 2) {
    slideManuscrito();
    chequearTiempo();
  } else if (estado == 3) {
    slideIslandia();
    chequearTiempo();
  } else if (estado == 4) {
    slideProfesor();
    chequearTiempo();
  } else if (estado == 5) {
    slideAxel();
    chequearTiempo();
  } else if (estado == 6) {
    slideHans();
    chequearTiempo();
  } else if (estado == 7) {
    slideDescenso();
    chequearTiempo();
  } else if (estado == 8) {
    slidePerdidos();
    chequearTiempo();
  } else if (estado == 9) {
    slideErupcion();
  }
}
