fullScreen();
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
//Population
imageX= width*0;
imageY= height*0;
imageWidth= width;
imageHeight = height;
pic = loadImage("tBJ51MDx_400x400.jpg"); //Dimensions: widht 400, height 400
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
