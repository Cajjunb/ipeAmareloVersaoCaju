// 72 h vida 4 de morte 590 3240
final float INTERVALO = 0.5;
final float FATORVELOCIDADE = 5.5;


boolean active = false;
int folhax = 40;
int folhay = 25;
int contador = 0;
int numEstado = 0;
int num;
color amarelo = color(240, 230, 50);
static int count;


// SETUP
void setup() {
  size(800, 600);
  frameRate(01000);
  background(250);
  ellipseMode(CENTER);
  stroke(0); //cor caule
  smooth();
  num = 2;
  count = 0;
  pathArray = new ArrayList<pathfinder>(num);
  paths = new pathfinder[num];
  for(int i = 0; i < num; i++) paths[i] = new pathfinder();
  for(int i = 0; i < num; i++) pathArray.add(new pathfinder());
  contador=0;
}

void draw() {
  if (contador < 80*FATORVELOCIDADE) {
    if(arvore())
        contador = contador + 1 ;
  }
 else {
   morte();
   //exit();
 }
}


/* 
COMENTEI PARA Nao ter acidentes de restartar no meio da exposicao porcausa de um mouseclick 
void mousePressed() {
  background(250);
  contador = 0;
  count = 0;
  paths = new pathfinder[num];
  for(int i = 0; i < num; i++) paths[i] = new pathfinder();

}
*/