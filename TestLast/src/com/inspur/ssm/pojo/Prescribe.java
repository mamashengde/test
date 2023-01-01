package com.inspur.ssm.pojo;

public class Prescribe {
    private String prescribeid;

    private String daid;

    private String roid;

    private String drugsid;

    private Long num;

    private String status;

    private String descs;

    public String getPrescribeid() {
        return prescribeid;
    }

    public void setPrescribeid(String prescribeid) {
        this.prescribeid = prescribeid == null ? null : prescribeid.trim();
    }

    public String getDaid() {
        return daid;
    }

    public void setDaid(String daid) {
        this.daid = daid == null ? null : daid.trim();
    }

    public String getRoid() {
        return roid;
    }

    public void setRoid(String roid) {
        this.roid = roid == null ? null : roid.trim();
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getDescs() {
        return descs;
    }

    public void setDescs(String descs) {
        this.descs = descs == null ? null : descs.trim();
    }
}