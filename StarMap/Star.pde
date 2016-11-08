class Star
{
  float life;
  String name;
  float distance;
  float x;
  float y;
  float z;
  float size;
  
  Star(TableRow row)
  {
    this.life = row.getFloat("Hab?");
    this.name = row.getString("Display Name");
    this.distance = row.getFloat("Distance");
    this.x = row.getFloat("Xg");
    this.y = row.getFloat("Yg");
    this.z = row.getFloat("Zg");
    this.size = row.getFloat("AbsMag");
    
    //printStars();
  }//end Star
  
  void printStars()
  {
    println(life + " " + name + " " + distance + " " + x + " " 
       + y + " " + z + " " + size);
  }
}//end CLASS STAR