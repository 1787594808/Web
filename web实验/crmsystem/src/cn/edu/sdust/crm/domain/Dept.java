package cn.edu.sdust.crm.domain;

public class Dept {
	
	private int deptid;//对应数据库的表dept的列deptid
	private String deptname;//对应数据库的表dept的列deptname
	public String deptaddress;//对应数据库的表dept的列deptaddress
	public String getDeptaddress() {
		return deptaddress;
	}
	public void setDeptaddress(String deptaddress) {
		this.deptaddress = deptaddress;
	}
	public int getYears() {
		return years;
	}
	public void setYears(int years) {
		this.years = years;
	}
	public int years;
	public int getDeptid() {
		return deptid;
	}
	public void setDeptid(int deptid) {
		this.deptid = deptid;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

}
