package com.hotel;

public class fetchcartdata {

	int ud,pid;
	String pname,pquantity,pprice,pimage,ptprice,cid,dptprice,dpprice,mprice,delp,innercartid;
	 public fetchcartdata(int ud,int pid,String pimage,String pname,String pprice,String pquantity,String ptprice,String cid)
	 {
		 this.ud=ud;
		 this.pid=pid;
		 this.pname=pname;
		 this.pquantity=pquantity;
		 this.pprice=pprice;
		 this.pimage=pimage;
		 this.ptprice=ptprice;
		 this.cid=cid;
		 this.dpprice="p"+pid;
		 this.dptprice="d"+pid;
		 this.mprice="m"+pid;
		 this.delp="del"+pid;
		 this.innercartid="i"+pid;
	 }
	 
	 public int getuid()
	 {
		 return ud;
	 }
	 
	 public int getpid()
	 {
		 return pid;
	 }
	 
	 public String getpname()
	 {
		 return pname;
	 }
	 
	 public String getpquantity()
	 {
		 return pquantity;
	 }
	 
	 public String getpprice()
	 {
		 return pprice;
	 }
	 
	 public String getpimage()
	 {
		 return pimage;
	 }
	 
	 public String getptprice()
	 {
		 return ptprice;
	 }
	 
	 public String getcid()
	 {
		  return cid;
	 }
	 
	 public String getdptprice()
	 {
		 return dptprice;
	 }
	 
	 public String getdpprice()
	 {
		 return dpprice;
	 }
	 
	 public String getmpprice()
	 {
		 //for decrement button of cart
		 
		 return mprice;
	 }
	 
	 public String getdelp()
	 {
		 return delp;
	 }
	 
	 public String getinnercartid()
	 {
		 return innercartid;
	 }
}
