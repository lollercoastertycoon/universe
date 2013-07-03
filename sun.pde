class Sun extends SpaceObject {
  
  Sun( PVector tempPosition ) {
    position = tempPosition;
  }
  
  void draw() {
    fill(150, 102, 0);
    ellipse(position.x, position.y, 200, 200);
  }
  
}
