int cant;
int px, py;
int tam;
float relleno1;
float relleno2;
float transparencia;


void setup() {
  size(400, 400);
  cant=width/2;
  px=width/40;
  py=height/40;
  tam=height/60;
  surface.setResizable(true);
}

void draw() {
  relleno1=dist(height/2, width/2, mouseX, mouseY);
relleno2=map(mouseX, 0, width, 0, 255);
  transparencia=random(180,200);
  
  background(0);
  for (int i=0; i<cant; i++) {
    noFill();
    if (i%2==0) {
      stroke(relleno1, transparencia);
    } else {
      stroke(relleno2, 0, 0);
    }


    rotate(radians(mouseX));
    ellipse(px, py, i*tam, i*tam);
  }
}

void mousePressed() {
  if (mousePressed) {
    mouseX=0;
  }
}
