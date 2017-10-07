  int contadore = 0;

void morte () {
  for(int i = 0; i<flowerPositions.size(); i++){
    println("imprimiu cor posicao - " + i);
    noStroke();
    fill (255,255,255);
    PVector point = flowerPositions.get(i).location;
    ellipse(point.x, point.y, folhax/FATORVELOCIDADE, folhay/FATORVELOCIDADE); //tamanho folhas
    stroke(0); //cor galhos
    delay(180000/flowerPositions.size());
  }
}