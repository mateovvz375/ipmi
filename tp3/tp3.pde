// Link de mi video a youtube: 
// Nombre de la obra: Túnel dieciseisivo
// Comisión 5 - Velázquez Mateo - Legajo: 94621/9

PImage referencia;
float rotacionInteractiva;
float variacionColor;

void setup() {
  size(800, 400);
  referencia = loadImage("33.jpeg");
  rotacionInteractiva = 0;
  variacionColor = 0;
}

void draw() {
  background(255);

  // mi if/else para el color del fondo
  float verde;
  if (mouseX > 400) {
    verde = map(mouseX, 400, 800, 140, 220) + variacionColor;
  } else {
    verde = 181 + variacionColor; 
  }

  fill(36, verde, 116);
  noStroke();
  rect(400, 0, 400, 400);

  push();
  translate(600, 200);

  // anillos grandes
  anillo(220, 60, 0 + rotacionInteractiva);
  anillo(163, 45, 10 + rotacionInteractiva);
  anillo(120, 30, 20 + rotacionInteractiva);
  anillo(90, 22, 28 + rotacionInteractiva);
  anillo(70, 16, 35 + rotacionInteractiva);
  anillo(55, 12, 42 + rotacionInteractiva);
  anillo(42, 9, 48 + rotacionInteractiva);
  anillo(32, 7, 54 + rotacionInteractiva);
  anillo(24, 5, 60 + rotacionInteractiva);
  anillo(18, 4, 66 + rotacionInteractiva);
  anillo(13, 3, 72 + rotacionInteractiva);
  anillo(8, 2, 78 + rotacionInteractiva);
  anillo(4, 1, 84 + rotacionInteractiva);

  // anillos del centro
  for (int i = 0; i < 10; i++) {
    float radio = 4 - i * 0.35;
    float tamano = 1 - i * 0.05;
    float rotacion = 84 + i * 2 + rotacionInteractiva;

    anillo(radio, tamano, rotacion);
  }
  pop();

  if (referencia != null) {
    image(referencia, 0, 0, 400, 400);
  }
}

// funciones propias

// no retorna valor
void anillo(float radio, float tamCirculo, float rotacion) {
  for (int i = 0; i < 16; i++) {
    
    //aca uso la que si retorna valor
    float angulo = calcularAngulo(i, rotacion);

    float posX = cos(angulo) * radio;
    float posY = sin(angulo) * radio;

    push();
    translate(posX, posY);
    rotate(angulo);

    fill(255);
    arc(0, 0, tamCirculo * 1.10, tamCirculo * 1.15, PI, TWO_PI);

    fill(0);
    arc(0, 0, tamCirculo * 1.10, tamCirculo * 1.15, 0, PI);

    fill(102, 47, 148);
    circle(0, 0, tamCirculo);

    pop();
  }
}

// la que si retorna valor
float calcularAngulo(int paso, float rotBase) {
  float anguloCalculado = radians(paso * 22.5 + rotBase);
  return anguloCalculado;
}

// la interaccion
// usar la tecla <- y -> para rotar
void keyPressed() {
  if (keyCode == LEFT) {
    rotacionInteractiva -= 2;
  }

  if (keyCode == RIGHT) {
    rotacionInteractiva += 2;
  }
}

// click para reiniciar

void mousePressed() {
  // dist y random para el reinicio
  float distanciaCentro = dist(mouseX, mouseY, 600, 200);
  
  if (distanciaCentro < 200) {
    rotacionInteractiva = 0; 
    variacionColor = random(-20, 20); 
  }
}
