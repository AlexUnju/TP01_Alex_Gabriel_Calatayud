float x1=100, y1=100, x2=200, y2=400;
PImage linkImage; // Imagen de Link
PImage tesoroImage; // Imagen del tesoro
float distanciaTesoro=50;

void setup() {
  size(800, 600);
  linkImage = loadImage("link.gif");
  tesoroImage = loadImage("c.gif");
  linkImage.resize(80, 80);
  tesoroImage.resize(80, 80); 
}

void draw() {
    background(135, 206, 250);
    float coordenadaX = x2 - x1; // Calcular tamaño de los catetos de Link
    float coordenadaY = y2 - y1; // Calcular tamaño de los catetos del tesoro
    
    float distancia = sqrt(pow(coordenadaX, 2) + pow(coordenadaY, 2)); //calcular la distancia
    String textoDistancia = "la distancia es de: " + distancia; // mostrará una cadena de texto en la terminal con la distancia entre Link y el tesoro
    println(textoDistancia);
  
  //mensaje ¡Power-Up activado! si Link está en la posición del cofre
  if (distancia <= distanciaTesoro) {
    println("¡Power-Up activado!");
  }

   //imagenes
  image(tesoroImage, x2, y2);
  image(linkImage, x1, y1);
  
  //texto de coordenadas mostradas en pantalla
  String coordenadas = "X1: " + mouseX + ", Y1: " + mouseY;
  fill(0);
  textSize(20);
  textAlign(RIGHT, TOP);
  text(coordenadas, width, 0);
}

void mouseMoved(){
  x1=mouseX;
  y1=mouseY;
}
