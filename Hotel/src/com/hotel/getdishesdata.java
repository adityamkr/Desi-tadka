package com.hotel;

public class getdishesdata {

  int pno,pprice;
  String pname,pimage,pquantity;
  
	public getdishesdata(int pno,String pname,String pimage,int pprice,String pquantity)
	{
		 this.pno=pno;
		 this.pname=pname;
		 this.pimage=pimage;
		 this.pprice=pprice;
		 this.pquantity=pquantity;
	}
	
	public int getpno()
	{
		return pno;
	}
	
	public String getpname()
	{
		return pname;
	}
	
	public String getpimage()
	{
		return pimage;
	}
	
	public int getpprice()
	{
		return pprice;
	}
	
	public String getpquantity()
	{
		return pquantity;
	}
}
