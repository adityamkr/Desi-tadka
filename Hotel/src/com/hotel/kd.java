package com.hotel;

public class kd {
  
	int id;
	String name;
	String image;
	 kd(int id,String name,String image)
	 {
		 this.name=name;
		 this.image=image;
		 this.id=id;
		 
	 }
	 
	 public String getimage()
	 {
		 return this.image;
	 }
	 
	 public String getname()
	 {
		 return this.name;
	 }
	 
	 public int getid()
	 {
		 return this.id;
	 }
}
