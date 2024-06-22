void dibujarTablero(int a, int b, int tamCua, int cantc, int tamCir, int cantf) {
  noStroke();  
  
  for (int i=a ; i < cantc; i++) {
    for (int j=b; j < cantf; j++) {     
     int x = i * tamCua;
      int y = j * tamCua;

      if ((i + j) % 2 == 0) {
        fill(colorNegro); 
        rect(x, y, tamCua, tamCua);
        fill(255); 
        ellipse(x + tamCua/2, y + tamCua/2, tamCir, tamCir);
        
      } else {
        fill(255);
        rect(x, y, tamCua, tamCua);
        fill(colorNegro);
        ellipse(x + tamCua/2, y + tamCua/2, tamCir, tamCir);
      }
    }
  }
}

void mousePressed() {
  colorNegro = cambioColor(255);
}

color cambioColor(int cambio) {
  
  float r = random(cambio);
  float g = random(cambio);
  float b = random(cambio);
  
  color c = color(r, g, b);
  return c; 
}

void mouseMoved() {
//ajusta el tamaño del circulo con el mov del mouse
  int movc = mouseX / tamCua; 
  int movf = mouseY / tamCua; 

  if (movc >= 0 && movc < cantc && movf >= 0 && movf < cantf) {
    float maxTamcir = min(tamCua, tamCua * 2); 
    float distance = dist(mouseX, mouseY, movc * tamCua + tamCua/2, movf * tamCua + tamCua/2);
    tamCir = int(map(distance, 0, tamCua / 2, 0, maxTamcir));
  }
}

void keyPressed() {
  Resetear();
}

void Resetear(){
  if (key == 'r' || key == 'R') {
    tamCir = tamcirInicial; 
    colorNegro = colorOriginal; 
  }
}
