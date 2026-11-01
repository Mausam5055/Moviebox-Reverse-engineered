package com.cloud.hisavana.sdk.data.bean.response;

import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigs;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ConfigTotalDTO {
    private Boolean abTestEnable;
    private List<String> adInternalBlackBrands;
    private Boolean adInternalRequestEnable;
    private Boolean antifraudPowerEnable;
    private String antifraudSubfunctionControl;
    private Integer cdnVersionAddressRequestTimeInterval;
    private Integer clickDataSyncTimeInterval;
    private Integer cloudControlCacheInterval;
    private String cloudControlVersion;
    private List<ConfigCodeSeatDTO> codeSeats;
    private CustomConfigs customConfigs;
    private Integer defaultAdRequestTimeInterval;
    private String extInfo;
    private boolean initPolyGammaEnable;
    private Boolean preConnectEnable;
    private Integer showDataSyncTimeInterval;
    private boolean showTrackingNewPowerEnable;
    private String sspUrl;
    private boolean showRuStyle = false;
    private Boolean initOmIdEnable = Boolean.FALSE;

    /* JADX INFO: loaded from: classes3.dex */
    public static class ExtInfo {
        int oldStyle = 20;
        int scoreStyle = 40;
        int downloadStyle = 40;
        float scoreCount = 4.0f;
        long downloadCount = 100000;
        Boolean requestStatusOff = Boolean.TRUE;
        boolean isUseCustomTabsToOpenLandingPage = false;
        long adReqInterval = 0;
        int clientSamplingRatio = 10;
        boolean enableClientSampling = true;
        int showWebLetterAdPrice = 10;

        public long getAdReqInterval() {
            return this.adReqInterval;
        }

        public int getClientSamplingRatio() {
            return this.clientSamplingRatio;
        }

        public long getDownloadCount() {
            return this.downloadCount;
        }

        public int getDownloadStyle() {
            return this.downloadStyle;
        }

        public int getOldStyle() {
            return this.oldStyle;
        }

        public boolean getRequestStatusOff() {
            Boolean bool = this.requestStatusOff;
            if (bool == null) {
                return true;
            }
            return bool.booleanValue();
        }

        public float getScoreCount() {
            return this.scoreCount;
        }

        public int getScoreStyle() {
            return this.scoreStyle;
        }

        public int getShowWebLetterAdPrice() {
            return this.showWebLetterAdPrice;
        }

        public boolean isEnableClientSampling() {
            return this.enableClientSampling;
        }

        public boolean isUseCustomTabsToOpenLandingPage() {
            return this.isUseCustomTabsToOpenLandingPage;
        }

        public void setClientSamplingRatio(int i11) {
            this.clientSamplingRatio = i11;
        }
    }

    public Boolean getAbTestEnable() {
        Boolean bool = this.abTestEnable;
        return Boolean.valueOf(bool == null ? false : bool.booleanValue());
    }

    public List<String> getAdInternalBlackBrands() {
        return this.adInternalBlackBrands;
    }

    public boolean getAdInternalRequestEnable() {
        Boolean bool = this.adInternalRequestEnable;
        return bool == null || bool.booleanValue();
    }

    public Boolean getAntifraudPowerEnable() {
        return this.antifraudPowerEnable;
    }

    public String getAntifraudSubfunctionControl() {
        return this.antifraudSubfunctionControl;
    }

    public Integer getCdnVersionAddressRequestTimeInterval() {
        Integer num = this.cdnVersionAddressRequestTimeInterval;
        return Integer.valueOf(num == null ? 1440 : num.intValue());
    }

    public Integer getClickDataSyncTimeInterval() {
        Integer num = this.clickDataSyncTimeInterval;
        return Integer.valueOf(num == null ? -1 : num.intValue());
    }

    public Integer getCloudControlCacheInterval() {
        return this.cloudControlCacheInterval;
    }

    public String getCloudControlVersion() {
        return this.cloudControlVersion;
    }

    public List<ConfigCodeSeatDTO> getCodeSeats() {
        return this.codeSeats;
    }

    public CustomConfigs getCustomConfigs() {
        return this.customConfigs;
    }

    public String getExtInfo() {
        return this.extInfo;
    }

    public Boolean getPreConnectEnable() {
        return this.preConnectEnable;
    }

    public Integer getShowDataSyncTimeInterval() {
        Integer num = this.showDataSyncTimeInterval;
        return Integer.valueOf(num == null ? -1 : num.intValue());
    }

    public String getSspUrl() {
        return this.sspUrl;
    }

    public boolean isInitPolyGammaEnable() {
        return this.initPolyGammaEnable;
    }

    public boolean isOmIdEnabled() {
        return this.initOmIdEnable.booleanValue();
    }

    public boolean isShowRuStyle() {
        return this.showRuStyle;
    }

    public boolean isShowTrackingNewPowerEnable() {
        return this.showTrackingNewPowerEnable;
    }

    public void setAbTestEnable(Boolean bool) {
        this.abTestEnable = bool;
    }

    public void setAntifraudPowerEnable(Boolean bool) {
        this.antifraudPowerEnable = bool;
    }

    public void setAntifraudSubfunctionControl(String str) {
        this.antifraudSubfunctionControl = str;
    }

    public void setCdnVersionAddressRequestTimeInterval(Integer num) {
        this.cdnVersionAddressRequestTimeInterval = num;
    }

    public void setClickDataSyncTimeInterval(Integer num) {
        this.clickDataSyncTimeInterval = num;
    }

    public void setCloudControlCacheInterval(Integer num) {
        this.cloudControlCacheInterval = num;
    }

    public void setCloudControlVersion(String str) {
        this.cloudControlVersion = str;
    }

    public void setCodeSeats(List<ConfigCodeSeatDTO> list) {
        this.codeSeats = list;
    }

    public void setCustomConfigs(CustomConfigs customConfigs) {
        this.customConfigs = customConfigs;
    }

    public void setInitPolyGammaEnable(boolean z10) {
        this.initPolyGammaEnable = z10;
    }

    public void setPreConnectEnable(Boolean bool) {
        this.preConnectEnable = bool;
    }

    public void setShowDataSyncTimeInterval(Integer num) {
        this.showDataSyncTimeInterval = num;
    }

    public void setShowTrackingNewPowerEnable(boolean z10) {
        this.showTrackingNewPowerEnable = z10;
    }

    public void setSspUrl(String str) {
        this.sspUrl = str;
    }

    public String toString() {
        return "ConfigTotalDTO{showTrackingNewPowerEnable=" + this.showTrackingNewPowerEnable + ", cloudControlVersion='" + this.cloudControlVersion + "', preConnectEnable=" + this.preConnectEnable + ", codeSeats=" + this.codeSeats + ", cdnVersionAddressRequestTimeInterval=" + this.cdnVersionAddressRequestTimeInterval + ", cloudControlCacheInterval=" + this.cloudControlCacheInterval + ", adInternalBlackBrands=" + this.adInternalBlackBrands + ", showRUStyle=" + this.showRuStyle + ", abTestEnable=" + this.abTestEnable + ", initPolyGammaEnable=" + this.initPolyGammaEnable + ", adInternalRequestEnable=" + this.adInternalRequestEnable + ", showDataSyncTimeInterval=" + this.showDataSyncTimeInterval + ", clickDataSyncTimeInterval=" + this.clickDataSyncTimeInterval + ", initOmIdEnable=" + this.initOmIdEnable.toString() + ", extInfo=" + this.extInfo + ", customConfigs=" + this.customConfigs + '}';
    }
}
