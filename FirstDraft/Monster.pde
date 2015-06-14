  import java.util.*;
  
  class Monster{
    int x, y, w, h, xdir,ydir,rad,xspeed, yspeed, startdir;
    PImage i;
    Random rand= new Random();
    
    Monster(int xcor, int ycor, PImage img){
      x = xcor;
      y = ycor;
      i = img;
      w = i.width;
      h = i.height;
      rad=w;
      xspeed=20;
      yspeed=20;
      startdir=rand.nextInt(4)
      if (startdir == 0) {
        xdir=-1;
        ydir=-1;
      }
      else if (startdir == 1) {
        xdir=1;
        ydir=-1;
      }
      else if (startdir == 2) {
        xdir=-11;
        ydir=1;
      }
       if (startdir == 1) {
        xdir=1;
        ydir=-1;
      }
      
    }
    
    int getX() {
      return x;
    }
    void setX(int xcor) {
      x = xcor;
    }
  
    int getY() {
      return y;
    }
    void setY(int ycor) {
      y = ycor;
    }
    
    void addX(int inc) {
      x = x + inc;
    }
    void addY(int inc) {
      y = y + inc;
    }
    
    int getW() {
      return w;
    }
    void setW(int wid) {
      w = wid;
    }
    
    int getH() {
      return h;
    }
    void setH(int hei) {
      y = hei;
    }
  
    
    void setImage(String s){
      i = loadImage(s);
      w = i.width;
      h = i.height;
    }
    void drawImage(){
      image(i, x, y);
      autoMove();
    }
    
    void autoMove(){
      x=x+ (xspeed * xdir);
      y= y + (yspeed* ydir);
      if (x >= width-2 * rad || x < 2 * rad) {
      xdir *= -1;
    }
    if (y >= height- 2 * rad || y < 2 * rad) {
      ydir *= -1;
    }
  
    }
  }
