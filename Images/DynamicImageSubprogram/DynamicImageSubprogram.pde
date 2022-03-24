//Global Variables

PImage Pic1, Pic2;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0;
Boolean widthPic1Larger=true, heightPic1Larger=false, widthPic2Larger = true, heightPic2Larger = true;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float pic1WidthAdjusted, pic1HeightAdjusted , pic2WidthAdjusted, pic2HeightAdjusted;
color red=#FF0000;
//
void setup() 
{
  fullScreen(); //size(900, 680);
 PopulatingVariables();
 //
 imageDraw();
}//Endsetup
//
void draw() 
{ //Note: DRAW loop repeats 60 times per second
  //Rectangle Layout & Image Printing on Canvas

}//End draw
//
void keyPressed() 
{
  
}//End keyPressed
//
void mousePressed() 
{
 
}//End mousePressed
