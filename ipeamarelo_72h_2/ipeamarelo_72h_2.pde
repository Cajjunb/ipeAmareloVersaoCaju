// 72 h vida 4 de morte 590 3240
// PARAMETROS IMPORTANTATES
// INTERVALO DE NASCIMENTO QUANDO O FRAME RATE ESTA PELO MENOS 1 SEGUNDO
// FATOR QUE DITA QUANTO DE VELOCIDADE E QUANTAS GERACOES VAO SER FEITAS
// RESULTADOS NOTAVEIS PARA COLOCAR A FRAMERATE
// TEMPO EM MILISEGUNDOS PARA MORTE SER EM 3 horas
final float INTERVALO = 0.5;
final float FATORVELOCIDADE = 5.5;
final float FRAMERATE3DIAS = 0.0016975308641975;
final float FRAMERATE2DIAS = 0.0025462962962963;
final float FRAMERATE1DIAS = 0.0050925925925926;
final float FRAMERATE8HORAS = 0.0050925925925926;
final int TEMPO3HORAS = 10800000;
final int TEMPO30MIN = 1800000;


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
  frameRate(FRAMERATE8HORAS);
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
       else{
          noStroke();
          fill (255,255,255);
          PVector point = flowerPositions.get(0).location;
          ellipse(point.x, point.y, folhax/FATORVELOCIDADE, folhay/FATORVELOCIDADE); //tamanho folhas
          stroke(0); //cor galhos
          flowerPositions.remove(0);
          delay(TEMPO30MIN/flowerPositions.size());
       }
}