// https://youtu.be/i1YLbk6NWSQ
// Correa Yesica Com2 Legajo: 119001/3

PImage foto;
int cantc ; 
int cantf ; 
int tamCua;
int tamCir; 
int tamcirInicial; 
color colorNegro;      
color colorOriginal;    

void setup (){
  size(800, 400);
  foto = loadImage("miimagen.png");
  cantc = 20;
  cantf = 20; 
  tamCua = width / cantc;
  tamCir = tamCua / 2; 
  tamcirInicial = tamCir; 
  colorNegro = color(0);        
  colorOriginal = colorNegro;    
  
}

void draw (){  
  background(255);    
  dibujarTablero(0, 0, tamCua, cantc, tamCir, cantf);
   image(foto, 0, 0);
 
}
