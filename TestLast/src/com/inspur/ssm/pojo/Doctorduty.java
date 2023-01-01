package com.inspur.ssm.pojo;

import java.util.Date;

public class Doctorduty {
    private String ddid;

    private String docid;

    private Date dutyday;

    public String getDdid() {
        return ddid;
    }

    public void setDdid(String ddid) {
        this.ddid = ddid == null ? null : ddid.trim();
    }

    public String getDocid() {
        return docid;
    }

    public void setDocid(String docid) {
        this.docid = docid == null ? null : docid.trim();
    }

    public Date getDutyday() {
        return dutyday;
    }

    public void setDutyday(Date dutyday) {
        this.dutyday = dutyday;
    }
}