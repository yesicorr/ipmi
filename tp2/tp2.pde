//Correa Yesica COMISION 2 119001/3
String estado;
PImage imagen1, imagen2, imagen3, imagen4;
String texto1, texto2, texto3, textoBoton;
PFont fuente;
int xBoton, yBoton, diamBoton;
float unoX;
float velX;
float tamTexto2;
color colorTexto3;
int Color;


void setup() {
  size(640, 480); 
  background(255);
  
  estado = "pantallauno";
  
  imagen1 = loadImage("portada.jpg");
  imagen2 = loadImage("personaje.jpg");
  imagen3 = loadImage("final.jpeg");
  imagen4= loadImage("sociall.jpeg");
  
  fuente = loadFont("bold.vlw");
  
  texto1 = "Mundo Gaturro es un juego en línea para niños, este fue creado por el historietista argentino Nik en el año 2010";
  texto2 = "Se trata de un mundo virtual donde los jugadores adoptan un avatar gatuno. Este avatar es completamente personalizable, se les puede crear un hogar e incluso adoptar mascotas. Los personajes mas destacados son Gaturro y Agatha.";
  texto3 = "El juego ofrece una variedad de actividades, como juegos, misiones y socialización con otros jugadores.";
  textoBoton = "Reiniciar";
  
  unoX = 0;
  velX = 0.5;
  tamTexto2 = 10;
  colorTexto3 = color(0);
  Color = 30;
  
  xBoton = 410;
  yBoton = 350;
  diamBoton = 90;
}

void draw() {
  background(255);  
  println(mouseX, mouseY);
  // pantalla uno 
  if (estado.equals("pantallauno")) {
    image(imagen1, 0, 0, 640, 480);
    textFont(fuente);
    fill(0);
    textSize(30);
    if (unoX >= width) {
      velX = -0.5;   
    } 
    unoX = unoX + velX;
    text(texto1, unoX, 50, 600, 100);
    // Cambio de pantalla después de 15 segundos
    if (frameCount / 60 >= 15) {
      estado = "pantallados";
    }
  } 
  // Pantalla dos
  else if (estado.equals("pantallados")) {
    image(imagen2, 0, 0, 640, 480);
    textFont(fuente);
    fill(255);
    textSize(tamTexto2);
    tamTexto2 += 0.02;
    if (tamTexto2 > 80) {
      tamTexto2 = 80;
    }
    text(texto2, 10, 290, 600, 100);
    // Cambio de pantalla después de 15 segundos
    if (frameCount / 60 >= 25) {
      estado = "pantallatres";
    }
  }
  // Pantalla tres
  else if (estado.equals("pantallatres")) {
  image(imagen3, 0, 0, 640, 480);    
  textFont(fuente);
  fill(colorTexto3);
  textSize(20);
  text(texto3, 20, 320, 600, 100);   
  if (frameCount % Color == 0) {
    colorTexto3  = color(random(255), random(255), random(255));
    // Cambio de pantalla después de 15 segundos
    if (frameCount / 60 >= 35) {
      estado = "final";
    }    
  }
}
// Pantalla final
if (estado.equals("final")) {
  image(imagen4, 0, 0, 640, 480);
  fill(0);
  ellipse(xBoton, yBoton, diamBoton, diamBoton);  
  fill(255);
  textSize(15);
  text(textoBoton, 378, 356);
  }
}
 void mousePressed() {   
    if (dist(mouseX, mouseY, xBoton, yBoton) < diamBoton / 2) {
      estado = "pantallauno";   
      frameCount = 0;
      unoX = 0;
  } 
}
