ArrayList<Button> buttons = new ArrayList<Button>();
//0,height-height/3-70,width/3,70
Button fifty = new Button(10, height*4.7, width*1.9, 55, "50/50");
Boolean mouseClick = false;

int niveau = 0;
int rigtige = 0;
int livline = 3;

void setup ()
{
  size(800, 800);

  buttonsSetup();
  
  setupBilleder();
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
  background(120, 60, 175);
  switch(niveau)
  {
    case 0:
    image(billede2, 0,0);
    billede2.resize(width,height-height/3);
    break;
  }
  fill(#F0F0F0);
  rect(0, height-height/3, width, height);
  fill(#DFFFFF);
  rect(0, height-height/3-70, width/3, 70);
  fill(#DF0F0F);
  rect(width/3-60, height-height/3-65, 50, 57);
}