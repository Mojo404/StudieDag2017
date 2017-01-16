ArrayList<Button> buttons = new ArrayList<Button>();
                          //0,height-height/3-70,width/3,70
Button fifty = new Button(10,height*4.7,width*2,55,"50/50");
Boolean mouseClick = false;

int livline = 3;

void setup ()
{
 size(800,800);
 
 buttonsSetup();
 
}

void draw()
{
  back();
  
  for (Button i : buttons)
  {
    buttonDraw(i);
  }
  
  drawLivline(fifty);
  
  mouseClick = false;
}

void back()
{
  background(120,60,175);
  fill(#F0F0F0);
  rect(0,height-height/3,width,height);
  fill(#DFFFFF);
  rect(0,height-height/3-70,width/3,70);
}