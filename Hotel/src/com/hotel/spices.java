package com.hotel;

public class spices {
 
    int id;
    String mtype,name,image;
    
	
	
	  public spices(int id,String mtype,String name,String image)
	  {
		  this.id=id;
		  this.mtype=mtype;
		  this.name=name;
		  this.image=image;
	  }
	  
	  public int getid()
	  {
		  return this.id;
	  }
	  
	  public String getmtype()
	  {
		  return this.mtype;
	  }
	  
	  public String getname()
	  {
		  return this.name;
	  }
	  
	  public String getimage()
	  {
		  return this.image;
	  }
}
