void dibujarCubito() {
 for(int j=0; j<4; j++){
    tam = 400/2;
    for(int i=0; i<cant; i++){
      if(j == 0){
        cant = 5;
        stroke(colorRect2);
        fill(0,tam,0);
        rect(1996/4, 400/4, tam, tam);
      }else if(j == 1){
        cant = 4;
        stroke(colorRect1);
        fill(tam,0,0);
        rect(935/4 + 935/2, 400/4, tam, tam);
      }else if(j == 2){
        cant = 3;
        stroke(colorRect3);
        fill(tam,tam,0);
        rect(1996/4, 400/4 + 400/2, tam, tam);
      }else{
        cant = 2;
        stroke(colorRect4);
        fill(0,0,tam);
        rect(935/4 + 935/2, 400/4 + 400/2, tam, tam);
      }
      tam = tam - 40;
    }
  } 
  

}
void iniciarVar(){
  if (mouseX < 1996/4 && mouseY < 400/4){
    float valorVerde = (dist(mouseX, mouseY, 1996/4, 400/4));
    colorRect2 = color(0,valorVerde+tam,0);
  }else if(mouseX < 935/4 + 935/2 && mouseY < 400/4){
    float valorRojo = (dist(mouseX, mouseY, 935/4 + 935/2, 400/4));
    colorRect1 = color(valorRojo+tam,0,0);
  }else if(mouseX < 1996/4 && mouseY < 400/4 + 400/2){
    float valorAmarillo = (dist(mouseX, mouseY,1996/4 , 400/4 + 400/2));
    colorRect3 = color(valorAmarillo+tam,valorAmarillo+tam,0);
  }else if(mouseX < 935/4 + 935/2 && mouseY < 400/4 + 400/2){
    float valorAzul = (dist(mouseX, mouseY,935/4 + 935/2 , 400/4 + 400/2));
    colorRect4 = color(0,0,valorAzul+tam);
   }
  }
  
  void reinicio(){
  colorRect1 = color(50,0,0);
  colorRect2 = color(0,50,0);
  colorRect3 = color(50,50,0);
  colorRect4 = color(0,0,50);
  }
