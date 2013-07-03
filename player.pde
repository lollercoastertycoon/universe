class Player {
  
  Inventory inventory = new  Inventory();
  PVector position = new PVector();
  
  Player() {
    position.x = 800;
    position.y = 500;
  }
  
  void draw() {
    if( keyPressed )
    {
      if( keyCode == LEFT )
      {
        position.x = position.x - 5;
      }
      if( keyCode == RIGHT )
      {
        position.x = position.x + 5;
      }
      if( keyCode == UP )
      {
        position.y = position.y - 5;
      }
      if( keyCode == DOWN )
      {
        position.y = position.y + 5;
      }
    }
    
    fill( 255, 255, 255 );
    rect(position.x, position.y, 15, 15);
    
  }
  
}
