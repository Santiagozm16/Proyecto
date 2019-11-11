void bordado3(){
int pointCount=30;
  int steps=1;
  float outerRadius=width*0.028;
  float innerRadiusFactor=0.018;
  float innerRadius=outerRadius*innerRadiusFactor;
  float outerRadiusRatio=outerRadius/steps;
  float innerRadiusRatio=innerRadius/steps;
  float shadeRatio=255/steps;
  float rotationRatio=90.0/steps;
    for(int i=0;i<steps;i++)  
  {
       stroke(22 - shadeRatio * i, 120,30);
    fill(shadeRatio*i,shadeRatio+i, shadeRatio-i);
    pushMatrix();
    rotate(rotationRatio * i * PI/260);
   
    fill(shadeRatio*i,shadeRatio+i, shadeRatio-i);
    rotate(rotationRatio * i * PI/360);
      Estrella(pointCount, outerRadius - outerRadiusRatio * i, innerRadius - innerRadiusRatio * i);
    popMatrix();
  }
}
void dibujarEso(){
 
    for(float i=Px; i<=x1; i=i+distancia1){
    Px = i;
    Py = (m*(i-x1))+y1;
    fill(255,0,0);
    stroke(0);
    bordado3();
    b1 = false;
    b2 = false;
    println(x0 + " ---- " + y0 +" ---- " + x1 + " ---- " + y1);
    
    println("Se han dibujado " + redondear + " bolas " );
    ultAct = 3;
}}
