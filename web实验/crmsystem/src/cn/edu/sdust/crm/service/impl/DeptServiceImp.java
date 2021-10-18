package cn.edu.sdust.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.sdust.crm.domain.Dept;
import cn.edu.sdust.crm.mapper.DeptMapper;
import cn.edu.sdust.crm.service.DeptService;

@Service("deptService")
public class DeptServiceImp implements DeptService{

	@Autowired
	private DeptMapper deptMapper;
	
	@Override
	public List<Dept> ListAllDepts() {
		// TODO Auto-generated method stub
		return deptMapper.SelectAllDepts();
	}

	@Override
	public int AddDept(Dept d) {
		// TODO Auto-generated method stub
		return deptMapper.InsertDept(d);
	}

	@Override
	public Dept ListDeptById(int id) {
		// TODO Auto-generated method stub
		return deptMapper.SelectDeptById(id);
	}

	@Override
	public int EditDept(Dept d) {
		// TODO Auto-generated method stub
		return deptMapper.UpdateDept(d);
	}

	@Override
	public int RemoveDept(int deptid) {
		// TODO Auto-generated method stub
		return deptMapper.DeleteDept(deptid);
	}

	@Override
	public List<Dept> ListDeptsByParam(Dept d) {
		// TODO Auto-generated method stub
		return deptMapper.SelectDeptsByParam(d);
	}

}
