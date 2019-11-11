void Estrella(int pointCount, float innerRadius, float outerRadius)
{
  float theta=0.0;
  float tempRadius=0.0;
  int vertCount=pointCount*2; 
  float thetaRot = TWO_PI/vertCount;
  float x, y;
  beginShape();
  translate(Px,Py);
  for(int i=0;i<pointCount;i++)
  {
    for(int j=0;j<2;j++)
    {
      tempRadius=innerRadius;
      if(j%2==0)
      {
        tempRadius=outerRadius;
      }
      x=cos(theta)*tempRadius;
      y=sin(theta)*tempRadius;
      vertex(x,y);
      theta+=thetaRot;
    }
  }
  endShape(CLOSE);
}
