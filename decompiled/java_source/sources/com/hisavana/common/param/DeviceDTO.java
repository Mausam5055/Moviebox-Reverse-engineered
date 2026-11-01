package com.hisavana.common.param;

/* JADX INFO: loaded from: classes.dex */
public class DeviceDTO {
    private String androidIdMd5;
    private String androidIdSha1;
    private String brand;

    @Deprecated
    private String gaid;
    private String gaidNewAES;
    private String imsi;
    private String ipAddress;
    private String language;
    private String maker;
    private String model;
    private String networkConnectionType;
    public String oneid;
    private String operatorType;
    private int osType;
    private String osVersion;
    private int screenDensity;
    private int screenHeight;
    private int screenWidth;
    private Long totalRam;
    private int type;

    public String getAndroidIdMd5() {
        return this.androidIdMd5;
    }

    public String getAndroidIdSha1() {
        return this.androidIdSha1;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getGaid() {
        return this.gaid;
    }

    public String getGaidNewAES() {
        return this.gaidNewAES;
    }

    public String getImsi() {
        return this.imsi;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getMaker() {
        return this.maker;
    }

    public String getModel() {
        return this.model;
    }

    public String getNetworkConnectionType() {
        return this.networkConnectionType;
    }

    public String getOneid() {
        return this.oneid;
    }

    public String getOperatorType() {
        return this.operatorType;
    }

    public int getOsType() {
        return this.osType;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public int getScreenDensity() {
        return this.screenDensity;
    }

    public int getScreenHeight() {
        return this.screenHeight;
    }

    public int getScreenWidth() {
        return this.screenWidth;
    }

    public int getType() {
        return this.type;
    }

    public void setAndroidIdMd5(String str) {
        this.androidIdMd5 = str;
    }

    public void setAndroidIdSha1(String str) {
        this.androidIdSha1 = str;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setGaid(String str) {
        this.gaid = str;
    }

    public void setGaidNewAES(String str) {
        this.gaidNewAES = str;
    }

    public void setImsi(String str) {
        this.imsi = str;
    }

    public void setIpAddress(String str) {
        this.ipAddress = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setMaker(String str) {
        this.maker = str;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setNetworkConnectionType(String str) {
        this.networkConnectionType = str;
    }

    public void setOneid(String str) {
        this.oneid = str;
    }

    public void setOperatorType(String str) {
        this.operatorType = str;
    }

    public void setOsType(int i11) {
        this.osType = i11;
    }

    public void setOsVersion(String str) {
        this.osVersion = str;
    }

    public void setScreenDensity(int i11) {
        this.screenDensity = i11;
    }

    public void setScreenHeight(int i11) {
        this.screenHeight = i11;
    }

    public void setScreenWidth(int i11) {
        this.screenWidth = i11;
    }

    public void setTotalRam(Long l11) {
        this.totalRam = l11;
    }

    public void setType(int i11) {
        this.type = i11;
    }
}
