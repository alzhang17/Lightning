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

String fireUrl = "https://media.istockphoto.com/id/113494458/photo/fire-isolated-over-black-background.jpg?s=170667a&w=0&k=20&c=mV7mzBstDEZsx-Tlq1xOQDgVLkFYA5wzAvyllMUjHN8=";
fire = loadImage(fireUrl);
fire.resize(100,75);
image(fire,endX-25,endY-75);

String cloudUrl = "https://image.similarpng.com/very-thumbnail/2020/09/Fluffy-white-cartoon-cloud-on-blue-sky-on-transparent-PNG.png";
cloud = loadImage(cloudUrl);
cloud.resize(100,100);
image(cloud,cloudX-50, -10);
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
