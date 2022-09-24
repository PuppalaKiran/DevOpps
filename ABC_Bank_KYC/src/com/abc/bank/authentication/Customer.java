package com.abc.bank.authentication;

public class Customer {
	
	public String CustName;
	private int CustId;
	public int Mobile;
	public String Email;
	private int Aadhar;
	public String CustLocation;
	
	public String getCustName(){
		return CustName;
	}
	public void setCustName(String  custname){
		this.CustName = custname;
	}
	
		public int getCustId(){
			return CustId;
		}
		public void setCustId(int  custid){
			this.CustId = custid;
		}
		public int getMobile(){
			return Mobile;
		}
		public void setMobile(int  mobile){
			this.Mobile = mobile;
		}
		
		public String getEmail(){
			return Email;
		}
		public void setEmail(String  email){
			this.Email = email;
		}
		/**
		 * @return the aadhar
		 */
		public int getAadhar() {
			return Aadhar;
		}
		/**
		 * @param aadhar the aadhar to set
		 */
		public void setAadhar(int aadhar) {
			Aadhar = aadhar;
		}
		
		public String getCustLocation(){
			return CustLocation;
		}
		public void setCustLocation(String  custname){
			this.CustLocation = custname;
		}
	}
	

