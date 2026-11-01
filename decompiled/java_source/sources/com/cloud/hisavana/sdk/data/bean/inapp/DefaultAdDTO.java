package com.cloud.hisavana.sdk.data.bean.inapp;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultAdDTO {
    private Integer adActivationRewardTime;
    private String adBeanJson;
    private String adChoiceImageUrl;
    private String adCreativeId;
    private int adRequestVersion;
    private Integer adType;
    private String appInfo;
    private int autoRetentionTime;
    private String brandBlack;
    private String brandWhite;
    private String button;
    private String campaignname;
    private ArrayList<String> clickTrackingUrls;
    private String clickUrls;
    private String codeSeatId;
    private String countryBlack;
    private String countryWhite;
    private String deepLinkUrl;
    private String description;
    private String displayedDate;
    private int displayedTimes;
    private int downloadArea;
    private String endDate;
    private String filePath;
    private Double firstPrice;
    private String logoUrl;
    private String mainIngUrl;
    private Integer materialHeight;
    private String materialStyle;
    private Integer materialType;
    private Integer materialWidth;
    private String packageName;
    private String pageUrl;
    private ArrayList<String> psClickTrackingUrls;
    private Integer pullNewestLive;
    private Integer rating;
    private Integer rewardDuration;
    private String scale;
    private String settlementRatio;
    private Integer showMaxOfDay;
    private Integer showTime;
    private String showTrackingSecretKey;
    private ArrayList<String> showTrackingUrls;
    private String startDate;
    private Integer supportNetType;
    private String title;
    private Integer trackType;

    public Integer getAdActivationRewardTime() {
        Integer num = this.adActivationRewardTime;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getAdBeanJson() {
        return this.adBeanJson;
    }

    public String getAdChoiceImageUrl() {
        return this.adChoiceImageUrl;
    }

    public String getAdCreativeId() {
        String str = this.adCreativeId;
        return str == null ? "" : str;
    }

    public int getAdRequestVersion() {
        return this.adRequestVersion;
    }

    public int getAdType() {
        Integer num = this.adType;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String getAppInfo() {
        return this.appInfo;
    }

    public int getAutoRetentionTime() {
        return this.autoRetentionTime;
    }

    public String getBrandBlack() {
        return this.brandBlack;
    }

    public String getBrandWhite() {
        return this.brandWhite;
    }

    public String getButton() {
        return this.button;
    }

    public String getCampaignname() {
        return this.campaignname;
    }

    public ArrayList<String> getClickTrackingUrls() {
        return this.clickTrackingUrls;
    }

    public String getClickUrls() {
        return this.clickUrls;
    }

    public String getCodeSeatId() {
        return this.codeSeatId;
    }

    public String getCountryBlack() {
        return this.countryBlack;
    }

    public String getCountryWhite() {
        return this.countryWhite;
    }

    public String getDeepLinkUrl() {
        return this.deepLinkUrl;
    }

    public String getDescription() {
        return this.description;
    }

    public String getDisplayedDate() {
        return this.displayedDate;
    }

    public int getDisplayedTimes() {
        return this.displayedTimes;
    }

    public int getDownloadArea() {
        return this.downloadArea;
    }

    public String getEndDate() {
        return this.endDate;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public Double getFirstPrice() {
        Double d11 = this.firstPrice;
        return Double.valueOf(d11 == null ? 0.0d : d11.doubleValue());
    }

    public String getLogoUrl() {
        return this.logoUrl;
    }

    public String getMainIngUrl() {
        return this.mainIngUrl;
    }

    public int getMaterialHeight() {
        Integer num = this.materialHeight;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String getMaterialStyle() {
        return this.materialStyle;
    }

    public Integer getMaterialType() {
        Integer num = this.materialType;
        return Integer.valueOf(num == null ? 1 : num.intValue());
    }

    public int getMaterialWidth() {
        Integer num = this.materialWidth;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPageUrl() {
        return this.pageUrl;
    }

    public ArrayList<String> getPsClickTrackingUrls() {
        return this.psClickTrackingUrls;
    }

    public int getPullNewestLive() {
        Integer num = this.pullNewestLive;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public int getRating() {
        Integer num = this.rating;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public int getRewardDuration() {
        Integer num = this.rewardDuration;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String getScale() {
        return this.scale;
    }

    public String getSettlementRatio() {
        return this.settlementRatio;
    }

    public int getShowMaxOfDay() {
        Integer num = this.showMaxOfDay;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public Integer getShowTime() {
        Integer num = this.showTime;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getShowTrackingSecretKey() {
        return this.showTrackingSecretKey;
    }

    public ArrayList<String> getShowTrackingUrls() {
        return this.showTrackingUrls;
    }

    public String getStartDate() {
        return this.startDate;
    }

    public int getSupportNetType() {
        Integer num = this.supportNetType;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String getTitle() {
        return this.title;
    }

    public int getTrackType() {
        Integer num = this.trackType;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public void setAdActivationRewardTime(Integer num) {
        this.adActivationRewardTime = num;
    }

    public void setAdBeanJson(String str) {
        this.adBeanJson = str;
    }

    public void setAdCreativeId(String str) {
        this.adCreativeId = str;
    }

    public void setAdRequestVersion(int i11) {
        this.adRequestVersion = i11;
    }

    public void setAdType(Integer num) {
        this.adType = num;
    }

    public void setAppInfo(String str) {
        this.appInfo = str;
    }

    public void setAutoRetentionTime(int i11) {
        this.autoRetentionTime = i11;
    }

    public void setBrandBlack(String str) {
        this.brandBlack = str;
    }

    public void setBrandWhite(String str) {
        this.brandWhite = str;
    }

    public void setButton(String str) {
        this.button = str;
    }

    public void setCampaignname(String str) {
        this.campaignname = str;
    }

    public void setCodeSeatId(String str) {
        this.codeSeatId = str;
    }

    public void setCountryBlack(String str) {
        this.countryBlack = str;
    }

    public void setCountryWhite(String str) {
        this.countryWhite = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDisplayedDate(String str) {
        this.displayedDate = str;
    }

    public void setDisplayedTimes(int i11) {
        this.displayedTimes = i11;
    }

    public void setDownloadArea(int i11) {
        this.downloadArea = i11;
    }

    public void setEndDate(String str) {
        this.endDate = str;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setFirstPrice(Double d11) {
        this.firstPrice = d11;
    }

    public void setMaterialStyle(String str) {
        this.materialStyle = str;
    }

    public void setPageUrl(String str) {
        this.pageUrl = str;
    }

    public void setShowMaxOfDay(int i11) {
        this.showMaxOfDay = Integer.valueOf(i11);
    }

    public void setStartDate(String str) {
        this.startDate = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
