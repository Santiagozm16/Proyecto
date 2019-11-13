//Programa de bordados por:
//Gustavo Leon
//Jesus Ruiz
//Santiago Rodriguez 
//Instrucciones:
//Para realizar un bordado marque el punto desde donde este inicia con click izquierdo y marque el punto final del bordado con click derecho, en este momento se dibujara el “hilo” guía, 
//para el bordado #1 presione la tecla “a”, para el bordado #2 la tecla “s” y para el bordado #2 la tecla “d”. Ningún bordado se puede superponer, para realizar esto debe realizar nuevamente la marcación de punto inicial y final. 
//Para borrar todo presione la flecha a la izquierda. 

float x0,y0,x1,y1,Px,Py,dis,cant,aux1,aux2,a;
boolean b1 = false ,b2 = false; //Variables banderas que ayudan al dibujado y que solo se pueda dibujar una linea a la vez
float  distancia1 = 15, distanciAux; // Distancia entre punto y punto (Esto es la relación de tamaño del bordado)  --- DistanciaAux se utiliza para guardar relación entre distancia 1 y Distancia Aux, esta se usa cuando se va a reducir el tamaño del bordado
float m; // Pendiente
color borrar = 204; //Color para borrar.
color colorBordado;//Color que tendra el bordado
int seleccionColor = 5; //Indice para el switch de los colores, empieza en 5 que es el color negro, se utiliza para el switch de los colores.
int redondear, ultAct = 5; //Cuando aun no se ha dibujado nada ultAct esta en 5 porque es su opcion en ambos Switch de aumentar y disminuir.
PImage menu;
void setup(){
menu = loadImage("Menu.png"); //Imagen del menu
size(855,700);
frameRate(10); //Controlar acciones por segundo del mouse 
}
void draw(){
 strokeWeight(1);//Es para evitar daños en el grosor de los otros bordados
if(mousePressed == true && mouseButton == LEFT && b1 == false){
    if((mouseX>0) && (mouseX < 855) && (mouseY> 0) && (mouseY<116)){
      //Esta condicional es para que los puntos del bordado no puedan ser tomados en toda la parte del menu
    }else{
    x0= mouseX;
    Px = x0;
    a = Px; //ESTE CAMBIO ES IMPORTANTE  LA HORA DE HACER EL BORRADO Y AUMENTAR EL TAMAÑO PARA QUE EL CICLO FOR SE EJECUTE DE UNA MANERA CORRECTA
    y0= mouseY;
    b1 = true; //Variable bandera de la toma del primer punto.
    }
  }
  if(mousePressed == true && mouseButton == RIGHT && b2 == false){
    if((mouseX>0) && (mouseX < 855) && (mouseY> 0) && (mouseY<116)){
      //Esta condicional es para que los puntos del bordado no puedan ser tomados en toda la parte del menu
    }else{
    x1 = mouseX;
    y1 = mouseY;
    distanciAux = distancia1;
    if(x0<x1){ //Condicional que genera la linea en caso de que esta sea marcada izquierda a derecha
    Calcular(); //Llamado al metodo de calcular la pendiente e información necesaria para la construcción del bordado
    }else{ //Si la linea es maracada de derecha a izquierda en esta parte se genera el cambio de variables para que esta pueda ser generada
    Px = x1;
    a=Px; //ESTE CAMBIO ES IMPORTANTE  LA HORA DE HACER EL BORRADO Y AUMENTAR EL TAMAÑO PARA QUE EL CICLO FOR SE EJECUTE DE UNA MANERA CORRECTA
    aux1=x0;
    aux2=y0;
    x0=x1;
    y0=y1;
    x1=aux1;
    y1=aux2;
    Calcular(); //Llamado al metodo de calcular la pendiente e información necesaria para la construcción del bordado
    }
}
  }
  // Mapeado de interfaz
  if((mouseX>34) && (mouseX < 34+31) && (mouseY> 71) && (mouseY<71+31)&& mousePressed && mouseButton == LEFT){ //Boton 1 de la segunda fila de los botones circulares
  if(b2 == true){
    dibujarBolitas(); //Bordado 01 - Gustavo -- Llamado al metodo de dibujado
  }
  }
  if((mouseX>34) && (mouseX < 34+31) && (mouseY> 13) && (mouseY<13+31)&& mousePressed && mouseButton == LEFT){ //boton 1 de la primer fila de los botones circulares 
    if(b2 == true){
    dibujarPuntoCruz(); //Bordado 02 - Santiago -- Llamado al metodo de dibujado
    }
  }
  if((mouseX>158) && (mouseX < 158+31) && (mouseY> 12) && (mouseY<12+31)&& mousePressed && mouseButton == LEFT){ // boton 2 de la primer fila de los botones circulares
    if(b2 == true){
    dibujarEso(); //Bordado 03 - Jesus -- Llamado al metodo de dibujado
    }
  }
  if((mouseX>158) && (mouseX < 158+31) && (mouseY> 71) && (mouseY<71+31)&& mousePressed && mouseButton == LEFT){ // boton 2 de la segunda fila de los botones circulares
    if(b2 == true){
    dibujarLineaPunteada();//Bordado 04 - Santiago -- Llamado al metodo de dibujado
    strokeWeight(1); //Es para evitar daños en el grosor de los otros bordados
    }
  }
  if((mouseX>251) && (mouseX < 251+116) && (mouseY> 0) && (mouseY<0+119)&& mousePressed && mouseButton == LEFT){ // boton de la caneca para limpiar la imagen
   background(borrar); 
  }
  if((mouseX>365) && (mouseX < 365+91) && (mouseY> 0) && (mouseY<119)){ //Boton "+" es el mapeado para llamar la instrucción que se le da en el Switch de aumentar en la ventana Botones_mas_menos
    if(mousePressed && mouseButton == LEFT){
      b1 = false; //Se pone en false para que no se pueda entrar a la condicional de captura de puntos, osea donde se marca el primer punto para hacer el bordado
      distancia1 = distancia1 + 5;
      if(distancia1>=45) //Tamaño maximo que puede tener el bordado
      distancia1 = 45;
      Aumentar(ultAct); //Llamado al Switch Aumentar -- El parametro ultAct es un parametro de un numero entero este puede ir de 1 a 5, empezara en 5 al iniciar el programa, ultAct cambia al ejecutar diferentes bordados (Cambia en el metodo de dibujado al final de este).
    }
  }
    if((mouseX>454) && (mouseX < 454+97) && (mouseY> 0) && (mouseY<119)){ //Boton "-" es el mapeado para llamar la instrucción que se le da en el Switch de Restaren la ventana Botones_mas_menos
    if(mousePressed && mouseButton == LEFT){
      b1 = false; //Se pone en false para que no se pueda entrar a la condicional de captura de puntos, osea donde se marca el primer punto para hacer el bordado
      distancia1 = distancia1 - 5; 
      if(distancia1<=0) //Tamaño minimo que puede tener el bordado
      distancia1 = 5;
      Restar(ultAct); //Llamado al Switch Aumentar -- El parametro ultAct es un parametro de un numero entero este puede ir de 1 a 5, empezara en 5 al iniciar el programa, ultAct cambia al ejecutar diferentes bordados (Cambia en el metodo de dibujado al final de este).
    }
  }
  strokeWeight(1);//Es para evitar daños en el grosor de los otros bordados
  image(menu,0,0); //Llamado a la imagen del menu.
}
void Calcular(){ //Calculos necesarios para la recta ¿"Principio de DDA" ?
    dis = dist(x0,y0,x1,y1);
    cant = dis/distancia1;
    redondear = round(cant);
    m = (y1-y0)/(x1-x0); //Ecuacion de una recta dado dos puntos y-y1=m(x-x1)
    b2 = true;
    stroke(255,104,105);
    line(x0,y0,x1,y1); //Es la linea naranja que se ve al principio.
}
