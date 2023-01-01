package com.inspur.ssm.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Drugs {
    private String drugsid;

    private String name;

    private BigDecimal price;

    private BigDecimal purchaseprice;

    private Long num;

    private Date introducedate;

    private Date productdate;

    private Date qualityperiod;

    private String supplyunit;

    private String productunit;

    public String getDrugsid() {
        return drugsid;
    }

    public void setDrugsid(String drugsid) {
        this.drugsid = drugsid == null ? null : drugsid.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getPurchaseprice() {
        return purchaseprice;
    }

    public void setPurchaseprice(BigDecimal purchaseprice) {
        this.purchaseprice = purchaseprice;
    }

    public Long getNum() {
        return num;
    }

    public void setNum(Long num) {
        this.num = num;
    }

    public Date getIntroducedate() {
        return introducedate;
    }

    public void setIntroducedate(Date introducedate) {
        this.introducedate = introducedate;
    }

    public Date getProductdate() {
        return productdate;
    }

    public void setProductdate(Date productdate) {
        this.productdate = productdate;
    }

    public Date getQualityperiod() {
        return qualityperiod;
    }

    public void setQualityperiod(Date qualityperiod) {
        this.qualityperiod = qualityperiod;
    }

    public String getSupplyunit() {
        return supplyunit;
    }

    public void setSupplyunit(String supplyunit) {
        this.supplyunit = supplyunit == null ? null : supplyunit.trim();
    }

    public String getProductunit() {
        return productunit;
    }

    public void setProductunit(String productunit) {
        this.productunit = productunit == null ? null : productunit.trim();
    }
}