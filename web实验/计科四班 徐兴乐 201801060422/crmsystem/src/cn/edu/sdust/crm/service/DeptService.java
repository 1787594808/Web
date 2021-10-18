package cn.edu.sdust.crm.service;
import java.util.List;

import cn.edu.sdust.crm.domain.Dept;
public interface DeptService {

	//来自于需求。给出的业务需求，列出所有的部门
	public List<Dept> ListAllDepts();
	
	public List<Dept> ListDeptsByParam(Dept d);
	//新增一个部门
	public int AddDept(Dept d);
	
	//修改一个部门
	public int EditDept(Dept d);
	
	
	//删除一个部门
	public int RemoveDept(int deptid);

	public Dept ListDeptById(int id);
}
