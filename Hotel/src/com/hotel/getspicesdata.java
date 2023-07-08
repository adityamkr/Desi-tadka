package com.hotel;

public class getspicesdata {

	String pid,stype,name,image,price;
	 getspicesdata(String pid,String stype,String name,String image,String price)
	 {
		this.pid=pid;
		this.stype=stype;
		this.name=name;
		this.image=image;
		this.price=price;
	 }
	 
	 public String getpid()
	 {
		return pid;
	 }
	 
	 public String getstype()
	 {
		return stype;
	 }
	 
	 public String getname()
	 {
		 return name;
	 }
	 
	 public String getimage()
	 {
		 return image;
	 }
	 
	  public String getprice()
	  {
		  return price;
	  }
}
