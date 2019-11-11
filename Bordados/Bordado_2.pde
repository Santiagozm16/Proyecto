float q,w,e,r,t,y,u,o;
void dibujarPuntoCruz(){
    for(float i=a; i<=x1; i=i+distancia1){
    Px = i;
    Py = (m*(i-x1))+y1;
    stroke(87,35,100);
    if(i == a){
    q=Px-distancia1/2; 
    w=Py-distancia1/2;
    e=q;
    r=Py+distancia1/2;
    }
    beginShape(LINES);
    vertex(Px-distancia1/2,Py-distancia1/2);
    vertex(Px+distancia1/2,Py+distancia1/2);
    vertex(Px+distancia1/2,Py-distancia1/2);
    vertex(Px-distancia1/2,Py+distancia1/2);
    endShape();
    }
    t=Px+distancia1/2;
    y=Py-distancia1/2;
    u=t;
    o=Py+distancia1/2;
    b1 = false;
    b2 = false;
    //println(x0 + " ---- " + y0 +" ---- " + x1 + " ---- " + y1);
    //println("La pendiente de la recta es "+ m );
    //println("Se han dibujado " + redondear + " X " );
    ultAct = 2;
}

void Cinta(){
    fill(borrar);
    stroke(borrar);
    beginShape();
    vertex(q,w+distancia1);
    vertex(e,r-distancia1);
    vertex(t,y-distancia1);
    vertex(u,o+distancia1);
    endShape(CLOSE);
}

void Cinta2(){
    fill(borrar);
    stroke(borrar);
    beginShape();
    vertex(q,w+distanciAux+10);
    vertex(e,r-distanciAux-10);
    vertex(t,y-distanciAux);
    vertex(u,o+distanciAux);
    endShape(CLOSE);
}
