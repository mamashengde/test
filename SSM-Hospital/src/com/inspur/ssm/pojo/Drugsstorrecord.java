package com.inspur.ssm.pojo;

import java.util.Date;

public class Drugsstorrecord {
    private String id;

    private String drugsid;

    private Long num;

    private Date storagedate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getDrugsid() {
        return drugsid;
    }

    public void setDrugsid(String drugsid) {
        this.drugsid = drugsid == null ? null : drugsid.trim();
    }

    public Long getNum() {
        return num;
    }

    public void setNum(Long num) {
        this.num = num;
    }

    public Date getStoragedate() {
        return storagedate;
    }

    public void setStoragedate(Date storagedate) {
        this.storagedate = storagedate;
    }
}