setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://img.freepik.com/premium-vector/cave-flat-vector-art-illustration-retro-vintage-poster-cartoon-colorful-flat-vector-illustration_36900-3668.jpg");

var forestImage = loadImage("https://i.pinimg.com/736x/0f/84/e0/0f84e0888e08e702c7919f6ec01a7612.jpg");
//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Where do you want to go?  [Press w for forest, j for cave, m for island]";

    

var islandImage = loadImage("https://img.freepik.com/premium-vector/cartoon-tropical-island-with-palm-trees-mountains-blue-ocean-flowers-vines-vector-illustration_273525-1929.jpg?semt=ais_hybrid");
draw = function(){
    
    
   drawScene();


   if(keyPressed){
     if(key == 'w'){
       sceneImage = forestImage;   
       sceneText = "No fox here.  [Press w for forest]";
     } 
     if(key == 'j'){
      sceneImage = caveSceneImage;
      sceneText = "Look, its a green forest. Shocker! Still, no fox";
    } 
   if(key == 'm'){
   sceneImage= islandImage;
   sceneText="He's still not here.";
   }
  notroke();
  
  if(mousePressed){
  ellipse(mouseX, mouseY,20, 20);
  }



   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 375);
   drawPig(100, -200);
   


};

var drawPig = function(pigX, pigY){
  strokeWeight(2)
  stroke(0,0,0)

  fill(229, 149,  120)
  rect(150+pigX, 480+pigY,20,60)
  rect(90+pigX, 480+pigY,20,60)
  ellipse(130+pigX, 430+pigY, 120,150)
  ellipse(130+pigX, 330+pigY,100,100)
  quad(170+pigX, 300+pigY, 190+pigX, 285+pigY, 205+pigX, 315+pigY)
  quad(90+pigX, 300+pigY,  70+pigX, 285+pigY,  55+pigX, 315+pigY)
  rect(150+pigX, 400+pigY,20,60)
  rect(90+pigX, 400+pigY,20,60)
  ellipse(130+pigX, 340+pigY, 60, 30)

  fill(0,0,0)
  ellipse(140+pigX, 340+pigY, 5,10)
  ellipse(120+pigX, 340+pigY, 5,10)
  ellipse(110+pigX, 320+pigY, 10,10)
  ellipse(150+pigX, 320+pigY, 10,10)
};


