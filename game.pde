ResourceManager resource_manager = new ResourceManager();
PlanetManager planet_manager = new PlanetManager();
Player player = new Player();
CollisionObserver collision_observer = new CollisionObserver();
Sun sun;
PImage background_image;

void setup() {
  size(displayWidth, displayHeight, OPENGL);
  noStroke();
  
  smooth();
  background_image = loadImage( "bg.jpg" );

  sun = new Sun( new PVector( 800, 500 ) );
  
  for( int i = 0; i < 100; i++ )
  {
    int randDistance = 500 + (int)(Math.random()* 100000 );
    int randRadius = 10 + (int)(Math.random()* 250 );
    float randVelocity = 1 + (float)(Math.random()* 10 );
    float randAngle = 0 + (float)(Math.random()* 360 );
    
    Planet planet1 = new Planet( "planet", randDistance, randRadius, randVelocity, randAngle, sun );

    for( int j = 0; j < 4; j++ )
    {
      randDistance = randRadius + (int)(Math.random()* randRadius + 500 );
      randVelocity = 1 + (float)(Math.random()* 50 );
      randAngle = 0 + (float)(Math.random()* 360 );
      
      Planet planet2 = new Planet( "planet", randDistance, randRadius / 5, randVelocity, randAngle, planet1 );
      planet_manager.add( planet2 );
    }
    
    planet_manager.add( planet1 );
    
  }
  
  for( int i = 0; i < 500; i++ )
  {
    int randDistance = 500 + (int)(Math.random()* 8000 );
    float randVelocity = 1 + (float)(Math.random()* 10 );
    float randAngle = 0 + (float)(Math.random()* 360 );
    
    Resource resource = new Resource( "resource", randDistance, 10, randVelocity, randAngle, sun );
    resource_manager.add( resource );
  }

}

void update()
{
  collision_observer.player_vs_resources( player, resource_manager );
}

void draw() {
  update();
  background(0);
  image( background_image, 0, 0, width, height );
  player.inventory.draw();
  
  translate( -player.position.x + width/2, -player.position.y + height/2 );

  if( keyPressed )
  {
    if( keyCode == CONTROL )
    {
      scale(0.2, 0.2);
    }
  }
  player.draw();
  sun.draw();
  planet_manager.drawAll();
  resource_manager.drawAll();
}
