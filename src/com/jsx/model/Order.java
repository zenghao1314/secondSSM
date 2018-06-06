package com.jsx.model;

/**
 * created by XX_zh
 * date 2018/5/22 0:25
 * XX_zh Produced, must be fine
 */
public class Order {
    private  int  oid;
    private  int  gid;
    private  int  uid;
    private  String otime;
    private  int  onume;
    private  String oaddress;
    private  String opay;
    private  String oprice;

    public String getOprice() {
        return oprice;
    }

    public void setOprice(String oprice) {
        this.oprice = oprice;
    }

    public String getOtime() {
        return otime;
    }

    public void setOtime(String otime) {
        this.otime = otime;
    }

    public String getOpay() {
        return opay;
    }

    public void setOpay(String opay) {
        this.opay = opay;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getTime() {
        return otime;
    }

    public void setTime(String time) {
        this.otime = time;
    }

    public int getOnume() {
        return onume;
    }

    public void setOnume(int onume) {
        this.onume = onume;
    }

    public String getOaddress() {
        return oaddress;
    }

    public void setOaddress(String oaddress) {
        this.oaddress = oaddress;
    }


}
