package com.inspur.ssm.pojo;

public class userrolelist {

    private String roleid;

    private String rolename;

    public userrolelist(String roleid, String rolename) {
        this.roleid = roleid;
        this.rolename = rolename;
    }

    public userrolelist() {
    }

    @Override
    public String toString() {
        return "userrolelist{" +
                "roleid='" + roleid + '\'' +
                ", rolename='" + rolename + '\'' +
                '}';
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }
}
