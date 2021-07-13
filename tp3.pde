//https://youtu.be/D4QPvl46Y0U

// Estudiante: Matías Bueno.

//Legajo 85216/8.

//Materia: Teconología multimedial 1.

//Comisión 1.

//Docente: Bugiolachi, José Luis.

//Profe, yo soy el estudiante que que había subido el tp el 11/7 usando rotate, pero que luego, con la clase que usted dio sobre ese tema y
//translate, pudo entender cómo hacer rotar las elipses desde el centro . Como el video lo grabé en el momento en que cargué
//inicialmente el tp, ahí le comento el problema que había tenido pero ahora ya fue modificado a partir de la explicación que nos dio el 13/7. Saludos.


int cant;
int px, py;
int tam;
float relleno1;
float relleno2;
float transparencia;


void setup() {
  size(400, 400);
  
  surface.setResizable(true);
}

void draw() {
  cant=width/2;
  px=width/40;
  py=height/40;
  tam=height/60;
  translate(200,200);
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
