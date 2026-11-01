package com.cloud.hisavana.sdk.data.bean.response;

import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DataDTO {
    private List<AbTestDTO> abTest;
    private String adSeatType;
    private List<AdsDTO> ads;
    private String cloudControlVersion;
    private String codeSeatId;
    private Integer codeSeatType;
    private String extInfo;
    private Integer fullScreenFlag;
    private String gaid;
    private Boolean offlineAd;
    private List<SSPWebRecommendInfo> recommendInfos;
    private String requestId;
    private List<String> scales;
    Integer showTime;
    private Boolean testResponse;
    private String time;
    private Boolean trackingUrlBool;

    public List<AbTestDTO> getAbTest() {
        return this.abTest;
    }

    public String getAdSeatType() {
        return this.adSeatType;
    }

    public List<AdsDTO> getAds() {
        return this.ads;
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

    public Integer getFullScreenFlag() {
        Integer num = this.fullScreenFlag;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getGaid() {
        String str = this.gaid;
        return str == null ? "" : str;
    }

    public Boolean getOfflineAd() {
        Boolean bool = this.offlineAd;
        return Boolean.valueOf(bool != null && bool.booleanValue());
    }

    public List<SSPWebRecommendInfo> getRecommendInfos() {
        return this.recommendInfos;
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

    public Boolean getTestResponse() {
        Boolean bool = this.testResponse;
        return Boolean.valueOf(bool != null && bool.booleanValue());
    }

    public String getTime() {
        String str = this.time;
        return str == null ? "" : str;
    }

    public Boolean getTrackingUrlBool() {
        Boolean bool = this.trackingUrlBool;
        return Boolean.valueOf(bool != null && bool.booleanValue());
    }

    public void setAbTest(List<AbTestDTO> list) {
        this.abTest = list;
    }

    public void setAdSeatType(String str) {
        this.adSeatType = str;
    }

    public void setFullScreenFlag(Integer num) {
        this.fullScreenFlag = num;
    }

    public void setOfflineAd(Boolean bool) {
        this.offlineAd = bool;
    }

    public void setRecommendInfos(List<SSPWebRecommendInfo> list) {
        this.recommendInfos = list;
    }

    public void setScales(List<String> list) {
        this.scales = list;
    }

    public void setShowTime(Integer num) {
        this.showTime = num;
    }

    public void setTestResponse(Boolean bool) {
        this.testResponse = bool;
    }

    public void setTrackingUrlBool(Boolean bool) {
        this.trackingUrlBool = bool;
    }

    public String toString() {
        return "DataDTO{time='" + this.time + "', requestId='" + this.requestId + "', gaid='" + this.gaid + "', codeSeatId='" + this.codeSeatId + "', codeSeatType=" + this.codeSeatType + ", ads=" + this.ads + ", cloudControlVersion='" + this.cloudControlVersion + "', abTest=" + this.abTest + ", extInfo='" + this.extInfo + "', scales= " + this.scales + ", adSeatType= " + this.adSeatType + '}';
    }
}
