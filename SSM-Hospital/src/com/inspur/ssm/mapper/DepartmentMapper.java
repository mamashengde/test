package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Department;

public interface DepartmentMapper {
    int deleteByPrimaryKey(String departid);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(String departid);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKey(Department record);
}