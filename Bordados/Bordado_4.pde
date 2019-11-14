void dibujarLineaPunteada(){
 stroke(colorBordado);
 line(x0,y0,x1,y1); 
 for(float i=a; i<=x1; i=i+distancia1){
    Px = i;
    Py = (m*(i-x1))+y1;
    if(i == a){
    q=Px-distancia1/2; //Punto utilizado para dibujar la cinta
    w=Py-distancia1/2;//Punto utilizado para dibujar la cinta
    e=q; //Punto utilizado para dibujar la cinta
    r=Py+distancia1/2; //Punto utilizado para dibujar la cinta
    }
    beginShape(LINES);
    stroke(borrar);
    strokeWeight(3); 
    vertex(Px-distancia1/3,Py-distancia1/3);
    vertex(Px+distancia1/3,Py+distancia1/3);
    endShape();
    }
    t=Px+distancia1/2; //Punto utilizado para dibujar la cinta
    y=Py-distancia1/2; //Punto utilizado para dibujar la cinta
    u=t; //Punto utilizado para dibujar la cinta
    o=Py+distancia1/2; //Punto utilizado para dibujar la cinta
    b1 = false;
    b2 = false;
    //println(x0 + " ---- " + y0 +" ---- " + x1 + " ---- " + y1);
    //println("La pendiente de la recta es "+ m );
    //println("Se han dibujado " + redondear + " X " );
    ultAct = 4; //ultActCambia Aqui, para este bordado se le da el #2 que es el Case 2 para aumentar o disminuir.
}
void cintaLinea(){ //Borrar linea punteada
  stroke(borrar);
  strokeWeight(3);
  line(x0,y0,x1,y1); 
}
