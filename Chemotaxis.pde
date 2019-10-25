 //declare bacteria variables here 
Bacteria[] k;
 void setup()   
 {     
   //initialize bacteria variables here   
   size(700,700);

   k = new Bacteria[20];

   for(int i=0; i< k.length; i++)
   {
     k[i] = new Bacteria(600,350);
   }
   
   
 }   
 void draw()   
 {    
   background(100,111,255);  
   for(int i=0; i< k.length; i++)
   {
     k[i].show();
     k[i].move();
   }
   fill(255,255,100);
   ellipse(mouseX,mouseY,50,50);
   fill(0);
   text("Honey",mouseX-17,mouseY+2);
     
 }  
 class Bacteria    
 {     
   //lots of java! 
   int myX, myY;
   int myColor;
   Bacteria(int x, int y)
   {
     
     myX = x;
      myY = y;
      myColor = color(102,51,0);
   } 
   void move()
   {
     if(mouseX > myX)
     {
       myX = myX + (int)(Math.random()*11)+1;
     }
     else
     {
       myX = myX + (int)(Math.random()*11)-8;
     }
     if(mouseY > myY)
     {
       myY = myY + (int)(Math.random()*10)+1;
     }
     else
     {
       myY = myY + (int)(Math.random()*10)-6;
     }
     
   } 

   void show()
   {
     fill(myColor);
     noStroke();
     ellipse(myX,myY,50,50);
     ellipse(myX-12,myY-15,25,25);
     ellipse(myX+12,myY-15,25,25);
     fill(0);
     noStroke();
     ellipse(myX-12,myY-7,5,10);
     ellipse(myX+12,myY-7,5,10);
     fill(0);
     noFill();
     g.stroke = true;
     arc(myX+3,myY+5,5,20,PI/2-1,PI);
     arc(myX-3,myY+5,5,20,0,PI/2+1);
     fill(255,182,193);
     noStroke();
     int[] xCoor ={myX-3,myX+3,myX};
     int[] yCoor ={myY,myY,myY+3};
     beginShape();
     for(int i = 0; i< xCoor.length; i++)
     {
       vertex(xCoor[i],yCoor[i]);
     }
     endShape(CLOSE);

   }
 }    




