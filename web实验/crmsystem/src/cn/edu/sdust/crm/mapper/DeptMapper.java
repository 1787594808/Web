package cn.edu.sdust.crm.mapper;

import java.util.List;

import cn.edu.sdust.crm.domain.Dept;

public interface DeptMapper {
	
	
	//根据服务层给出的业务规范，建立数据访问层对应的映射方法
	//cn.edu.sdust.crm.DeptService.ListAllDepts()
	public List<Dept> SelectAllDepts();
	
	public List<Dept> SelectDeptsByParam(Dept d);
	
	public int InsertDept(Dept d);
	
	public int UpdateDept(Dept d);
	
	public int DeleteDept(int deptid);
	
	public Dept SelectDeptById(int id);
	

}
