void Colores(int a){
int opcion = a;
switch(opcion){
  case 1:
  colorBordado = color(255,0,0); //Asignacion del color
  Aumentar(ultAct); //Reutilización del switch aumentar para re dibujar con el nuevo color. (tambien sirve el Switch de Restar), el tamaño no se ve afectado porque este cambia cuando se preciona en "+" o "-"
  break;
  case 2: 
  colorBordado = color(0,145,61);  //Asignacion del color
  Aumentar(ultAct);//Reutilización del switch aumentar para re dibujar con el nuevo color. (tambien sirve el Switch de Restar), el tamaño no se ve afectado porque este cambia cuando se preciona en "+" o "-"
  break;
  case 3:
  colorBordado = color(0,156,222);  //Asignacion del color
  Aumentar(ultAct);//Reutilización del switch aumentar para re dibujar con el nuevo color. (tambien sirve el Switch de Restar), el tamaño no se ve afectado porque este cambia cuando se preciona en "+" o "-"
  break;
  case 4:
  colorBordado = color(147,77,25);  //Asignacion del color
  Aumentar(ultAct);//Reutilización del switch aumentar para re dibujar con el nuevo color. (tambien sirve el Switch de Restar), el tamaño no se ve afectado porque este cambia cuando se preciona en "+" o "-"
  break;
  case 5: 
  colorBordado = color(0,0,0);  //Asignacion del color 
  Aumentar(ultAct);//Reutilización del switch aumentar para re dibujar con el nuevo color. (tambien sirve el Switch de Restar), el tamaño no se ve afectado porque este cambia cuando se preciona en "+" o "-"
  break;
  case 6:
  colorBordado = color(255,255,255); //Asignacion del color
  Aumentar(ultAct);//Reutilización del switch aumentar para re dibujar con el nuevo color. (tambien sirve el Switch de Restar), el tamaño no se ve afectado porque este cambia cuando se preciona en "+" o "-"
  break;
  }
}
