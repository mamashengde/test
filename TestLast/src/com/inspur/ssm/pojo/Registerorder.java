package com.inspur.ssm.pojo;

import java.util.Date;

public class Registerorder {
    private String roid;

    private String memberid;

    private String departid;

    private String docid;

    private Date rotime;

    private Integer rocharge;

    private String status;

    private Date optime;

    public String getRoid() {
        return roid;
    }

    public void setRoid(String roid) {
        this.roid = roid == null ? null : roid.trim();
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid == null ? null : memberid.trim();
    }

    public String getDepartid() {
        return departid;
    }

    public void setDepartid(String departid) {
        this.departid = departid == null ? null : departid.trim();
    }

    public String getDocid() {
        return docid;
    }

    public void setDocid(String docid) {
        this.docid = docid == null ? null : docid.trim();
    }

    public Date getRotime() {
        return rotime;
    }

    public void setRotime(Date rotime) {
        this.rotime = rotime;
    }

    public Integer getRocharge() {
        return rocharge;
    }

    public void setRocharge(Integer rocharge) {
        this.rocharge = rocharge;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getOptime() {
        return optime;
    }

    public void setOptime(Date optime) {
        this.optime = optime;
    }
}