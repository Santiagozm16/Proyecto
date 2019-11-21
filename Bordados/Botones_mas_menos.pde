void Aumentar(int a){
int opcion = a;
switch(opcion){
  case 1:
  Cinta3();
  line(x0,y0,x1,y1);
  dibujarBolitas();
  break;
  case 2:
  Cinta(); //Llamado a cinta para borrar y luego si dibujar con el nuevo tamaño
  dibujarPuntoCruz(); //Llamado a Punto de cruz para dibujar con el nuevo tamaño
  break;
  case 3:
   Cinta7();
  line(x0,y0,x1,y1);
 dibujarEso();
  break;

  case 4:
  cintaLinea();
  strokeWeight(1);//Es para evitar daños en el grosor de los otros bordados
  dibujarLineaPunteada();
  break;
  case 5: //No se ha dibujado nunca en la ventana, por esta razon ultAct esta en 5 al principio del programa
  if(distancia1>45) //controlar tamaño maximo
  distancia1 = 40;
  break;

  }
}
void Restar(int a){
  int opcion = a;
switch(opcion){
  case 1:
  Cinta4();
  dibujarBolitas();
  break;
  case 2:
  Cinta2(); //Llamado a cinta para borrar y luego si dibujar con el nuevo tamaño
  dibujarPuntoCruz(); //Llamado a Punto de cruz para dibujar con el nuevo tamaño
  break;
  case 3:
   Cinta8();
  dibujarEso();

  break;
  case 4:
  cintaLinea();
  strokeWeight(1);//Es para evitar daños en el grosor de los otros bordados
  dibujarLineaPunteada();
  strokeWeight(1);//Es para evitar daños en el grosor de los otros bordados
  break;
  case 5: //No se ha dibujado nunca en la ventana, por esta razon ultAct esta en 5 al principio del programa
  if(distancia1<0) //controlar tamaño minimo
  distancia1 = 5;
  break;

  } 
}
