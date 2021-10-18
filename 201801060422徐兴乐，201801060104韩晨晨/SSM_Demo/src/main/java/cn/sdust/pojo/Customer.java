package cn.sdust.pojo;

import java.io.Serializable;
import java.util.Date;

public class Customer implements Serializable {
    private int encodedId;
    private String name;
    private String categoryId;
    private String encodedOwnerUserId;
    private String lable;
    private String province;
    private String city;
    private String region;
    private Date nextContactDate;
    private Date createDate;
    private String encodedCreateUserId;
    private Date assignDate;
    private Date lastContactDate;
    private String encodedLastContactUserId;
    private String telephone;
    private String phone;
    private String emile;
    private int disA;
    private int disB;
    private int disC;
    public Customer(){

    }

    public Customer(int encodedId, String name, String categoryId, String encodedOwnerUserId, String lable, String province, String city, String region, Date nextContactDate, Date createDate, String encodedCreateUserId, Date assignDate, Date lastContactDate, String encodedLastContactUserId, String telephone, String phone, String emile, int disA, int disB, int disC) {
        this.encodedId = encodedId;
        this.name = name;
        this.categoryId = categoryId;
        this.encodedOwnerUserId = encodedOwnerUserId;
        this.lable = lable;
        this.province = province;
        this.city = city;
        this.region = region;
        this.nextContactDate = nextContactDate;
        this.createDate = createDate;
        this.encodedCreateUserId = encodedCreateUserId;
        this.assignDate = assignDate;
        this.lastContactDate = lastContactDate;
        this.encodedLastContactUserId = encodedLastContactUserId;
        this.telephone = telephone;
        this.phone = phone;
        this.emile = emile;
        this.disA = disA;
        this.disB = disB;
        this.disC = disC;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public int getEncodedId() {
        return encodedId;
    }

    public void setEncodedId(int encodedId) {
        this.encodedId = encodedId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEncodedOwnerUserId() {
        return encodedOwnerUserId;
    }

    public void setEncodedOwnerUserId(String encodedOwnerUserId) {
        this.encodedOwnerUserId = encodedOwnerUserId;
    }

    public String getLable() {
        return lable;
    }

    public void setLable(String lable) {
        this.lable = lable;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public Date getNextContactDate() {
        return nextContactDate;
    }

    public void setNextContactDate(Date nextContactDate) {
        this.nextContactDate = nextContactDate;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getEncodedCreateUserId() {
        return encodedCreateUserId;
    }

    public void setEncodedCreateUserId(String encodedCreateUserId) {
        this.encodedCreateUserId = encodedCreateUserId;
    }

    public Date getAssignDate() {
        return assignDate;
    }

    public void setAssignDate(Date assignDate) {
        this.assignDate = assignDate;
    }

    public Date getLastContactDate() {
        return lastContactDate;
    }

    public void setLastContactDate(Date lastContactDate) {
        this.lastContactDate = lastContactDate;
    }

    public String getEncodedLastContactUserId() {
        return encodedLastContactUserId;
    }

    public void setEncodedLastContactUserId(String encodedLastContactUserId) {
        this.encodedLastContactUserId = encodedLastContactUserId;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmile() {
        return emile;
    }

    public void setEmile(String emile) {
        this.emile = emile;
    }

    public int getDisA() {
        return disA;
    }

    public void setDisA(int disA) {
        this.disA = disA;
    }

    public int getDisB() {
        return disB;
    }

    public void setDisB(int disB) {
        this.disB = disB;
    }

    public int getDisC() {
        return disC;
    }

    public void setDisC(int disC) {
        this.disC = disC;
    }
}
