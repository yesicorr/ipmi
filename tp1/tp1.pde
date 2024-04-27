PImage img;      //Correa Yesica, Comision 2, legajo: 119001/3//
void setup()
{
  size(800,400);
  noStroke();
    background(41,63,149);
  img = loadImage ("atardecer.jpg");
}  
void draw ()
{
  background(41,63,149);
  image(img, 0, 0);
  
  //figuras que le dan forma al paisaje 
  
  //cielo
  fill(172,100,104);
  rect(400, 0, 400, 100);
  
  fill(169,92,124);
  rect(400, 96, 440, 50);
  
  fill(140,85,152);
  rect(400, 138, 440, 40);
  
  //montañas
  
  fill(12,43,100);
  triangle(400, 100, 400, 400, 800, 400);
  
  fill(12,43,100);
  triangle(500, 150, 400, 100, 700, 400);
  
  fill(12,43,100);
  triangle(600, 200, 400, 150, 800, 400);
  
  //sombra de yuyos
  fill(40,78,99);
  rect(400, 256, 400, 60);
  
  //pasto
    fill(21,86,27);
  rect(400, 315, 400, 100);
  
  fill(123,164,77);
  rect(400, 354, 400, 100);
  
  //sol
   fill(222,184,107);
  noStroke();
  circle(650,220,45);
  
  //CACTUS 1
   fill(54,81,10);
  rect(700, 200, 28, 200);
  
  fill(54,81,10);
   circle( 714, 200, 28);
  
  // cactus 2
  
  fill(54,81,10);
  rect(630, 230, 17, 220);
  
  fill(54,81,10);
   circle(638, 230, 18);
   
    fill(54,81,10);
  rect(676, 275, 76, 18);
  
   fill(54,81,10);
   circle(681, 284, 18);
   
   fill(54,81,10);
   circle(747, 284, 18);
   
   //cactus 3
  
  fill(54,81,10);
  rect(482, 54, 40, 350);
  
   fill(54,81,10);
   circle( 502, 56, 38);
   
   fill(54,81,10);
  rect(445, 150, 112, 30);
  
  fill(54,81,10);
   circle(449, 165, 29);
   
   fill(54,81,10);
   circle(555, 165, 29);
   
   // cactus 4
   fill(54,81,10);
  rect(430, 285, 16, 150);
  
  fill(54,81,10);
   circle(438, 287, 16);
   
 //algunas casas
 fill(117,112,144);
 square(589,319,35);
 
 fill(211, 95, 134);
 triangle(629, 325, 584, 325, 606, 299);
 
 fill(117,112,144);
 square(754,322,32);
 
 fill(211, 95, 134);
 triangle(790, 327, 750, 327, 769, 305);

//para ver las coordenadas con el mouse en pantalla
  println( mouseX + "/" + mouseY );
}
