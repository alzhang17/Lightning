int startX, startY, endX, endY,cloudX;{
startX = (int)(Math.random()*350+100);
startY = 10;
endX = startX;
endY = 10;
cloudX = startX;
}
PImage fire;
PImage cloud;

void setup()
{
  size(600,600);
  strokeWeight(1.5);
  background(135, 206, 235);
  
}
void draw()
{

fill(135, 206, 235,15);
rect(0,0,599,599);   
fill(0,255,0);
noStroke();
rect(0,530,599,70);
  // System.out.println(colorNum);

int colorNum = (int)(Math.random()*3 + 1);


  while(endY < 600 && endY > 0){
    endX = startX + (int)(Math.random()*9-4.5);
    endY = startY + (int)(Math.random()*5);
    System.out.println(endX + "," + endY);
   

     
    if(colorNum == 1)
    stroke(#fafba5);
    else if(colorNum == 2)
    stroke(#221d54);
    else
    stroke(#1e3e76);

line(startX, startY, endX, endY);

startX = endX;
startY = endY;
  }


}

void mousePressed()
{
 
  background(255,255,255);
  startX = (int)(Math.random()*350+100);
  startY = 10;
  endX = startX;
  endY = startY;
  cloudX = startX;
 
  
System.out.println(mouseX + ", " + mouseY);
}
