package com.inspur.ssm.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Paymentdetails {
    private String id;

    private String memberid;

    private BigDecimal rechargeamount;

    private BigDecimal balance;

    private String rechargemethod;

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

    public BigDecimal getRechargeamount() {
        return rechargeamount;
    }

    public void setRechargeamount(BigDecimal rechargeamount) {
        this.rechargeamount = rechargeamount;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public String getRechargemethod() {
        return rechargemethod;
    }

    public void setRechargemethod(String rechargemethod) {
        this.rechargemethod = rechargemethod == null ? null : rechargemethod.trim();
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