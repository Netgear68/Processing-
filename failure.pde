// new github test
int mouseLimit=1;
float [] xCoord = new float[mouseLimit];
float [] yCoord = new float[mouseLimit];

float [] xCur = new float[mouseLimit];
float [] yCur = new float[mouseLimit];

boolean reverseFlag=false;
int mouseDepressed=0;
float speed=0.01, amt=0;
float rotSpeed=PI/random(100, 200);
float rot=0;

void setup () {
  size(600, 600);
  for (int index=0; index < xCoord.length; index++) {
    xCoord[index]=100;//random(width);
    yCoord[index]=100;random(height);
    xCur[index] = 100;
    yCur[index] = 100;
  }
 
}

void draw () {
  translate(width/2,height/2);
  //background(150);

  for (int index=0; index< mouseLimit; index++) {
    println("xCur: "+xCur[index]+" yCur: "+yCur[index]);
    float x,y;
    x = cos(rot) * (xCur[index]) - sin(rot) * (yCur[index]);
    y = sin(rot) * (xCur[index]) + cos(rot) * (yCur[index]);

    ellipse(x,y, 10, 10);  

  }

  rot+=rotSpeed;
}