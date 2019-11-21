void bordado3(){

  int steps=1;

  float outerRadius=distancia1*oR2;
  float innerRadiusFactor=iR2;
  float innerRadius=outerRadius*innerRadiusFactor;
  float outerRadiusRatio=outerRadius/steps;
  float innerRadiusRatio=innerRadius/steps;

  float rotationRatio=90.0/steps;
  
  for(int i=0;i<steps;i++)  
  {
    stroke(colorBordado);
    
    pushMatrix();
    rotate(rotationRatio * i * PI/260);
    Estrella1(pointCount, outerRadius - outerRadiusRatio * i, innerRadius - innerRadiusRatio * i);
 
    rotate(rotationRatio * i * PI/360);
   
    popMatrix();

  }
}
void dibujarEso(){
 
       for(float i=a; i<=x1; i=i+distancia1){
    Px = i;
    Py = (m*(i-x1))+y1;

    stroke(colorBordado);
    bordado3();
}
  b1 = false;
    b2 = false;
    //println(x0 + " ---- " + y0 +" ---- " + x1 + " ---- " + y1);
 ultAct = 3; //ultActCambia Aqui, para este bordado se le da el #1 que es el Case 1 para aumentar o disminuir
  
}
void Cinta7(){ //Cinta utilizado para borrar el bordado anterior y poder dibujar el bordado con mayor tamaño
    fill(borrar);
    stroke(borrar);
    beginShape();
    vertex(x0-(oR2*(distancia1+50)),y0+(oR2*(distancia1+50)));
    vertex(x1+(oR2*(distancia1+50)),y1+(oR2*(distancia1+50)));
    vertex(x1+(oR2*(distancia1+50)),y1-(oR2*(distancia1+50)));
    vertex(x0-(oR2*(distancia1+50)),y0-(oR2*(distancia1+50)));
    endShape(CLOSE);
}

void Cinta8(){ //Cinta utilizado para borrar el bordado anterior y poder dibujar el bordado con mayor tamaño
    fill(borrar);
    stroke(borrar);
    beginShape();
    vertex(x0-(oR2*(distancia1+50)),y0+(oR2*(distancia1+50)));
    vertex(x1+(oR2*(distancia1+50)),y1+(oR2*(distancia1+50)));
    vertex(x1+(oR2*(distancia1+50)),y1-(oR2*(distancia1+50)));
    vertex(x0-(oR2*(distancia1+50)),y0-(oR2*(distancia1+50)));
    endShape(CLOSE);


}
