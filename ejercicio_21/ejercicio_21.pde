void setup(){
  size(600,600);
  int lineaX = 0;
  int lineaY = 100;
  int circuloY = 75;
  int distanciaCirculo = 30;

  do{
            int circuloX = distanciaCirculo;

do{
    stroke(#008DFC);
    line(lineaX,lineaY,width,lineaY); 
    fill(random(255), random(255), random(255)); 
    stroke(0);
    strokeWeight(2);
    ellipse(circuloX,circuloY,50,50);
    circuloX += distanciaCirculo*2;

 
}while(circuloX < width);
    lineaY += 100;
    circuloY += 200;
    
}while(lineaY < height);
}
