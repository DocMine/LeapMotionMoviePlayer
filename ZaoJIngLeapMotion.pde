import de.voidplus.leapmotion.*; 
import processing.video.*;

PImage    ChoosenSceneCover, 
          AssembleSceneBG, 
          DrawTextureSceneBG, 
          StarMapSceneBG, 
          TeachKnitBG;
          
Movie     IntroduceVideoSimple,
          IntroduceVideoLevel1, 
          IntroduceVideoLevel2, 
          IntroduceVideoLevel3, 
          IntroduceVideoLevel4, 
          IntroduceVideoLevel5, 
          DrawTextureVideo,
          TeachKnitVideo;

LeapMotion leap;
//Init leapMotion Device

int ActiveScene = 0;

// Scenes List
final int ChooseIntroduce = 0;
final int IntroduceSimple = 6;
final int IntroduceLevel1 = 1;
final int IntroduceLevel2 = 20;
final int IntroduceLevel3 = 30;
final int IntroduceLevel4 = 40;
final int IntroduceLevel5 = 50;
final int AssembleScene = 3;
final int DrawTextureScene = 2;
final int StarMapScene = 8;
final int TeachKnit = 101;

// HandShaps List
final int HandShapNum0 = 0;
final int HandShapNum1 = 1;
final int HandShapNum2 = 2;
final int HandShapNum3 = 3;
final int HandShapNum4 = 4;
final int HandShapNum5 = 5;
final int HandShapNum6 = 6;
final int HandShapNum8 = 8;
final int HandShapROCK = 100;
final int HandShapOK = 101;
final int HandShapLike = 102;

void setup(){
  size(1920,1080);
  //fullScreen();
  noStroke();
  frameRate(90);
  imageMode(CENTER);
  print("Images Loading");
  ChoosenSceneCover = loadImage(sketchPath("")+"ChoosenSceneCover.jpg");
  AssembleSceneBG = loadImage(sketchPath("")+"AssembleSceneBG.jpg");
  DrawTextureSceneBG = loadImage(sketchPath("")+"DrawTextureSceneBG.jpg");
  StarMapSceneBG = loadImage(sketchPath("")+"StarMapSceneBG.jpg");
  TeachKnitBG = loadImage(sketchPath("")+"TeachKnitBG.jpg");
  println("----------Compeleted!");
  print("Videos Loading");
  IntroduceVideoSimple = new Movie(this, sketchPath("")+"IntroduceVideoSimple.mov");
  IntroduceVideoLevel1 = new Movie(this, sketchPath("")+"IntroduceVideoLevel1.mov");
  IntroduceVideoLevel2 = new Movie(this, sketchPath("")+"IntroduceVideoLevel2.mov");
  IntroduceVideoLevel3 = new Movie(this, sketchPath("")+"IntroduceVideoLevel3.mov");
  IntroduceVideoLevel4 = new Movie(this, sketchPath("")+"IntroduceVideoLevel4.mov");
  IntroduceVideoLevel5 = new Movie(this, sketchPath("")+"IntroduceVideoLevel5.mov");
  DrawTextureVideo = new Movie(this, sketchPath("")+"DrawTextureVideo.mov");
  TeachKnitVideo = new Movie(this, sketchPath("")+"TeachKnitVideo.mov");
  println("----------Compeleted!");
  leap = new LeapMotion(this);
}

void draw() {
  print("循环了一遍: ");
  println(ActiveScene);
  switch(ActiveScene){
    case ChooseIntroduce:{
      ChooseIntroduce();
      break;
    }
    case IntroduceSimple:{
      IntroduceSimple();
      break;
    }
    case IntroduceLevel1:{
      IntroduceLevel1();
      break;
    }
    case IntroduceLevel2:{
      IntroduceLevel2();
      break;
    }
    case IntroduceLevel3:{
      IntroduceLevel3();
      break;
    }
    case IntroduceLevel4:{
      IntroduceLevel4();
      break;
    }
    case IntroduceLevel5:{
      IntroduceLevel5();
      break;
    }
    case AssembleScene:{
      AssembleScene();
      break;
    }
    case DrawTextureScene:{
      DrawTextureScene();
      break;
    }
    case StarMapScene:{
      StarMapScene();
      break;
    }
    case TeachKnit:{
      TeachKnit();
      break;
    }
    case HandShapROCK:{
      StopAllMovie();
      ActiveScene = ChooseIntroduce;
      break;
    }
    default:
    ActiveScene = ChooseIntroduce;
  } 
}

void movieEvent(Movie m) {
  m.read();//用不断显示图片的方法播放视频
}
/*
final int ChooseIntroduce = 0;
final int IntroduceSimple = 1;
final int IntroduceLevel1 = 2;
final int IntroduceLevel2 = 3;
final int IntroduceLevel3 = 4;
final int IntroduceLevel4 = 5;
final int IntroduceLevel5 = 6;
final int AssembleScene = 7;
final int DrawTextureScene = 8;
final int StarMapScene = 9;
final int TeachKnit = 10;
*/

void ChooseIntroduce(){
  ActiveScene = ControlCmdCheck();
  println("检测了一下手势");
  image(ChoosenSceneCover, width/2, height/2, width, height);
  //加载背景图
  
}

void IntroduceSimple(){
  if(IntroduceVideoSimple.isPlaying())
  image(IntroduceVideoSimple, width/2, height/2, width, height);//无缩放居中播放
  else
  IntroduceVideoSimple.play();
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

void IntroduceLevel1(){
  if(IntroduceVideoLevel1.isPlaying())
  image(IntroduceVideoLevel1, width/2, height/2, width, height);//无缩放居中播放
  else
  IntroduceVideoLevel1.play();
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

void IntroduceLevel2(){
  if(IntroduceVideoLevel2.isPlaying())
  image(IntroduceVideoLevel2, width/2, height/2, width, height);//无缩放居中播放
  else
  IntroduceVideoLevel2.play();
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

void IntroduceLevel3(){
  if(IntroduceVideoLevel3.isPlaying())
  image(IntroduceVideoLevel3, width/2, height/2, width, height);//无缩放居中播放
  else
  IntroduceVideoLevel3.play();
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

void IntroduceLevel4(){
  if(IntroduceVideoLevel4.isPlaying())
  image(IntroduceVideoLevel4, width/2, height/2, width, height);//无缩放居中播放
  else
  IntroduceVideoLevel4.play();
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

void IntroduceLevel5(){
  if(IntroduceVideoLevel5.isPlaying())
  image(IntroduceVideoLevel5, width/2, height/2, width, height);//无缩放居中播放
  else
  IntroduceVideoLevel5.play();
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

void AssembleScene(){
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

void DrawTextureScene(){
  if(DrawTextureVideo.isPlaying())
  image(DrawTextureVideo, width/2, height/2, width, height);//无缩放居中播放
  else
  DrawTextureVideo.play();
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

void StarMapScene(){
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

void TeachKnit(){
  if(TeachKnitVideo.isPlaying())
  image(TeachKnitVideo, width/2, height/2, width, height);//无缩放居中播放
  else
  TeachKnitVideo.play();
  if(ControlCmdCheck() == HandShapROCK){
    ActiveScene = HandShapROCK;
  }
}

int ControlCmdCheck() {
  /*
  // HandShaps List
  final int HandShapNum0 = 0;
  final int HandShapNum1 = 0;
  final int HandShapNum2 = 0;
  final int HandShapNum3 = 0;
  final int HandShapNum4 = 0;
  final int HandShapNum5 = 0;
  final int HandShapNum6 = 0;
  final int HandShapNum8 = 0;
  final int HandShapROCK = 0;
  final int HandShapOK = 0;
  final int HandShapLike = 0;*/
  //检测手势并返回手势代码，每次返回值唯一
  //在这里应对手部突然抽出的情况
  //Hand hand = leap.getHand(0);
  for (Hand hand : leap.getHands ()) {
    Finger  fingerThumb        = hand.getThumb();
    Finger  fingerIndex        = hand.getIndexFinger();
    Finger  fingerMiddle       = hand.getMiddleFinger();
    Finger  fingerRing         = hand.getRingFinger();
    Finger  fingerPink         = hand.getPinkyFinger();
    if (
        !fingerThumb.isExtended() &&
        !fingerIndex.isExtended() &&
        !fingerMiddle.isExtended() && 
        !fingerRing.isExtended() && 
        !fingerPink.isExtended()) {
      println("--------00000");
      return HandShapNum0;
    }
    if (
        !fingerThumb.isExtended() &&
        fingerIndex.isExtended() &&
        !fingerMiddle.isExtended() && 
        !fingerRing.isExtended() && 
        !fingerPink.isExtended() ) {
      println("--------00001");
      return HandShapNum1;
    }
    if (
        !fingerThumb.isExtended() &&
        fingerIndex.isExtended() &&
        fingerMiddle.isExtended() && 
        !fingerRing.isExtended() && 
        !fingerPink.isExtended() ) {
      println("--------00002");
      return HandShapNum2;
    }
    if (
        !fingerThumb.isExtended() &&
        fingerIndex.isExtended() &&
        fingerMiddle.isExtended() && 
        fingerRing.isExtended() && 
        !fingerPink.isExtended() ) {
      println("--------00003");
      return HandShapNum3;
    }
    if (
        !fingerThumb.isExtended() &&
        fingerIndex.isExtended() &&
        fingerMiddle.isExtended() && 
        fingerRing.isExtended() && 
        fingerPink.isExtended() ) {
      println("--------00004");
      return HandShapNum4;
    }
    if (
        fingerThumb.isExtended() &&
        fingerIndex.isExtended() &&
        fingerMiddle.isExtended() && 
        fingerRing.isExtended() && 
        fingerPink.isExtended() ) {
      println("--------00005");
      return HandShapNum5;
    }
    if (
        fingerThumb.isExtended() &&
        !fingerIndex.isExtended() &&
        !fingerMiddle.isExtended() && 
        !fingerRing.isExtended() && 
        fingerPink.isExtended() ) {
      println("--------00006");
      return HandShapNum6;
    }
    if (
        fingerThumb.isExtended() &&
        fingerIndex.isExtended() &&
        !fingerMiddle.isExtended() && 
        !fingerRing.isExtended() && 
        !fingerPink.isExtended() ) {
      println("--------00008");
      return HandShapNum8;
    }
    if (
        !fingerThumb.isExtended() &&
        !fingerIndex.isExtended() &&
        fingerMiddle.isExtended() && 
        fingerRing.isExtended() && 
        fingerPink.isExtended() ) {
      println("--------000OK");
      return HandShapOK;
    }
    if (
        fingerThumb.isExtended() &&
        fingerIndex.isExtended() &&
        !fingerMiddle.isExtended() && 
        !fingerRing.isExtended() && 
        fingerPink.isExtended() ) {
      println("--------0ROCK");
      return HandShapROCK;
    }
    if (
        fingerThumb.isExtended() &&
        !fingerIndex.isExtended() &&
        !fingerMiddle.isExtended() && 
        !fingerRing.isExtended() && 
        !fingerPink.isExtended() ) {
      println("--------0LIKE");
      return HandShapLike;
    }
    else
    return ActiveScene;
  }
  //检测鼠标和键盘输入，检测退出按钮
  return 0;
}

void StopAllMovie(){
  IntroduceVideoSimple.stop();
  IntroduceVideoLevel1.stop();
  IntroduceVideoLevel2.stop();
  IntroduceVideoLevel3.stop();
  IntroduceVideoLevel4.stop();
  IntroduceVideoLevel5.stop();
  DrawTextureVideo.stop();
  TeachKnitVideo.stop();
}

int JudgeScale(Hand hand) {
    Finger  fingerThumb        = hand.getThumb();
    Finger  fingerIndex        = hand.getIndexFinger();
    Finger  fingerMiddle       = hand.getMiddleFinger();
    Finger  fingerRing         = hand.getRingFinger();
    Finger  fingerPink         = hand.getPinkyFinger();
  return -1;
}
int JudgeRotation(Hand hand){
    Finger  fingerThumb        = hand.getThumb();
    Finger  fingerIndex        = hand.getIndexFinger();
    Finger  fingerMiddle       = hand.getMiddleFinger();
    Finger  fingerRing         = hand.getRingFinger();
    Finger  fingerPink         = hand.getPinkyFinger();
  return -1;
}
