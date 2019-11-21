void Estrella1(int pointCount, float innerRadius, float outerRadius)
{
  float theta=0.0;
  float tempRadius=0.0;
  int vertCount=pointCount*2; 
  float thetaRot = TWO_PI/vertCount;
  float x, y;
  translate(Px,Py);
  beginShape();
  for(int i=0;i<pointCount;i++)
  {
    for(int j=0;j<2;j++)
    {
      tempRadius=innerRadius;
      if(j%2==0)
      {
        tempRadius=outerRadius;
      }
      x=sin(theta-sin(theta))*tempRadius;
      y=cos(theta+sin(theta))*tempRadius;
      vertex(x,y);
      theta+=thetaRot;
    }
  }
  endShape(CLOSE);
}
