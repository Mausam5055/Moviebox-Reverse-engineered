package com.cloud.tmc.ad.bean.response;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DataDTO implements Serializable {
    private List<AbTestDTO> abTest;
    private String adSeatType;
    private List<AdsDTO> ads;
    private Integer cacheTime;
    private String cloudControlVersion;
    private String codeSeatId;
    private Integer codeSeatType;
    private String extInfo;
    private String gaid;
    private Boolean isLandingPage;
    private Boolean offlineAd;
    private String requestId;
    private List<String> scales;
    Integer showTime;
    private String time;

    public List<AbTestDTO> getAbTest() {
        return this.abTest;
    }

    public String getAdSeatType() {
        return this.adSeatType;
    }

    public List<AdsDTO> getAds() {
        return this.ads;
    }

    public Integer getCacheTime() {
        Integer num = this.cacheTime;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getCloudControlVersion() {
        String str = this.cloudControlVersion;
        return str == null ? "" : str;
    }

    public String getCodeSeatId() {
        String str = this.codeSeatId;
        return str == null ? "" : str;
    }

    public Integer getCodeSeatType() {
        Integer num = this.codeSeatType;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getExtInfo() {
        String str = this.extInfo;
        return str == null ? "" : str;
    }

    public String getGaid() {
        String str = this.gaid;
        return str == null ? "" : str;
    }

    public Boolean getIsLandingPage() {
        return this.isLandingPage;
    }

    public Boolean getOfflineAd() {
        Boolean bool = this.offlineAd;
        return Boolean.valueOf(bool != null && bool.booleanValue());
    }

    public String getRequestId() {
        String str = this.requestId;
        return str == null ? "" : str;
    }

    public List<String> getScales() {
        return this.scales;
    }

    public Integer getShowTime() {
        Integer num = this.showTime;
        return Integer.valueOf(num == null ? 4 : num.intValue());
    }

    public String getTime() {
        String str = this.time;
        return str == null ? "" : str;
    }

    public void setAdSeatType(String str) {
        this.adSeatType = str;
    }

    public void setIsLandingPage(Boolean bool) {
        this.isLandingPage = bool;
    }

    public void setOfflineAd(Boolean bool) {
        this.offlineAd = bool;
    }

    public void setScales(List<String> list) {
        this.scales = list;
    }

    public void setShowTime(Integer num) {
        this.showTime = num;
    }

    public String toString() {
        return "DataDTO{time='" + this.time + "', requestId='" + this.requestId + "', gaid='" + this.gaid + "', codeSeatId='" + this.codeSeatId + "', codeSeatType=" + this.codeSeatType + ", cacheTime=" + this.cacheTime + ", ads=" + this.ads + ", cloudControlVersion='" + this.cloudControlVersion + "', abTest=" + this.abTest + ", extInfo='" + this.extInfo + "', scales= " + this.scales + ", adSeatType= " + this.adSeatType + ", isLandingPage= " + this.isLandingPage + '}';
    }
}
