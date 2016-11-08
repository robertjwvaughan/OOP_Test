/*
  LAB TEST 1
  Student: Robert Vaughan
  Student Number: C15341261
  Lab Group: E
*/

ArrayList<Star> data = new ArrayList<Star>();

Table t;
float border = 0;
float finalx = 800;
float finaly = 800;

void setup()
{
  size(800, 800);
  border = map(50.0f, 0, finalx + finaly, 0, width + height);
  println(border);
  loadData();
}//end setup

void draw()
{
  background(0);
  grid();
  drawStars();
  printStars();
}//end draw

/*
  Function to load data into a global (ew) array list
*/

void loadData()
{
  t = loadTable("map.csv", "header");
  
  for (int i = 0; i < t.getRowCount(); i++)
  {
    Star rowFetch = new Star(t.getRow(i));
    data.add(rowFetch);
  }//end for
}//end loadData

void grid()
{
  stroke(255);
  
  //Drawing of graph
  fill(255, 0, 255);
  stroke(255, 0, 255);
  float div = (height - (border) * 2.0f) / 10.f;
  int j = -5;
  for (int i = 0; i <= 10; i++)
  {
    textAlign(CENTER, CENTER);
    line(border + div * (float)i, border, border + div * (float)i, height - border);
    line(border, border + div * (float)i, width - border, border + div * (float)i);
    fill(255, 0, 0);
    text(j, border - map(20.0f, 0, finalx, 0, width), border + div * (float)i);
    text(j, border + div * (float)i, border - map(20.0f, 0, finalx, 0, width));
    j++;
    //text(j, );
  }
}//end grind

void drawStars()
{
  for (int i = 0; i < data.size(); i++)
  {
    textAlign(LEFT, CENTER);
    float x = map(data.get(i).x, -5, 5, border, width - border);
    float y = map(data.get(i).y, -5, 5, border, width - border);
    float size = map(9.0f, 0, finalx + finaly, 0, width + height);
    float gap = map(10.0f, 0, finalx + finaly, 0, width + height);
    noFill();
    ellipse(x, y, size, size);
    stroke(255,255,0);
    line(x - (size / 2.0f), y, x + (size / 2.0f),y);
    line(x, y - (size / 2.0f), x, y  + (size / 2.0f));
    
    text(data.get(i).name,x + gap, y);
  }//end for
}//end drawStars()

void printStars()
{
  for(Star list:data)
  {
    list.printStars();
  }
}//end printStars