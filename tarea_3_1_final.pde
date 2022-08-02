int x,y,x1,y1,x2,y2,x3,y3,x4,y4;
int velocidad;
int aumento;
int aumento1;
int aumento2;
int aumento3;
int estatica;
int i=0;
int t1=0;
void setup (){ 
  
  size (700,400);
  x=0;
  y=0;
  x1=270;
  x2=400;
  x3=330;
  x4=330;
  y1=180;
  y2=180;
  y3=140;
  y4=215;
  aumento=10;
  aumento1=10;
  aumento2 =10;
  aumento3=10;
  estatica=0;  
  velocidad=5;
  t1=40;
  
  background(150);
  
}

void draw(){
  
  line(x,y,width,height);
  line(width,x,y,height);
  
   fill(0);
  stroke(255,5,30);
  rect(x1,y1,40,40);//izquierda.
  x1=x1-aumento;
  
  
      //if ( x1>width -30)
  //{
    //  estatica=1;
  //}
    //  else if (estatica ==1)
  //{
    //  y1 = y1 + velocidad;
  //}
  
    if ( x1>700 || x1<0)
    {
      aumento = aumento *-1;
      y1= aumento *-1;
      y2= aumento1*-1;
      y3= aumento2 *-1;
    }
 //for (i=0; i <650; i++)
 {
  
 }
  noStroke();
  strokeWeight(3);
 
  stroke(255,5,30);
  rect(x2,y2,40,40);//derecha.
  x2= x2+aumento1;
  
 
   
  //
  
  stroke(255,5,30);
  rect(x3,y3,40,40);// arriba.
 
  y3=y3+aumento2;
   if (y3>400 || y3 <0)
   {
    
     x3=x3+aumento2;
    
   }
    
  //
  
  stroke(255,5,40);
  rect(x4,y4,t1,t1); // abajo.
   if (y4>400 || y4<0)
   {
     y4=x4+aumento3;
     t1=t1+aumento3;
   }
    
  y4=y4-aumento3;
  
}
