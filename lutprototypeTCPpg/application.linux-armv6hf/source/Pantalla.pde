class Pantalla {

  PApplet parent;
  GaleriaPlanos laminas;
  Galeria galeria;
  Texto texto;
  Pantalla() {
    String[] coordsLamina = split(strings[0], ",");
    laminas = new GaleriaPlanos(new PVector(int(coordsLamina[0]), int(coordsLamina[1])), 
      new PVector(int(coordsLamina[2]), int(coordsLamina[3])), new PVector(int(coordsLamina[4]), int(coordsLamina[5])), 
      new PVector(int(coordsLamina[6]), int(coordsLamina[7])));
    String[] coordsGaleria = split(strings[1], ",");
    galeria = new Galeria(new PVector(int(coordsGaleria[0]), int(coordsGaleria[1])), 
      new PVector(int(coordsGaleria[2]), int(coordsGaleria[3])), new PVector(int(coordsGaleria[4]), int(coordsGaleria[5])), 
      new PVector(int(coordsGaleria[6]), int(coordsGaleria[7])));
    String[] coordsTexto = split(strings[2], ",");
    texto = new Texto(new PVector(int(coordsTexto[0]), int(coordsTexto[1])), 
      new PVector(int(coordsTexto[2]), int(coordsTexto[3])), new PVector(int(coordsTexto[4]), int(coordsTexto[5])), 
      new PVector(int(coordsTexto[6]), int(coordsTexto[7])), "categoria_"+CAT+"/"+CAT+"_ficha_0/texto.jpg");
  }

  void resetEsquinas() {
    laminas.setEsquinas(new PVector(172, 17), 
      new PVector(918, 17), new PVector(918, 1065), 
      new PVector(172, 1065));
    galeria.setEsquinas(new PVector(974, 62), 
      new PVector(1528, 62), new PVector(1528, 452), 
      new PVector(974, 452)); 
    texto.setEsquinas(new PVector(1014, 575), 
      new PVector(1273, 575), new PVector(1273, 1046), 
      new PVector(1014, 1046));
  }
  void prepareNextImages() {
    laminas.prepareNextImages();
    galeria.prepareNextImages();
    texto.prepareNextImage("categoria_"+CAT+"/"+CAT+"_ficha_"+int(seleccion)+"/texto.jpg");
  }
  void setNewImages() {
    laminas.setNewImages();
    galeria.setNewImages();
    texto.setNewImage();
  }

  void updateAndDibujar() {
    laminas.update();
    galeria.update();  
    texto.update();
    galeria.dibujar();
    laminas.dibujar();    
    texto.dibujar();
  }
}