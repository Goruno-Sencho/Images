void imageDraw() 
{
  color red=#FF0000;
  fill(red);
//rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation 
// Image using Rect() Variables
image(Pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(Pic2, rectXPic2, rectYPic2+(rectYPic2*1/9), rectWidthPic2, rectHeightPic2);
// Change the Rect() Variables to Aspect Ratio
image(Pic1, rectXPic1, rectYPic1, pic1WidthAdjusted, pic1HeightAdjusted);
println ("Images look great, maybe put some text inbetween to fill in the red space."); //Great Design Change for Aspect Ratio
//image(Pic2, rectXPic2, rectYPic2, pic2WidthAdjusted, pic2HeightAdjusted);
//Center image in rect(), pic2, by changing the yRect() value
//image(Pic2, rectXPic2, rectYPic2+(rectYPic2*1/5), pic2WidthAdjusted, pic2HeightAdjusted);
}//End imageDraw
