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

var forwardImage = loadImage ("https://www.shutterstock.com/image-vector/mossy-forest-waterfall-cave-background-600nw-2282685567.jpg");

var badendingImage = loadImage ("https://wallpapers.com/images/hd/black-glitch-7uest1w60gf1k4l2.jpg");

var longpathImage = loadImage ("https://t4.ftcdn.net/jpg/03/36/33/21/360_F_336332130_MK8MeXrubobFcf5mQ95XDreySIaPSbFf.jpg");

var fireplaceImage = loadImage ("https://en.pimg.jp/083/732/952/1/83732952.jpg");

var goodendImage = loadImage ("https://ih1.redbubble.net/image.5524686627.1356/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "     Help find my cat!! Where do you want to look first? \n                  [Press f for forest and c for cave]";
var sceneTextf =  "              Continue down the long path or go back? \n                   [Press p to continue | t to go back]";
var sceneTextp = "             The path ends here, let's head back \n                                    [Press t]"
var sceneTextc = "                  Go forward or go through the door? \n                    [Press d for door | g for forward ]"
var sceneTextd = "                   Warm up by the fire or go back? \n                     [Press i for fire | c to go back]"
var sceneTextg = "Take the shortcut and step on the boulders to cross or take \nthe long path around the water? [b for shortcut | l for path]"
var sceneTextb = "             Bad idea... The boulders were not stable \n                               [Click on screen]"
var sceneTextl = "                                        Found her!! \n                                         [Press e]"
var sceneTexti = "                                   getting toasty \n                             [Press d to head back]"
var sceneTexte = "                              [Click on screen]"

draw = function(){


    
   drawScene();
if (mousePressed && sceneText == "             Bad idea... The boulders were not stable \n                               [Click on screen]"){
fill(255,255,255);
text("Bad Ending", random(0,600), random (0,600));
fill (255, 0, 0); 
text("Bad Ending", random(0,600), random (0,600));
fill(255,255,255);
text("Bad Ending", random(0,600), random (0,600));
fill (255, 0, 0); 
text("Bad Ending", random(0,600), random (0,600));
}

if (mousePressed && sceneText == "                              [Click on screen]"){
fill (239, 180, 35 );
text ("GOOD ENDING", random(0,600), random(0,600));
fill (239, 35, 35 );
text ("GOOD ENDING", random(0,600), random(0,600));
fill (255,255,255);
text ("GOOD ENDING", random(0,600), random(0,600));
}

if(sceneText == sceneTextl){
fill(232, 182, 21); 
textSize(80);
text (" 🐈", 200,250)

}


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = sceneTextf;}
       
       if(key == 't'){
       sceneImage = caveSceneImage;
       sceneText = "Where should we go? [Press f for forest | c for cave]";
       }
       
       if (key == 'p'){
       sceneImage = longpathImage;
      sceneText = sceneTextp
       }
       
      if(key == 'c'){
      sceneImage = caveImage;
      sceneText = sceneTextc;
      }
      
      if (key == 'd'){
      sceneImage = doorImage;
      sceneText = sceneTextd;
      }
     
     if(key == 'i'){
     sceneImage = fireplaceImage;
     sceneText = sceneTexti;
     }
     
     if (key == 'g') {
     sceneImage = forwardImage;
     
     sceneText = sceneTextg;
     }
     
     if (key == 'b') {
     sceneImage = badendingImage;
     sceneText = sceneTextb;
    
     }
     
     if (key == 'l') {
     sceneImage = longpathImage;
     sceneText = sceneTextl;
    
     }
     
     if (key == 'e') {
     sceneImage = goodendImage;
     sceneText = sceneTexte
     
     }
     
     if(key == 's'){
      sceneImage = caveSceneImage;
     
      sceneText = "   Help find my cat!! Where do you want to look first? \n               [Press f for forest and c for cave]";
    } 
   }
  
};


var drawScene = function(){
   
  image(sceneImage, 0, 0, 600, 400);
    fill(255,255,255);
    rect(50, 320, 500, 60);
      
    fill(0,0,0);
    textSize(18);
    
   
   text(sceneText, 60, 345);
};

var drawCharacter = function (){

image(sceneImage, 0,0);
fill(0,0,0);
ellipse (50,50,290,310);
}









