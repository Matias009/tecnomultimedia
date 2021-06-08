PImage uno,dos,tres,cuatro,cinco, ultimapantalla;//imágenes cargadas

PFont titulos, creditos;//fuentes cargadas

float px,py,pydos,pytres,pycuatro,pycinco;//variables para slide de imágenes

float pxcredit1,pxcredit1a,pxcredit11,pxcredit11a,pxcredit2,pxcredit2a,pxcredit22,pxcredit22a;//variables para mover posx de los textos de crédito

float pxtitulo,pxtitulo2,pxshow;//variables para título del show y encabezados

float pxrect,pxrecta,pxrect11,pxrect11a,pxrect2,pxrect2a,pxrect22,pxrect22a;//variables para mover la posx de los fondos de los créditos

float py3a,py3b,py5a,py5b;//variables para mover la posy de los textos de crédito

float pyrecta,pyrectb, pyrectc,pyrectd;//variables para mover la posy de los fondos de los créditos

float alpha;//map 1

float beta;//map2

float tamtext1,tamtext2,tamtext3,tamtext4;//variables para manejar el tamaño de los textos de crédito

int posyellipse;//botón.

float pxr,pyr;//variables para pos imagen random última pantalla







void setup(){
 size(900,900);
 titulos=loadFont("CopperplateGothic-Bold-48.vlw");
 creditos=loadFont("DavidCLM-Bold-20.vlw");
 //tint(120);
 uno=loadImage("3.jpg");
 uno.resize(900,900);
 dos=loadImage("2.jpg");
 dos.resize(900,900);
 tres=loadImage("4.jpg");
 tres.resize(900,900);
 cuatro=loadImage("5.jpg");
 cuatro.resize(900,900);
 cinco=loadImage("6.png");
 cinco.resize(900,900);
 ultimapantalla=loadImage("ultimapantalla.png");
 

 
 
 
 //------valor variables en x créditos---------
 
 pxcredit1=250;//valor x de actores segunda pantalla
 pxcredit1a=250;//valor en x de actores segunda pantalla mitad inferior
 pxcredit11=250;//valor en x actores tercera pantalla
 pxcredit11a=250;//valor en x actores tercera pantalla mitad inferior
 pxcredit2=220;//valor x equipo técnico cuarta pantalla
 pxcredit2a=220;//valor x equipo técnico cuarta pantalla mitad inferior
 pxcredit22=220;//valor en x equipo técnico quinta pantalla
 pxcredit22a=220;//valor en x equipo técnico quinta pantalla mitad inferior
 
 //--------valor variables títulos----------
 
 pxtitulo=350;//valor en x del título Cast
 pxtitulo2=230;//valor en x del título technical roles
 pxshow=325;//valor en x del título del show
 
 
 //-------valor variables rectas-------
 
 pxrect=0;//valor en x fondo transparente actores
 pxrecta=0;//valor en x segundo fondo transparente actores
 pxrect11=0;//valor en x fondo transpartente actores pantalla 3
 pxrect11a=0;//valor en x segundo fondo trasnparente actores pantalla 3
 pxrect2=0;//valor en x fondo transparente equipo técnico
 pxrect2a=0;//valor en x segundo fondo transparente equipo técnico
 pxrect22=0;//valor en x fondo transparente equipo técnico pantalla 5
 pxrect22a=0;//valor en x segundo fondo transparente equipo técnico pantalla 5
 
 
 //-------valor variables posición en y para hacer subir las imágenes------
 
 py=900;//movimiento arriba imagen 1
 pydos=900;//movimiento arriba imagen 2
 pytres=900;//movimiento arriba imagen 3
 pycuatro=900;//moimiento arriba imagen 4
 pycinco=900;//movimiento arriba imagen 5
 
 
 //-------valor variables posición y para créditos  pantallas 3 y 5------
 
 py3a=1130;
 py3b=1330;
 py5a=1250;
 py5b=1420;
 
 
 //------valor variables para mover los rectángulos en y pantalla 3 y 5 -------
 
 
 pyrecta=1090;
 pyrectb=1300;
 pyrectc=1220;
 pyrectd=1385;
 
 
 
 //----------variables para tamaño de texto----------
 
 tamtext1=35;
 tamtext2=35;
 tamtext3=35;
 tamtext4=35;
 
 
 //-----variables última pantalla-----------
 pxr=900;
 pyr=900;

 
}

void draw(){
 
  background(0);

 
 //-------pantalla 1 nombre show-------//
 

 float beta=map(py,0,900,255,0);

 
 tint(125,beta);
 image(uno,px,py);
 
 py--;
 fill(125,125);
 noStroke();
 rect(0,py+450,width,100);
 textFont(titulos);
 float alpha= map(py,0,900,255,0);
 fill(255,alpha);
 text("MD HOUSE",pxshow,py+510);
 
 
 
 //-------pantalla2 cast --------
 

 image(dos,px,pydos);
 
 fill(125,125);
 rect(pxrect,pydos+340,width,330);
 rect(pxrecta,pydos+340,width,330);
 
 fill(255);
 textFont(titulos);
 text("Cast",pxtitulo,pydos+300);
 textFont(creditos);
 textSize(tamtext1);
 
 text("Hugh Laurie as MD House",pxcredit1,pydos+370);
 text("Lisa Edelstein as Lisa Cuddy", pxcredit1, pydos+410);
 text("Jennifer Morrison as Alison Cameron", pxcredit1, pydos+450);
 text("Robert Sean Leonard as James Wilson",pxcredit1,pydos+490);
 text("Jesse Spencer as Robert Chase",pxcredit1a,pydos+530);
 text("Sela Ward as Stacy Warner",pxcredit1a,pydos+570);
 text("Chi McBride as Edward Vogler", pxcredit1a,pydos+610);
 text("David Morse as Michael Tritter", pxcredit1a,pydos+650);
 
 if(py<=0){
   pydos--;
 }
 if((py<=-854)||(pydos<=50)){
 pxcredit1++;
 pxrect++;
 pxrecta--;
 pxcredit1a--;
 tamtext1=tamtext1-0.03;
 tamtext1=constrain(tamtext1,1,35);
 }
 

 


//------pantalla 3 personajes secundarios------


image(tres,px,pytres);

fill(125,125);
rect(pxrect11,pyrecta,width,420/2);
rect(pxrect11a,pyrectb,width,420/2);

fill(255);
textFont(creditos);
 textSize(tamtext2);

 text("Olivia Wide as Remy Hadley",pxcredit11,py3a);
 text("Peter Jacobson as Chris Toub", pxcredit11, py3a+40);
 text("Kal Pen as Laurence Kutner", pxcredit11, py3a+80);
 text("Anne Dudek as Amber Volakis",pxcredit11,py3a+120);
 text("Amber Tamblyn as Martha Masters",pxcredit11,py3a+160);
 text("Charlyne Yi as Chi Park",pxcredit11a,py3b);
 text("Odette Annable as Jessica Adams", pxcredit11a,py3b+40);
 text("Michael Weston as Lucas Douglas", pxcredit11a,py3b+80);
 text("Jennifer Crystal Foley as Rachel Taub", pxcredit11a,py3b+120);
 text("Karolina Wydra as Dominika", pxcredit11a,py3b+160);

if(pydos<=0) {
  pytres--;
  py3a--;
  py3b--;
  pyrecta--;
  pyrectb--;
}


if((pydos<=-854)||(pytres<=50)){
  pxcredit11--;
  pxcredit11a++;
  pxrect11--;
  pxrect11a++;
  py3a=py3a-0.2;
  py3b=py3b+0.2;
  pyrecta=pyrecta-0.2;
  pyrectb= pyrectb+0.2;
  tamtext2=tamtext2-0.03;
  tamtext2=constrain(tamtext2,1,35);
  
}



//-----pantalla 4 roles técnicos ----



image(cuatro,px,pycuatro);

fill(125,125);
rect(pxrect2,pycuatro+320,width,330);
rect(pxrect2a,pycuatro+320,width,330);

fill(255);
textFont(titulos);
text("Technical roles",pxtitulo2,pycuatro+290);
textFont(creditos);
textSize(tamtext3);

text("Associate Producer Marcy G.Kaplan", pxcredit2,pycuatro+350);
text("Co-Producer Steven Heit",pxcredit2,pycuatro+390);
text("Associate Producer Allen Marshall Palmer",pxcredit2,pycuatro+430);
text("Executive Story Editor Liz Friedman",pxcredit2,pycuatro+470);
text("Story Editor David Foster",pxcredit2a,pycuatro+510);
text("Music by Jon Ehrlich and Jason Derlatka",pxcredit2a,pycuatro+550);
text("Costume Designer Cathy Crandall",pxcredit2a,pycuatro+590);
text("Assistant Art Director Bob Vukasovich",pxcredit2a,pycuatro+630);


if(pytres<=0){
  pycuatro--;
}



if((pytres<=-854)||(pycuatro<=50)){
  pxrect2--;
  pxrect2a++;
  pxcredit2--;
  pxcredit2a++;
  tamtext3=tamtext3-0.03;
  tamtext3=constrain(tamtext3,1,35);
}
  




//------patalla 5 roles técnicos----



image(cinco,px,pycinco); 

fill(125,125);
rect(pxrect22,pyrectc,width,330/2);
rect(pxrect22a,pyrectd,width,330/2);

fill(255);
textFont(creditos);
textSize(tamtext4);

text("Camera Operator Eric Roizman", pxcredit22,py5a);
text("Set Designer Braian Jewell",pxcredit22,py5a+40);
text("Set Decorator Danielle Berman",pxcredit22,py5a+80);
text("Production Cordinator Elisabeth James",pxcredit22,py5a+120);
text("Visual Effects Supervisor Elan Soltes",pxcredit22a,py5b);
text("Location Manager Nancy Haecker",pxcredit22a,py5b+40);
text("Chief Lighting Technician Braian Crane",pxcredit22a,py5b+80);
text("Scrip Supervisor Ira Hurvitz",pxcredit22a,py5b+120);



if(pycuatro<=0){
  pycinco--;
  pyrectc--;
  pyrectd--;
  py5a--;
  py5b--;
}

if((pycuatro<=-854)||(pycinco<=50)){
  pxrect22--;
  pyrectc=pyrectc-0.2;
  pxrect22a++;
  pyrectd=pyrectd+0.2;
  pxcredit22--;
  pxcredit22a++;
  py5a=py5a-0.2;
  py5b=py5b+0.2;
  tamtext4=tamtext4-0.03;
  tamtext4=constrain(tamtext4,1,35);
}


//-----------pantalla 6--------


if(pycinco<=-900){
  

  image(ultimapantalla,pxr,pyr);
  fill(255,0,0);
  ellipse(450,800,100,100);
  ellipse(450,100,100,100);
  ellipse(450,200,100,100);
  ellipse(450,300,100,100);
  ellipse(450,400,100,100);
  ellipse(450,500,100,100);
  ellipse(450,600,100,100);
  ellipse(450,700,100,100);
  
  
}

  
  }
  
void mousePressed(){
  
 
  
 if((mouseX>=400)&&(mouseX<=500)&&(mouseY>=50)&&(mouseY<=150)){
    pxr=random(0,700);
    pyr=random(0,700);
    image(ultimapantalla,pxr,pyr);
  }
  
  if((mouseX>=400)&&(mouseX<=500)&&(mouseY>=150)&&(mouseY<=250)){
    pxr=random(0,700);
    pyr=random(0,700);
    image(ultimapantalla,pxr,pyr);
  }
  
  if((mouseX>=400)&&(mouseX<=500)&&(mouseY>=250)&&(mouseY<=350)){
    pxr=random(0,700);
    pyr=random(0,700);
    image(ultimapantalla,pxr,pyr);
  }
  
  if((mouseX>=400)&&(mouseX<=500)&&(mouseY>=350)&&(mouseY<=450)){
    pxr=random(0,700);
    pyr=random(0,700);
    image(ultimapantalla,pxr,pyr);
  }
  
  if((mouseX>=400)&&(mouseX<=500)&&(mouseY>=450)&&(mouseY<=550)){
    pxr=random(0,700);
    pyr=random(0,700);
    image(ultimapantalla,pxr,pyr);
  }
  
  if((mouseX>=400)&&(mouseX<=500)&&(mouseY>=550)&&(mouseY<=650)){
    pxr=random(0,700);
    pyr=random(0,700);
    image(ultimapantalla,pxr,pyr);
  }
  
  if((mouseX>=400)&&(mouseX<=500)&&(mouseY>=650)&&(mouseY<=750)){
    pxr=random(0,700);
    pyr=random(0,700);
    image(ultimapantalla,pxr,pyr);
  }
  
  if((mouseX>=400) && (mouseX<=500) && (mouseY>=750) && (mouseY<=850)){
    
  pxr=900;  
  pyr=900;
  
 pxcredit1=250;
 pxcredit1a=250;
 pxcredit11=250;
 pxcredit11a=250;
 pxcredit2=220;
 pxcredit2a=220;
 pxcredit22=220;
 pxcredit22a=220;
 
 pxrect=0;
 pxrecta=0;
 pxrect11=0;
 pxrect11a=0;
 pxrect2=0;
 pxrect2a=0;
 pxrect22=0;
 pxrect22a=0;
 
  py=900;
 pydos=900;
 pytres=900;
 pycuatro=900;
 pycinco=900;
 
  py3a=1130;
 py3b=1330;
 py5a=1250;
 py5b=1420;
 
  pyrecta=1090;
 pyrectb=1300;
 pyrectc=1220;
 pyrectd=1385;
 
 tamtext1=35;
 tamtext2=35;
 tamtext3=35;
 tamtext4=35;
 
 
   
   
   
 }
   
 }
  
  
