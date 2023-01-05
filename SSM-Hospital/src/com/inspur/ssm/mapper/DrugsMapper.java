package com.inspur.ssm.mapper;

import com.inspur.ssm.pojo.Drugs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DrugsMapper {
    int deleteByPrimaryKey(String drugsid);

    int insert(Drugs record);

    int insertSelective(Drugs record);

    Drugs selectByPrimaryKey(String drugsid);

    int updateByPrimaryKeySelective(Drugs record);

    int updateByPrimaryKey(Drugs record);

    //下面是自己写的

    //获取药品信息
    List<Drugs> getDrugsList();

    int addDrugs(Drugs drugs);

    Drugs getDrugsById(@Param("drugsid") int id);

    int updateDrugs(Drugs drugs);

    int deleteDrugsById(@Param("drugsid") int id);

    List<Drugs> queryDrugeByIdName(@Param("DRUGSID") String drugsid,@Param("NAME") String name);

    int numaddDrugsById(@Param("DRUGSID") String drugsid,@Param("TOTALNUM")int totalnum);
}