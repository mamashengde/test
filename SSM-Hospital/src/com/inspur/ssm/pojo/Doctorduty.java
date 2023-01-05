package com.inspur.ssm.pojo;

import java.util.Date;

public class Doctorduty {//01医生值班管理

    private int docid;

    private Date dutydate;

    private int dutyid;

    public Doctorduty() {
    }

    public Doctorduty(int docid, Date dutydate, int dutyid) {
        this.docid = docid;
        this.dutydate = dutydate;
        this.dutyid = dutyid;
    }

    public int getDutyid() {
        return dutyid;
    }

    public void setDutyid(int dutyid) {
        this.dutyid = dutyid;
    }

    public int getDocid() {
        return docid;
    }

    public void setDocid(int docid) {
        this.docid = docid;
    }

    public Date getDutydate() {
        return dutydate;
    }

    public void setDutydate(Date dutydate) {
        this.dutydate = dutydate;
    }


    @Override
    public String toString() {
        return "Doctorduty{" +
                "docid=" + docid +
                ", dutydate=" + dutydate +
                ", dutyid=" + dutyid +
                '}';
    }
}