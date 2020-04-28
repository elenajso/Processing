PFont p;
float v=110.0;
float x=153.0;
float t;
float r=50.0;
float theta;
float angle=0.0;
float speed=0.1;
float rate=0.0;
int maxFrameCount = 200; // frameCount, change for faster or slower animation

void setup() {
 background(36,41,100);
 size(1100, 700);
 noStroke();
 p=loadFont("KGSecondChancesSketch-48.vlw");
}

void draw() {
  textFont(p);
fill(36,41,80,20);
  rect(0,0,width,height);
  t = (float)frameCount/maxFrameCount;
  theta = TWO_PI*t;
  angle+=speed;

  for ( int x= 0; x <= 1100; x += 15) {
    for (int y= -20; y <= 250; y += 30) {
      
      float offSet = 50*x;   // play with offSet to change map below
      float sinval=sin(angle);
      float y3=sinval*r;
      float x2 = map(cos(-theta+offSet), 0, 1, 0, 25); // map x position
      float y2 = map(cos(-theta+offSet), 0, 1, 25, 0); // map y position
      float sz2 = map(sin(-theta+offSet), 0, 1, 15, 45); // map size off the ellipse
//stroke(random(150,255),random(150,255),random(200,255));
  //    strokeWeight(0.5);
      fill(250-(x/4), 140-(x/4), 215-(y/3),150); // color with gradient created
            ellipse(x+x2,270+y3,sz2*2, sz2*2);
            ellipse(x+x2,300-y3,sz2*2, sz2*2);
      fill(250-(x/5), 150-(x/9), 250-(y/5)); 
      ellipse(x+x2, y+y2, sz2*2, sz2*2);
      
    }
  }
}

   
void mousePressed(){
//fill(#F29661,120);
if(mouseButton==LEFT){
//fill(v,102,x);
  fill(random(150,255),random(150,255),random(200,255));
ellipse(mouseX,mouseY,60,30);
ellipse(mouseX+35,mouseY,40,20);
fill(36,41,100);
rect(mouseX+20,mouseY-10,9,25);
//v+=20;
//x-=3;
}

else if(mouseButton==RIGHT) {
  fill(random(150,255),random(150,255),random(200,255));
ellipse(mouseX,mouseY,60,30);
ellipse(mouseX-35,mouseY,40,20);
fill(36,41,100);
rect(mouseX-30,mouseY-13,9,25);
v+=20;
x-=3;
}
  
}


void keyPressed(){
  
 if (key == CODED) {
    if (keyCode ==CONTROL) {
   
     fill(#F24780);
     textSize(60);
     text("Without",random(30,40),random(480,530));
    fill(#F7E983);
     text("haste,",random(300,320),random(480,530));
      fill(#6ADD98);
     text("but",random(520,540),random(480,530));
      fill(#90E1E5);
      text("without",random(665,680),random(480,530));
      fill(#9262E0);
      text("rest",random(940,950),random(480,530));
   }
 }
else {
  // textSize();
     fill(255);
    text(key,random(20,1000),random(390,410));
}
  }


      

    
