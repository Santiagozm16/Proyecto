//Programa de bordados por:
//Gustavo Leon
//Jesus Ruiz
//Santiago Rodriguez 
//Instrucciones:
//Para realizar un bordado marque el punto desde donde este inicia con click izquierdo y marque el punto final del bordado con click derecho, en este momento se dibujara el “hilo” guía, 
//para el bordado #1 presione la tecla “a”, para el bordado #2 la tecla “s” y para el bordado #2 la tecla “d”. Ningún bordado se puede superponer, para realizar esto debe realizar nuevamente la marcación de punto inicial y final. 
//Para borrar todo presione la flecha a la izquierda. 

float x0,y0,x1,y1,Px,Py,dis,cant,Sum1,Sum2,aux1,aux2,a,t9;
boolean b1 = false ,b2 = false;
float  distancia1 = 15, distanciAux; // Distancia entre punto y punto
float m;
color borrar = 204;
int redondear, ultAct = 4; //Cuando aun no se ha dibujado nada.
PImage menu;
void setup(){
menu = loadImage("Menu.png");

size(855,500);
frameRate(10);
}
void draw(){
textSize(10);
text("click izquierdo= punto inicial, derecho= final. a= bordado_1, s=2 y d=3. <- izquierda= borrar", 2 + 10, 20);
if(mousePressed == true && mouseButton == LEFT && b1 == false){
    if((mouseX>0) && (mouseX < 855) && (mouseY> 0) && (mouseY<116)){
      
    }else{
    x0= mouseX;
    Px = x0;
    a = Px;
    y0= mouseY;
    b1 = true;
    }
  }
  if(mousePressed == true && mouseButton == RIGHT && b2 == false){
    if((mouseX>0) && (mouseX < 855) && (mouseY> 0) && (mouseY<116)){
      
    }else{
    x1 = mouseX;
    y1 = mouseY;
    distanciAux = distancia1;
    if(x0<x1){
    Calcular();
    }else{
    Px = x1;
    a=Px;
    aux1=x0;
    aux2=y0;
    x0=x1;
    y0=y1;
    x1=aux1;
    y1=aux2;
    Calcular();
    }
}
  }
  if((mouseX>34) && (mouseX < 34+31) && (mouseY> 71) && (mouseY<71+31)&& mousePressed && mouseButton == LEFT){
  if(b2 == true){
    dibujarBolitas(); //Bordado 01 - Gustavo
  }
  }
  if((mouseX>34) && (mouseX < 34+31) && (mouseY> 13) && (mouseY<13+31)&& mousePressed && mouseButton == LEFT){
    if(b2 == true){
    dibujarPuntoCruz(); //Bordado 02 - Santiago
    }
  }
  if((mouseX>158) && (mouseX < 158+31) && (mouseY> 12) && (mouseY<12+31)&& mousePressed && mouseButton == LEFT){
    if(b2 == true){
    dibujarEso(); //Bordado 03 - Jesus
    }
  }
  if((mouseX>251) && (mouseX < 251+116) && (mouseY> 0) && (mouseY<0+119)&& mousePressed && mouseButton == LEFT){
   background(204); 
  }
  if((mouseX>365) && (mouseX < 365+91) && (mouseY> 0) && (mouseY<119)){
    if(mousePressed && mouseButton == LEFT){
      b1 = false;
      distancia1 = distancia1 + 5;
      if(distancia1>=45)
      distancia1 = 45;
      println(distancia1);
      Aumentar(ultAct);
    }
  }
    if((mouseX>454) && (mouseX < 454+97) && (mouseY> 0) && (mouseY<119)){
    if(mousePressed && mouseButton == LEFT){
      b1 = false;
      distancia1 = distancia1 - 5;
      if(distancia1<=0)
      distancia1 = 5;
      println(distancia1);
      Restar(ultAct);
    }
  }
  image(menu,0,0);
}
void Calcular(){
    dis = dist(x0,y0,x1,y1);
    cant = dis/distancia1;
    redondear = round(cant);
    m = (y1-y0)/(x1-x0); //Ecuacion de una recta dado dos puntos y-y1=m(x-x1)
    b2 = true;
    stroke(255,104,105);
    line(x0,y0,x1,y1);
}
