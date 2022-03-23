//Variables
PImage Pic1, Pic2;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
//
//Geometry
fullScreen();
//
//Populating variables
Pic1 = loadImage("tBJ51MDx_400x400.jpg"); // Dimensions 400 width, 400 Height
Pic2 = loadImage("ace.jpg"); //Dimensions: 1920 width, 1200 Height
//

int pic1Width = 400;
int pic1Height = 400;
int pic2Width = 1920;
int pic2Height =400;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0;
Boolean widthPic1Larger=true, heightPic1Larger=false, widthPic2Larger = true, heightPic2Larger = true;

//
if( pic1Width >= pic1Height) { //ID Larger Dimension: Landscape and Square
largerPic1Dimension = pic1Width;
smallerPic1Dimension = pic1Height;
widthPic1Larger = true;
} else {
  largerPic1Dimension = pic1Height;
  smallerPic1Dimension = pic1Width;
heightPic1Larger = false;
} //End pic1larger dimension ID
//
if( pic2Width > pic2Height ) { //ID Larger Dimension: Landscape and Square
  largerPic2Dimension = pic2Width;
  smallerPic2Dimension = pic1Height;
  widthPic2Larger = true;
} else { //ID Larger Dimension: Portrait
  largerPic2Dimension = pic1Height;
  smallerPic2Dimension = pic1Width;
heightPic2Larger = true;
} //End pic1larger dimension ID
println(smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details
//
if(widthPic1Larger == true ); imageWidthRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if(widthPic1Larger == true); imageHeightRatioPic1 = float (smallerPic1Dimension)/ float (largerPic1Dimension);
if(heightPic1Larger == true); imageWidthRatioPic1 = float(smallerPic1Dimension)/ float(largerPic1Dimension);
if(heightPic1Larger== true); imageHeightRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if(widthPic2Larger == true); imageWidthRatioPic2 = float(smallerPic2Dimension)/ float(largerPic2Dimension);
if(widthPic2Larger == true); imageHeightRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);
if(heightPic2Larger == true); imageWidthRatioPic2 = float(smallerPic2Dimension)/ float(largerPic2Dimension);
if(heightPic2Larger == true); imageHeightRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);
println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2  ); //Verifying Variable Details (Ratios)
float pic1WidthAdjusted = pic1Width;
float pic1HeightAdjusted = pic1Height;
float pic2WidthAdjusted = pic2Width;
float pic2HeightAdjusted = pic2Height;
//
// **CONT HERE
//
rectXPic1 = displayWidth*1/4 ;
rectYPic1 = displayHeight*0;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 = displayWidth*3/4;
rectHeightPic2 = displayHeight*1/2;
//
//Rect Layout & Image Printing on Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
image(Pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(Pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
