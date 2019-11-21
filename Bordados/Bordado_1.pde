void bordado1()
{
  
  int steps=1;
  float outerRadius=distancia1*oR1;
  float innerRadiusFactor=iR1;
  float innerRadius=outerRadius*innerRadiusFactor;
  float outerRadiusRatio=outerRadius/steps;
  float innerRadiusRatio=innerRadius/steps;

  float rotationRatio=90.0/steps;

  for (int i=0; i<steps; i++)  
  {
    stroke(colorBordado);
    pushMatrix();
    rotate(rotationRatio * i * PI/300);
    
    rotate(rotationRatio * i * PI/-150);
    Estrella(pointCount, outerRadius - outerRadiusRatio * i, innerRadius - innerRadiusRatio * i);
    popMatrix();
  }
}
void dibujarBolitas() { //Diametro, pos x, pos y, cantidad de dibujos a realizar
  for (float i=a; i<=x1; i=i+distancia1) {
    Px = i;
    Py = (m*(i-x1))+y1;
    stroke(colorBordado);
    bordado1();
  }
  b1 = false;
  b2 = false;
  //println("Se han dibujado " + redondear + " bolitas" );
  ultAct = 1; //ultActCambia Aqui, para este bordado se le da el #1 que es el Case 1 para aumentar o disminuir
}
void Cinta3(){ //Cinta utilizado para borrar el bordado anterior y poder dibujar el bordado con mayor tamaño
    fill(borrar);
    stroke(borrar);
    beginShape();
    vertex(x0-(oR1*(distancia1+50)),y0+(oR1*(distancia1+50)));
    vertex(x1+(oR1*(distancia1+50)),y1+(oR1*(distancia1+50)));
    vertex(x1+(oR1*(distancia1+50)),y1-(oR1*(distancia1+50)));
    vertex(x0-(oR1*(distancia1+50)),y0-(oR1*(distancia1+50)));
    endShape(CLOSE);
}

void Cinta4(){ //Cinta utilizado para borrar el bordado anterior y poder dibujar el bordado con mayor tamaño
    fill(borrar);
    stroke(borrar);
    beginShape();
    vertex(x0-(oR1*(distancia1+50)),y0+(oR1*(distancia1+50)));
    vertex(x1+(oR1*(distancia1+50)),y1+(oR1*(distancia1+50)));
    vertex(x1+(oR1*(distancia1+50)),y1-(oR1*(distancia1+50)));
    vertex(x0-(oR1*(distancia1+50)),y0-(oR1*(distancia1+50)));
    endShape(CLOSE);
}
