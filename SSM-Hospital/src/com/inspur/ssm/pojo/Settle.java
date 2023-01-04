package com.inspur.ssm.pojo;

public class Settle {
    private int memberid;
    private String membername;
    private int registno;
    private int balance;
    private int expensetopay;

    public Settle(int memberid, String membername, int registno, int balance, int expensetopay) {
        this.memberid = memberid;
        this.membername = membername;
        this.registno = registno;
        this.balance = balance;
        this.expensetopay = expensetopay;
    }

    public Settle() {
    }

    public int getMemberid() {
        return memberid;
    }

    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }

    public String getMembername() {
        return membername;
    }

    public void setMembername(String membername) {
        this.membername = membername;
    }

    public int getRegistno() {
        return registno;
    }

    public void setRegistno(int registno) {
        this.registno = registno;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public int getExpensetopay() {
        return expensetopay;
    }

    public void setExpensetopay(int expensetopay) {
        this.expensetopay = expensetopay;
    }

    @Override
    public String toString() {
        return "Settle{" +
                "memberid=" + memberid +
                ", membername='" + membername + '\'' +
                ", registno=" + registno +
                ", balance=" + balance +
                ", expensetopay=" + expensetopay +
                '}';
    }
}
