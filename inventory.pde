class Inventory {
  
  int mineral_count, gas_count;
  
  Inventory() {
    mineral_count = 0;
    gas_count = 0;
  }
  
  void draw() {
    textSize(15);
    fill(150, 0, 0);
    text( "Minerals: " + mineral_count, 30, 30);
    fill(0, 150, 0);
    text( "Gas: " + gas_count, 30, 50);
  }
  
}
