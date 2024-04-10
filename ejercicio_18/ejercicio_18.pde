int linea;
int dir = 1;

void setup() {
  size(400, 400);
  linea = 200;
}

void draw() {
  background(0);
  
  for (int i = 0; i < 1; i++) {
    linea = linea + dir; // incrementa
  }
    if (linea >= height || linea <= 0) {
    dir = dir * -1;
  }
  println(linea);
  
  stroke(255);
  fill(0,255,0);
  line(dir, linea, width, linea);
  ellipse(width/2, linea + 40, 80, 80);
}
