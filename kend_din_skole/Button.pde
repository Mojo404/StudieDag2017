class Button
{
  float x, y, w, h;
  
  //text
  String text;
  int textSize = 28;
  color ext;
  color hoverColor = #5D6BE0;
  color baseColor = #001AFA;
  color textColor = #000000;
  
  Button(float _x, float _y, float _w, float _h, String _text)
  {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = _text;
  }
  
  void drawButton()
  {
    fill(ext);
    rect(x,y,w,h);
    textSize(textSize);
    textAlign(CENTER);
    fill(textColor);
    text(text, x+w/2, y+h/2+107);
  }
}

void buttonDraw(Button i)
{
 i.drawButton();
 boolean mouseOver = overRect(i.x, i.y, i.w, i.h);
 if (mouseOver)
 {
   i.ext = i.hoverColor;
   
   if(mouseClick)
   {
    //TODO: fix shit 
   }
 } else {
   i.ext = i.baseColor;
 }
}

void drawLivline(Button fifty)
{
   fifty.drawButton();
   boolean mouseOver = overRect(fifty.x, fifty.y, fifty.w, fifty.h);
   if (mouseOver)
   {
     fifty.ext = fifty.hoverColor;
     if(mouseClick)
     {
       //TODO: fix shit 
     }
   } else {
     fifty.ext = fifty.baseColor;
   }
}

boolean overRect(float x, float y, float w, float h)
{
  if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h)
  {
    return true;
  } else {
    return false;
  }
}

void mouseReleased()
{
  mouseClick = true;
}

//float _x, float _y, float _w, float _h, String _text
void buttonsSetup()
{
  buttons.add(new Button(10, height-height/3+10, 385, 120, "HEJ"));
  buttons.add(new Button(10, height-height/3+10+130, 385, 120, "HEJ"));
  buttons.add(new Button(width-10-385, height-height/3+10, 385, 120, "HEJ"));
  buttons.add(new Button(width-10-385, height-height/3+10+130, 385, 120, "HEJ")); 
}