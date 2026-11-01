package com.cloud.tmc.ad.bean.response;

import android.text.TextUtils;
import com.cloud.tmc.ad.ps.PsRequestManager;
import com.cloud.tmc.ad.utils.OfflineAdExpiredUtil;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.miniutils.util.GsonUtils;

/* JADX INFO: loaded from: classes3.dex */
public class AdsDTO extends AdsProtocolBean {
    private Long actualShowTime;
    private String appIdExternal;
    String app_id;
    private long clickUrlTs;
    private String clickid;
    private String codeSeatIdExternal;
    private String deepLinkUrlFirst;
    private String filePath;
    private Long fill_ts;
    private Boolean imageIsDownload;
    private String impressionUrl;
    private String industryId;
    private Boolean isACReady;
    private Integer isEffectiveShow;
    Long offlineAdExpireTime;
    String offlineAdLaunchDateStr;
    Long offlineAdStartDateLong;
    private PsRequestManager psRequestManager;
    private String pslinkAppName;
    private long requestPsTs;
    private long returnPsTs;
    private long showDate;
    private Integer showReportTimeType;
    private int source;
    private int tableId;
    private String uuid;
    private ViewJson viewJsonData;
    private Integer splashCountTime = 4;
    private Integer actualShowRate = 0;
    private String showArea = "0*0";
    private Integer adPsType = 1;
    private int calledUrlType = 3;
    private Integer showNum = 0;

    public Boolean getACReady() {
        Boolean bool = this.isACReady;
        return Boolean.valueOf(bool == null ? false : bool.booleanValue());
    }

    public Integer getActualShowRate() {
        Integer num = this.actualShowRate;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public Long getActualShowTime() {
        Long l11 = this.actualShowTime;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public Integer getAdPsType() {
        return this.adPsType;
    }

    public String getAppIdExternal() {
        return this.appIdExternal;
    }

    public String getApp_id() {
        return this.app_id;
    }

    public int getCalledUrlType() {
        return this.calledUrlType;
    }

    public long getClickUrlTs() {
        return this.clickUrlTs;
    }

    public String getClickid() {
        return this.clickid;
    }

    public String getCodeSeatIdExternal() {
        return this.codeSeatIdExternal;
    }

    public String getDeepLinkUrlFirst() {
        String str = this.deepLinkUrlFirst;
        return str == null ? "" : str;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public Long getFill_ts() {
        Long l11 = this.fill_ts;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public Boolean getImageIsDownload() {
        Boolean bool = this.imageIsDownload;
        return Boolean.valueOf(bool == null ? false : bool.booleanValue());
    }

    public String getImpressionUrl() {
        return this.impressionUrl;
    }

    public String getIndustryId() {
        return this.industryId;
    }

    public Integer getIsEffectiveShow() {
        Integer num = this.isEffectiveShow;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public int getMaxShowCount() {
        if (getViewJsonData() == null || getViewJsonData().getOffline() == null) {
            return 0;
        }
        return getViewJsonData().getOffline().getMaxShowPPPD().intValue();
    }

    public Long getOfflineAdExpireTime() {
        Long l11 = this.offlineAdExpireTime;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public String getOfflineAdLaunchDateStr() {
        TraceLog.d(OfflineAdExpiredUtil.TAG, "adsDTO idOfflineAdExpired binaryStr: " + this.offlineAdLaunchDateStr);
        return this.offlineAdLaunchDateStr;
    }

    public Long getOfflineAdStartDateLong() {
        Long l11 = this.offlineAdStartDateLong;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public String getOfflineH5Url() {
        ViewJson viewJsonData = getViewJsonData();
        if (viewJsonData == null) {
            return "";
        }
        if (viewJsonData.getDialogType().intValue() == 1 && viewJsonData.getDialogJson() != null) {
            return viewJsonData.getDialogJson().getUrl();
        }
        if (getViewJsonData() == null || getViewJsonData().getOffline() == null) {
            return "";
        }
        String res = getViewJsonData().getOffline().getRes();
        return TextUtils.isEmpty(res) ? getViewJsonData().getOffline().getZipRes() : res;
    }

    public PsRequestManager getPsRequestManager() {
        return this.psRequestManager;
    }

    public String getPslinkAppName() {
        return this.pslinkAppName;
    }

    public long getRequestPsTs() {
        return this.requestPsTs;
    }

    public long getReturnPsTs() {
        return this.returnPsTs;
    }

    public String getShowArea() {
        return this.showArea;
    }

    public long getShowDate() {
        return this.showDate;
    }

    public Integer getShowNum() {
        Integer num = this.showNum;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public Integer getShowReportTimeType() {
        Integer num = this.showReportTimeType;
        return Integer.valueOf(num == null ? 1 : num.intValue());
    }

    public int getSource() {
        return this.source;
    }

    public Integer getSplashCountTime() {
        Integer num = this.splashCountTime;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public int getTableId() {
        return this.tableId;
    }

    public String getUuid() {
        String str = this.uuid;
        return str == null ? "" : str;
    }

    public ViewJson getViewJsonData() {
        String str = this.viewJson;
        if (str == null) {
            return null;
        }
        if (this.viewJsonData == null) {
            try {
                this.viewJsonData = (ViewJson) GsonUtils.fromJson(str, ViewJson.class);
            } catch (Exception unused) {
            }
        }
        return this.viewJsonData;
    }

    public boolean isH5Zip() {
        ViewJson viewJsonData = getViewJsonData();
        if (viewJsonData == null) {
            return false;
        }
        return ((viewJsonData.getDialogType().intValue() == 1 && viewJsonData.getDialogJson() != null) || getViewJsonData() == null || getViewJsonData().getOffline() == null || !TextUtils.isEmpty(getViewJsonData().getOffline().getRes()) || TextUtils.isEmpty(getViewJsonData().getOffline().getZipRes())) ? false : true;
    }

    public boolean isReachedDisplayTimes() {
        ViewJson viewJsonData = getViewJsonData();
        if (viewJsonData == null || viewJsonData.getOffline() == null) {
            return true;
        }
        TraceLog.d(OfflineAdExpiredUtil.TAG, "id：" + this.f23249id + "，showNum：" + this.showNum + "，data.getOffline().getMaxShowPPPD()" + viewJsonData.getOffline().getMaxShowPPPD());
        if (getShowNum().intValue() + 1 > viewJsonData.getOffline().getMaxShowPPPD().intValue()) {
            return true;
        }
        TraceLog.d(OfflineAdExpiredUtil.TAG, "adsDTO isReachedDisplayTimes false");
        return false;
    }

    public void setACReady(Boolean bool) {
        this.isACReady = bool;
    }

    public void setActualShowRate(Integer num) {
        this.actualShowRate = num;
    }

    public void setActualShowTime(Long l11) {
        this.actualShowTime = l11;
    }

    public void setAdPsType(Integer num) {
        this.adPsType = num;
    }

    public void setAppIdExternal(String str) {
        this.appIdExternal = str;
    }

    public void setApp_id(String str) {
        this.app_id = str;
    }

    public void setCalledUrlType(int i11) {
        this.calledUrlType = i11;
    }

    public void setClickUrlTs(long j11) {
        this.clickUrlTs = j11;
    }

    public void setClickid(String str) {
        this.clickid = str;
    }

    public void setCodeSeatIdExternal(String str) {
        this.codeSeatIdExternal = str;
    }

    public void setDeepLinkUrlFirst(String str) {
        this.deepLinkUrlFirst = str;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setFill_ts(Long l11) {
        this.fill_ts = l11;
    }

    public void setImageIsDownload(Boolean bool) {
        this.imageIsDownload = bool;
    }

    public void setImpressionUrl(String str) {
        this.impressionUrl = str;
    }

    public void setIndustryId(String str) {
        this.industryId = str;
    }

    public void setIsEffectiveShow(Integer num) {
        this.isEffectiveShow = num;
    }

    public void setOfflineAdExpireTime(Long l11) {
        this.offlineAdExpireTime = l11;
    }

    public void setOfflineAdLaunchDateStr(String str) {
        this.offlineAdLaunchDateStr = str;
    }

    public void setOfflineAdStartDateLong(Long l11) {
        this.offlineAdStartDateLong = l11;
    }

    public void setPsRequestManager(PsRequestManager psRequestManager) {
        this.psRequestManager = psRequestManager;
    }

    public void setPslinkAppName(String str) {
        this.pslinkAppName = str;
    }

    public void setRequestPsTs(long j11) {
        this.requestPsTs = j11;
    }

    public void setReturnPsTs(long j11) {
        this.returnPsTs = j11;
    }

    public void setShowArea(String str) {
        this.showArea = str;
    }

    public void setShowDate(long j11) {
        this.showDate = j11;
    }

    public void setShowNum(Integer num) {
        this.showNum = num;
    }

    public void setShowReportTimeType(Integer num) {
        this.showReportTimeType = num;
    }

    public void setSource(int i11) {
        this.source = i11;
    }

    public void setSplashCountTime(Integer num) {
        this.splashCountTime = num;
    }

    public void setTableId(int i11) {
        this.tableId = i11;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setViewJsonData(ViewJson viewJson) {
        this.viewJsonData = viewJson;
    }

    public String toString() {
        return "AdsDTO{fill_ts=" + this.fill_ts + ", uuid='" + this.uuid + "', splashCountTime=" + this.splashCountTime + ", isACReady=" + this.isACReady + ", imageIsDownload=" + this.imageIsDownload + ", deepLinkUrlFirst='" + this.deepLinkUrlFirst + "', actualShowTime=" + this.actualShowTime + ", actualShowRate=" + this.actualShowRate + ", showArea='" + this.showArea + "', isEffectiveShow=" + this.isEffectiveShow + ", showReportTimeType=" + this.showReportTimeType + ", adPsType=" + this.adPsType + ", calledUrlType=" + this.calledUrlType + ", pslinkAppName='" + this.pslinkAppName + "', clickid='" + this.clickid + "', requestPsTs=" + this.requestPsTs + ", returnPsTs=" + this.returnPsTs + ", impressionUrl='" + this.impressionUrl + "', clickUrlTs=" + this.clickUrlTs + ", psRequestManager=" + this.psRequestManager + ", viewJsonData=" + this.viewJsonData + ", filePath='" + this.filePath + "', showDate=" + this.showDate + ", tableId=" + this.tableId + ", source=" + this.source + ", showNum=" + this.showNum + ", offlineAdStartDateLong=" + this.offlineAdStartDateLong + ", offlineAdLaunchDateStr='" + this.offlineAdLaunchDateStr + "', offlineAdExpireTime=" + this.offlineAdExpireTime + ", app_id='" + this.app_id + "', industryId='" + this.industryId + "', appIdExternal='" + this.appIdExternal + "', codeSeatIdExternal='" + this.codeSeatIdExternal + "'}";
    }
}
