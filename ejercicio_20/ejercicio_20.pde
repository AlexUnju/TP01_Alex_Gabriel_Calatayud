int distancia;
PVector puntoA, puntoB, puntoC, puntoD;


public void setup (){
  size(500,500);
  distancia=60;
  puntoA = new PVector(0,distancia);
  
  while(puntoA.y <= height){
  escalon();
  circulo();
  repeticion();
  }
}

public void escalon(){
  stroke(#00BEDE);
  strokeWeight(5);
  puntoB = new PVector(puntoA.x+distancia, puntoA.y);
  line(puntoA.x, puntoA.y,puntoB.x,puntoB.y);
  puntoC = new PVector(puntoB.x,puntoB.y+60);
  line(puntoB.x,puntoB.y,puntoC.x,puntoC.y);
}

public void circulo(){
  stroke(#FC030B);
  strokeWeight(9);
  puntoD = new PVector(puntoB.x, puntoB.y-8);
  point(puntoD.x,puntoD.y);
}

public void repeticion(){
  puntoA.x = puntoC.x;
  puntoA.y = puntoC.y;
}
