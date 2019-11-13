void bordado1()
{
  int pointCount=5;
  int steps=1;
  float outerRadius=(distancia1+25)*0.28;
  float innerRadiusFactor=0.18;
  float innerRadius=outerRadius*innerRadiusFactor;
  float outerRadiusRatio=outerRadius/steps;
  float innerRadiusRatio=innerRadius/steps;
  float shadeRatio=255/steps;
  float rotationRatio=90.0/steps;
  
  for(int i=0;i<steps;i++)  
  {
    stroke(255 - shadeRatio * i, 150,100);
    fill(shadeRatio*i,shadeRatio+i, shadeRatio-i);
    pushMatrix();
    rotate(rotationRatio * i * PI/300);
  
    fill(shadeRatio*i,shadeRatio+i, shadeRatio-i);
    rotate(rotationRatio * i * PI/-150);
    Estrella(pointCount, outerRadius - outerRadiusRatio * i, innerRadius - innerRadiusRatio * i);
    popMatrix();
  }
}
void dibujarBolitas(){ //Diametro, pos x, pos y, cantidad de dibujos a realizar
  for(float i=Px; i<=x1; i=i+distancia1){
    Px = i;
    Py = (m*(i-x1))+y1;
    fill(255,0,0);
    stroke(0);
    bordado1();
  }
  b1 = false;
  b2 = false;
  //println("Se han dibujado " + redondear + " bolitas" );
  ultAct = 1; //ultActCambia Aqui, para este bordado se le da el #1 que es el Case 1 para aumentar o disminuir
}
