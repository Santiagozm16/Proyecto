float q,w,e,r,t,y,u,o; //Variables auxiliares para guardar los puntos con los cuales se contruye la cinta y tapar el bordado generado previamente, se utilizan para aumentar y disminuir el tamaño del mismo.
void dibujarPuntoCruz(){ //Metodo que genera el bordado con el tama{p definido previamente
    for(float i=a; i<=x1; i=i+distancia1){
    Px = i;
    Py = (m*(i-x1))+y1;
    stroke(colorBordado);
    if(i == a){
    q=Px-distancia1/2; //Punto utilizado para dibujar la cinta
    w=Py-distancia1/2;//Punto utilizado para dibujar la cinta
    e=q; //Punto utilizado para dibujar la cinta
    r=Py+distancia1/2; //Punto utilizado para dibujar la cinta
    }
    beginShape(LINES);
    vertex(Px-distancia1/2,Py-distancia1/2);
    vertex(Px+distancia1/2,Py+distancia1/2);
    vertex(Px+distancia1/2,Py-distancia1/2);
    vertex(Px-distancia1/2,Py+distancia1/2);
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
    ultAct = 2; //ultActCambia Aqui, para este bordado se le da el #2 que es el Case 2 para aumentar o disminuir.
}

void Cinta(){ //Cinta utilizado para borrar el bordado anterior y poder dibujar el bordado con mayor tamaño
    fill(borrar);
    stroke(borrar);
    beginShape();
    vertex(q,w+distancia1);
    vertex(e,r-distancia1);
    vertex(t,y-distancia1);
    vertex(u,o+distancia1);
    endShape(CLOSE);
}

void Cinta2(){ //Cinta utilizado para borrar el bordado anterior y poder dibujar el bordado con mayor tamaño
    fill(borrar);
    stroke(borrar);
    beginShape();
    vertex(q,w+distanciAux+10);
    vertex(e,r-distanciAux-10);
    vertex(t,y-distanciAux);
    vertex(u,o+distanciAux);
    endShape(CLOSE);
}
