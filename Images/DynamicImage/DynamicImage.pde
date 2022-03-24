//Global Variables
int pic1Width = 400;
int pic1Height = 400;
int pic2Width = 1920;
int pic2Height =400;
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
  //
  //
  //Populating Variables
  Pic1 = loadImage("tBJ51MDx_400x400.jpg"); // Dimensions 400 width, 400 Height
Pic2 = loadImage("ace.jpg"); //Dimensions: 1920 width, 1200 Height
//
//Aspect Ratio calculations

//
//Choosing larger image dimension
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
} //End pic2larger dimension ID
println(smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details
//
//Calculating Aspect Ratios
if(widthPic1Larger == true ); imageWidthRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if(widthPic1Larger == true); imageHeightRatioPic1 = float (smallerPic1Dimension)/ float (largerPic1Dimension);
if(heightPic1Larger == true); imageWidthRatioPic1 = float(smallerPic1Dimension)/ float(largerPic1Dimension);
if(heightPic1Larger== true); imageHeightRatioPic1 = float(largerPic1Dimension) / float(largerPic1Dimension);
if(widthPic2Larger == true); imageWidthRatioPic2 = float(smallerPic2Dimension)/ float(largerPic2Dimension);
if(widthPic2Larger == true); imageHeightRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);
if(heightPic2Larger == true); imageWidthRatioPic2 = float(smallerPic2Dimension)/ float(largerPic2Dimension);
if(heightPic2Larger == true); imageHeightRatioPic2 = float(largerPic2Dimension) / float(largerPic2Dimension);
println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2  ); //Verifying Variable Details (Ratios)
//
rectXPic1 = displayWidth*1/4;
rectYPic1 = displayHeight*0;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 = displayWidth*3/4;
rectHeightPic2 = displayHeight*1/2;
//
//Final Aspect Ratio Calculations
float pic1WidthAdjusted, pic1HeightAdjusted , pic2WidthAdjusted, pic2HeightAdjusted;
pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1;
pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
println(pic1Width, pic1Height, pic2Width, pic2Height);
println(pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
}//Endsetup
//
void draw() 
{ //Note: DRAW loop repeats 60 times per second
  //Rectangle Layout & Image Printing on Canvas
color red=#FF0000;
fill(red);
//rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation 
// Image using Rect() Variables
//image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
//image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
// Change the Rect() Variables to Aspect Ratio
image(Pic1, rectXPic1, rectYPic1, pic1WidthAdjusted, pic1HeightAdjusted);
println ("Image one looks good, maybe put some text underneath to fill in the space, if there is one."); //Great Design Change for Aspect Ratio
//image(pic2, rectXPic2, rectYPic2, pic2WidthAdjusted, pic2HeightAdjusted);
//Center image in rect(), pic2, by changing the yRect() value
image(Pic2, rectXPic2, rectYPic2+(rectYPic2*1/5), pic2WidthAdjusted, pic2HeightAdjusted);
}//End draw
//
void keyPressed() 
{
  
}//End keyPressed
//
void mousePressed() 
{
  
}//End mousePressed
