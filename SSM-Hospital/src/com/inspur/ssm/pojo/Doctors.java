package com.inspur.ssm.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Doctors {
    private String docid;

    private String name;

    private String password;

    private String role;

    private String realname;

    private String departid;

    private String positional;

    private String sex;

    private BigDecimal age;

    private String tel;

    private String address;

    private Date createdate;

    public String getDocid() {
        return docid;
    }

    public void setDocid(String docid) {
        this.docid = docid == null ? null : docid.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role == null ? null : role.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getDepartid() {
        return departid;
    }

    public void setDepartid(String departid) {
        this.departid = departid == null ? null : departid.trim();
    }

    public String getPositional() {
        return positional;
    }

    public void setPositional(String positional) {
        this.positional = positional == null ? null : positional.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public BigDecimal getAge() {
        return age;
    }

    public void setAge(BigDecimal age) {
        this.age = age;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Doctors() {
    }

    public Doctors(String docid, String name, String password, String role, String realname, String departid, String positional, String sex, BigDecimal age, String tel, String address, Integer rocharge, Date createdate) {
        this.docid = docid;
        this.name = name;
        this.password = password;
        this.role = role;
        this.realname = realname;
        this.departid = departid;
        this.positional = positional;
        this.sex = sex;
        this.age = age;
        this.tel = tel;
        this.address = address;
        this.createdate = createdate;
    }

    @Override
    public String toString() {
        return "Doctors{" +
                "docid='" + docid + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                ", realname='" + realname + '\'' +
                ", departid='" + departid + '\'' +
                ", positional='" + positional + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", tel='" + tel + '\'' +
                ", address='" + address + '\'' +
                ", createdate=" + createdate +
                '}';
    }
}