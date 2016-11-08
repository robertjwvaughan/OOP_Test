/*
  LAB TEST 1
  Student: Robert Vaughan
  Student Number: C15341261
  Lab Group: E
*/

ArrayList<Star> data = new ArrayList<Star>();

void setup()
{
  size(800, 800);
  loadData();
}//end setup

void draw()
{
  //
}//end draw

/*
  Function to load data into a global (ew) array list
*/

void loadData()
{
  Table t = loadTable("map.csv", "header");
  
  for (int i = 0; i < t.getRowCount(); i++)
  {
    Star rowFetch = new Star(t.getRow(i));
    data.add(rowFetch);
  }//end for
  
  /*
  for (Star gdp:data)
  {
    println(gdp.name);
  }//end calcAverage
  */
  
}//end loadData