setup = function() {
    size(600, 400);
    background (98, 192, 239);
};

//Background Images
var caveSceneImage = loadImage("https://thumbs.dreamstime.com/b/magic-forest-landscape-fantasy-tree-cave-view-cartoon-background-dark-nature-environment-scene-jungle-wood-garden-wit-343005644.jpg");

var forestImage = loadImage("https://png.pngtree.com/thumb_back/fh260/background/20230611/pngtree-an-image-of-a-cartoon-path-going-through-a-forest-image_2933142.jpg");

var caveImage = loadImage("https://thumbs.dreamstime.com/b/cartoon-cave-interior-illuminated-sunlight-ceiling-vector-illustration-rocky-landscape-inside-mountain-adve-343006845.jpg");

var doorImage = loadImage ("https://thumbs.dreamstime.com/b/background-fantasy-game-dark-cave-inside-cartoon-modern-illustration-fire-bed-pillow-crystal-entrance-rock-316994137.jpg");

var longpathImage = loadImage ("https://t4.ftcdn.net/jpg/01/38/81/53/360_F_138815333_nxZVxnha49hAHSHeyIzcfz58c8s8ZRHC.jpg");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Help find my cat!! Where do you want to look first?  [Press f for forest and c for cave]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "Continue down the long path or go back?.  [Press p to continue | t to go back]";}
       
       if(key == 't'){
       sceneImage = caveSceneImage;
       sceneText = "Where should we go? [Press f for forest | c for cave]";
       }
       
       if (key == 'p'){
       sceneImage = longpathImage;
      
       }
       
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
      sceneText = "Help find my cat!! Where do you want to look first?  [Press f for forest and c for cave]";
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







