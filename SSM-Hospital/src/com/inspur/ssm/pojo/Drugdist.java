package com.inspur.ssm.pojo;

import java.util.Date;

public class Drugdist {
    private int registno;
    private int memberid;
    private String diagpeople;
    private Date diagdate;

    private String drugname;

    public Drugdist() {
    }

    public Drugdist(int registno, int memberid, String diagpeople, Date diagdate, String drugname) {
        this.registno = registno;
        this.memberid = memberid;
        this.diagpeople = diagpeople;
        this.diagdate = diagdate;
        this.drugname = drugname;
    }

    public int getRegistno() {
        return registno;
    }

    public void setRegistno(int registno) {
        this.registno = registno;
    }

    public int getMemberid() {
        return memberid;
    }

    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }

    public String getDiagpeople() {
        return diagpeople;
    }

    public void setDiagpeople(String diagpeople) {
        this.diagpeople = diagpeople;
    }

    public Date getDiagdate() {
        return diagdate;
    }

    public void setDiagdate(Date diagdate) {
        this.diagdate = diagdate;
    }

    public String getDrugname() {
        return drugname;
    }

    public void setDrugname(String drugname) {
        this.drugname = drugname;
    }

    @Override
    public String toString() {
        return "Drugdist{" +
                "registno=" + registno +
                ", memberid=" + memberid +
                ", diagpeople='" + diagpeople + '\'' +
                ", diagdate=" + diagdate +
                ", drugname='" + drugname + '\'' +
                '}';
    }
}
