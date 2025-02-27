setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://www.shutterstock.com/image-vector/vector-illustration-background-forest-scenery-600nw-1807427365.jpg");

var forestImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

var caveImage = loadImage("https://thumbs.dreamstime.com/b/cartoon-cave-interior-illuminated-sunlight-ceiling-vector-illustration-rocky-landscape-inside-mountain-adve-343006845.jpg");

var doorImage = loadImage ("https://thumbs.dreamstime.com/b/background-fantasy-game-dark-cave-inside-cartoon-modern-illustration-fire-bed-pillow-crystal-entrance-rock-316994137.jpg");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Where do you want to go?  [Press f for forest and c for cave]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "No fox here.  [Press s to restart]";}
       
      if(key == 'c'){
      sceneImage = caveImage;
      sceneText = "Go forward or go inside the door? [Press d for door | g for forward ]"
      }
      
      if (key == 'd'){
      sceneImage = doorImage;
      sceneText = "No fox seen. Warm up by the fire or go back? [Press w for fire | c to go back]"
      }
     
     
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press f for forest and c for cave]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0);
    
    fill(0,0,0);
    rect(50, 320, 500, 60);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 375);
};



