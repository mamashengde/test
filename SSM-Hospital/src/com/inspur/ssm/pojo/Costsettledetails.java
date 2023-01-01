package com.inspur.ssm.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Costsettledetails {
    private String id;

    private String memberid;

    private String roid;

    private BigDecimal settleamount;

    private String userid;

    private Date createdate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid == null ? null : memberid.trim();
    }

    public String getRoid() {
        return roid;
    }

    public void setRoid(String roid) {
        this.roid = roid == null ? null : roid.trim();
    }

    public BigDecimal getSettleamount() {
        return settleamount;
    }

    public void setSettleamount(BigDecimal settleamount) {
        this.settleamount = settleamount;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }
}