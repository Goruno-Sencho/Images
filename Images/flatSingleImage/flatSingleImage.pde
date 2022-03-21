//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
int largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger =false, heightLarger=false;
//
fullScreen();
//Population
pic = loadImage("tBJ51MDx_400x400.jpg"); //Dimensions: width 400, height 400
//Find the Larger dimension for aspect ratio
int picWidth = 400; //My width is 400
int picHeight = 400; //My height is 400
if (picWidth >= picHeight) {
  largerDimension = picWidth ;
  smallerDimension = picHeight;
  widthLarger = true;
} else {
  largerDimension = picHeight ;
  smallerDimension = picWidth ;
  heightLarger = true;
}//End DImension Comparision
println(smallerDimension, largerDimension, widthLarger, heightLarger); //Verifying Variable details
//println(smallerDimension, largerDimension); //Verifying Variable details
//Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthLarger == true ) imageWidthRatio = float (largerDimension / largerDimension);
if ( widthLarger == true ) imageHeightRatio = float (smallerDimension / largerDimension);
println(imageWidthRatio, imageHeightRatio, smallerDimension / largerDimension, 400/400); //Verify variable values
//Note: prinln() also verifies decimal places, compiler will truncate
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio "0.75" similar to style="height:auto" (websites)
imageX = width*0;
imageY = height*0;
imageWidth = width*imageWidthRatio;
imageHeight = height*imageHeightRatio;
if(imageWidth > width) println("ERROR: Image is too wide"); //Simple Display Checker
if(imageHeight > width) println("ERROR: Image is too high"); //Simple Display Chekcer

//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
