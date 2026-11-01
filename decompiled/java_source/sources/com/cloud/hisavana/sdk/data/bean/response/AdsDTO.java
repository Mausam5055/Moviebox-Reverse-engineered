package com.cloud.hisavana.sdk.data.bean.response;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.util.i0;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.k1;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.e;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AdsDTO extends AdsProtocolBean implements Parcelable, Cloneable {
    public static final Parcelable.Creator<AdsDTO> CREATOR = new Parcelable.Creator<AdsDTO>() { // from class: com.cloud.hisavana.sdk.data.bean.response.AdsDTO.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdsDTO createFromParcel(Parcel parcel) {
            return new AdsDTO(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdsDTO[] newArray(int i11) {
            return new AdsDTO[i11];
        }
    };
    private Integer actualShowRate;
    private Long actualShowTime;
    private Integer adPsType;
    private int adRequestVer;
    private String adSeatType;
    private long adclickTimeStamp;
    private int autoRetentionTime;
    private int bannerStyle;
    private int calledUrlType;
    private String campaignname;
    private long clickUrlTs;
    private String click_link;
    private String clickid;
    private int closeDelayTime;
    private String deepLinkUrlFirst;
    private int defaultAdSupportNetType;
    private int defaultMaterialType;
    private int downloadArea;
    private int endCardType;
    private String expiredDate;
    private String filePath;
    private Long fill_ts;
    private String halfScreenType;
    private Boolean imageIsDownload;
    private AdxImpBean impBeanRequest;
    private String impressionUrl;
    private String indexLocation;
    private Boolean isACReady;
    private boolean isAdClickTracking;
    private Integer isEffectiveShow;
    private boolean isFromJs;
    private boolean isFromLocal;
    private boolean isJumpToHalfscreen;
    private boolean isMatchVulgarBrand;
    private boolean isOptimizeTracking;
    private boolean isShowSourceSize;
    private boolean isUpdateClickUrl;
    private boolean isVastDownloadSuccess;
    private boolean isVastTypeAd;
    private String jsCodeSeatId;
    private String jsMediaId;
    private String jsRequestId;
    private String jsTriggerId;
    private int materialHeight;
    private int materialWith;
    Long offlineAdExpireTime;
    String offlineAdLaunchDateStr;
    Long offlineAdStartDateLong;
    private int preloadStatus;
    private String pslinkAppName;
    private PslinkInfo pslinkInfo;
    private String realLandUrl;
    private long requestPsTs;
    private int retentionEndCardRatio;
    private long returnPsTs;
    private String showArea;
    private long showDate;
    private Integer showNum;
    private boolean showPsFlag;
    private Integer showReportTimeType;
    private int source;
    private Integer splashCountTime;
    private int tableId;
    private int trackUserClickArea;
    private long triggerShowSpend;
    private String uuid;
    private VastData videoInfo;
    private int viewHeight;
    private ViewJson viewJsonData;
    private int viewWidth;

    public AdsDTO() {
        this.splashCountTime = 4;
        this.actualShowRate = 0;
        this.showArea = "0*0";
        this.adPsType = 1;
        this.calledUrlType = 3;
        this.showNum = 0;
        this.isUpdateClickUrl = false;
        this.defaultMaterialType = 1;
        this.isFromLocal = true;
        this.materialWith = 0;
        this.materialHeight = 0;
        this.triggerShowSpend = 0L;
        this.bannerStyle = -1;
        this.closeDelayTime = 0;
        this.retentionEndCardRatio = 0;
        this.endCardType = 0;
        this.isAdClickTracking = true;
        this.adclickTimeStamp = 0L;
        this.trackUserClickArea = 0;
    }

    protected AdsDTO(Parcel parcel) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        super(parcel);
        this.splashCountTime = 4;
        this.actualShowRate = 0;
        this.showArea = "0*0";
        this.adPsType = 1;
        this.calledUrlType = 3;
        this.showNum = 0;
        this.isUpdateClickUrl = false;
        this.defaultMaterialType = 1;
        this.isFromLocal = true;
        this.materialWith = 0;
        this.materialHeight = 0;
        this.triggerShowSpend = 0L;
        this.bannerStyle = -1;
        this.closeDelayTime = 0;
        this.retentionEndCardRatio = 0;
        this.endCardType = 0;
        this.isAdClickTracking = true;
        this.adclickTimeStamp = 0L;
        this.trackUserClickArea = 0;
        this.impBeanRequest = (AdxImpBean) parcel.readParcelable(AdxImpBean.class.getClassLoader());
        if (parcel.readByte() == 0) {
            this.fill_ts = null;
        } else {
            this.fill_ts = Long.valueOf(parcel.readLong());
        }
        this.uuid = parcel.readString();
        if (parcel.readByte() == 0) {
            this.splashCountTime = null;
        } else {
            this.splashCountTime = Integer.valueOf(parcel.readInt());
        }
        byte b11 = parcel.readByte();
        if (b11 == 0) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(b11 == 1);
        }
        this.isACReady = boolValueOf;
        byte b12 = parcel.readByte();
        if (b12 == 0) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(b12 == 1);
        }
        this.imageIsDownload = boolValueOf2;
        this.deepLinkUrlFirst = parcel.readString();
        if (parcel.readByte() == 0) {
            this.actualShowTime = null;
        } else {
            this.actualShowTime = Long.valueOf(parcel.readLong());
        }
        if (parcel.readByte() == 0) {
            this.actualShowRate = null;
        } else {
            this.actualShowRate = Integer.valueOf(parcel.readInt());
        }
        this.showArea = parcel.readString();
        if (parcel.readByte() == 0) {
            this.isEffectiveShow = null;
        } else {
            this.isEffectiveShow = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.showReportTimeType = null;
        } else {
            this.showReportTimeType = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.adPsType = null;
        } else {
            this.adPsType = Integer.valueOf(parcel.readInt());
        }
        this.calledUrlType = parcel.readInt();
        this.pslinkAppName = parcel.readString();
        this.clickid = parcel.readString();
        this.requestPsTs = parcel.readLong();
        this.returnPsTs = parcel.readLong();
        this.impressionUrl = parcel.readString();
        this.clickUrlTs = parcel.readLong();
        this.adSeatType = parcel.readString();
        this.viewJsonData = (ViewJson) parcel.readParcelable(ViewJson.class.getClassLoader());
        this.filePath = parcel.readString();
        this.showDate = parcel.readLong();
        this.tableId = parcel.readInt();
        this.source = parcel.readInt();
        if (parcel.readByte() == 0) {
            this.showNum = null;
        } else {
            this.showNum = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.offlineAdStartDateLong = null;
        } else {
            this.offlineAdStartDateLong = Long.valueOf(parcel.readLong());
        }
        this.offlineAdLaunchDateStr = parcel.readString();
        if (parcel.readByte() == 0) {
            this.offlineAdExpireTime = null;
        } else {
            this.offlineAdExpireTime = Long.valueOf(parcel.readLong());
        }
        this.showPsFlag = parcel.readByte() != 0;
        this.click_link = parcel.readString();
        this.pslinkInfo = (PslinkInfo) parcel.readParcelable(PslinkInfo.class.getClassLoader());
        this.isJumpToHalfscreen = parcel.readByte() != 0;
        this.isUpdateClickUrl = parcel.readByte() != 0;
        this.videoInfo = (VastData) parcel.readParcelable(VastData.class.getClassLoader());
        this.isVastTypeAd = parcel.readByte() != 0;
        this.viewHeight = parcel.readInt();
        this.viewWidth = parcel.readInt();
        this.isOptimizeTracking = parcel.readByte() != 0;
        this.indexLocation = parcel.readString();
        this.jsTriggerId = parcel.readString();
        this.halfScreenType = parcel.readString();
        this.isVastDownloadSuccess = parcel.readByte() != 0;
        this.adRequestVer = parcel.readInt();
        this.expiredDate = parcel.readString();
        this.campaignname = parcel.readString();
        this.defaultMaterialType = parcel.readInt();
        this.isFromLocal = parcel.readByte() != 0;
        this.materialWith = parcel.readInt();
        this.materialHeight = parcel.readInt();
        this.isMatchVulgarBrand = parcel.readByte() != 0;
        this.triggerShowSpend = parcel.readLong();
        this.isFromJs = parcel.readByte() != 0;
        this.defaultAdSupportNetType = parcel.readInt();
        this.closeDelayTime = parcel.readInt();
        this.retentionEndCardRatio = parcel.readInt();
        this.endCardType = parcel.readInt();
        this.isAdClickTracking = parcel.readByte() != 0;
        this.adclickTimeStamp = parcel.readLong();
        this.autoRetentionTime = parcel.readInt();
        this.downloadArea = parcel.readInt();
        this.trackUserClickArea = parcel.readInt();
        this.isShowSourceSize = parcel.readByte() != 0;
        this.realLandUrl = parcel.readString();
        this.preloadStatus = parcel.readInt();
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AdsDTO m232clone() {
        try {
            return (AdsDTO) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override // com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Boolean getACReady() {
        Boolean bool = this.isACReady;
        return Boolean.valueOf(bool != null && bool.booleanValue());
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

    public int getAdRequestVer() {
        return this.adRequestVer;
    }

    public String getAdSeatType() {
        return this.adSeatType;
    }

    public int getAdType() {
        AdxImpBean adxImpBean = this.impBeanRequest;
        if (adxImpBean == null) {
            return 0;
        }
        return adxImpBean.adt;
    }

    public int getAutoRetentionTime() {
        return this.autoRetentionTime;
    }

    public int getBannerStyle() {
        return this.bannerStyle;
    }

    public int getCalledUrlType() {
        return this.calledUrlType;
    }

    public String getCampaignname() {
        return this.campaignname;
    }

    public long getClickUrlTs() {
        return this.clickUrlTs;
    }

    public String getClick_link() {
        String str = this.click_link;
        return str == null ? "" : str;
    }

    public String getClickid() {
        return this.clickid;
    }

    public int getCloseDelayTime() {
        return this.closeDelayTime;
    }

    public String getCodeSeatId() {
        AdxImpBean adxImpBean = this.impBeanRequest;
        return adxImpBean != null ? adxImpBean.pmid : "";
    }

    public Integer getCodeSeatType() {
        AdxImpBean adxImpBean = this.impBeanRequest;
        if (adxImpBean != null) {
            return Integer.valueOf(adxImpBean.adt);
        }
        return -1;
    }

    public String getDeepLinkUrlFirst() {
        String str = this.deepLinkUrlFirst;
        return str == null ? "" : str;
    }

    public int getDefaultAdSupportNetType() {
        return this.defaultAdSupportNetType;
    }

    public int getDefaultMaterialType() {
        return this.defaultMaterialType;
    }

    public Constants.AdDisplayRule getDisplayRule() {
        if (k1.o().s() && getAdType() != 2 && getRuData() != null) {
            return Constants.AdDisplayRule.RU;
        }
        return Constants.AdDisplayRule.UNIVERSAL;
    }

    public int getDownloadArea() {
        return this.downloadArea;
    }

    public int getEndCardType() {
        return this.endCardType;
    }

    public String getExpiredDate() {
        return this.expiredDate;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public Long getFill_ts() {
        Long l11 = this.fill_ts;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public String getHalfScreenType() {
        if (TextUtils.isEmpty(this.halfScreenType)) {
            ArrayList<String> arrayList = this.storeDeeplink;
            if (arrayList == null || arrayList.isEmpty()) {
                return "";
            }
            for (String str : this.storeDeeplink) {
                if (!TextUtils.isEmpty(str) && str.contains("HalfScreenType") && str.contains("palmplay")) {
                    try {
                        Uri uri = Uri.parse(str);
                        if (uri != null) {
                            this.halfScreenType = uri.getQueryParameter("HalfScreenType");
                        }
                    } catch (Exception e11) {
                        e4.b().e("getHalfScreenType error : " + Log.getStackTraceString(e11));
                    }
                    return this.halfScreenType;
                }
            }
        }
        return this.halfScreenType;
    }

    public Boolean getImageIsDownload() {
        Boolean bool = this.imageIsDownload;
        return Boolean.valueOf(bool != null && bool.booleanValue());
    }

    public AdxImpBean getImpBeanRequest() {
        return this.impBeanRequest;
    }

    public String getImpressionUrl() {
        return this.impressionUrl;
    }

    public String getIndexLocation() {
        return this.indexLocation;
    }

    public Integer getIsEffectiveShow() {
        Integer num = this.isEffectiveShow;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getJsCodeSeatId() {
        String str = this.jsCodeSeatId;
        return str == null ? "" : str;
    }

    public String getJsMediaId() {
        String str = this.jsMediaId;
        return str == null ? "" : str;
    }

    public String getJsRequestId() {
        String str = this.jsRequestId;
        return str == null ? "" : str;
    }

    public String getJsTriggerId() {
        return this.jsTriggerId;
    }

    public int getMaterialHeight() {
        return this.materialHeight;
    }

    public int getMaterialWith() {
        return this.materialWith;
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

    public List<AdsProtocolBean.OmIdData> getOmIdVerifications() {
        if (getExt() == null) {
            return null;
        }
        return getExt().getOmSdkVerifications();
    }

    public int getPreloadStatus() {
        return this.preloadStatus;
    }

    public String getPslinkAppName() {
        return this.pslinkAppName;
    }

    public PslinkInfo getPslinkInfo() {
        return this.pslinkInfo;
    }

    public boolean getPslinkInfoStatus() {
        return isHalfScreenAd() && i0.f(e.a());
    }

    public String getRealLandUrl() {
        return this.realLandUrl;
    }

    public long getRequestPsTs() {
        return this.requestPsTs;
    }

    public int getRequestType() {
        AdxImpBean adxImpBean = this.impBeanRequest;
        if (adxImpBean != null) {
            return adxImpBean.requestType;
        }
        return -1;
    }

    public int getRetentionEndCardRatio() {
        return this.retentionEndCardRatio;
    }

    public long getReturnPsTs() {
        return this.returnPsTs;
    }

    public String getRid() {
        AdxImpBean adxImpBean = this.impBeanRequest;
        return adxImpBean != null ? adxImpBean.requestId : "";
    }

    public AdsProtocolBean.RUComplianceData getRuData() {
        if (getExt() == null) {
            return null;
        }
        return getExt().getRuCompliance();
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

    public boolean getShowSourceSize() {
        return this.isShowSourceSize;
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

    public int getTrackUserClickArea() {
        return this.trackUserClickArea;
    }

    public String getTriggerId() {
        String str;
        AdxImpBean adxImpBean = this.impBeanRequest;
        return (adxImpBean == null || (str = adxImpBean.triggerId) == null) ? "" : str;
    }

    public long getTriggerShowSpend() {
        return this.triggerShowSpend;
    }

    public String getUuid() {
        String str = this.uuid;
        return str == null ? "" : str;
    }

    public VastData getVideoInfo() {
        return this.videoInfo;
    }

    public int getViewHeight() {
        return this.viewHeight;
    }

    public ViewJson getViewJsonData() {
        String str = this.viewJson;
        if (str == null) {
            return null;
        }
        try {
            this.viewJsonData = (ViewJson) GsonUtil.a(str, ViewJson.class);
        } catch (Exception e11) {
            e4.b().e("ssp", Log.getStackTraceString(e11));
        }
        return this.viewJsonData;
    }

    public int getViewWidth() {
        return this.viewWidth;
    }

    public boolean isAdmNormalClick() {
        if (!TextUtils.isEmpty(this.clickUrl) || !TextUtils.isEmpty(this.packageName) || !TextUtils.isEmpty(this.pslinkAppName) || !TextUtils.isEmpty(this.psPackageName) || !TextUtils.isEmpty(this.psLink)) {
            return false;
        }
        ArrayList<String> arrayList = this.storeDeeplink;
        return arrayList == null || arrayList.isEmpty();
    }

    public boolean isAllowTrackingADClick() {
        if (this.isAdClickTracking) {
            return true;
        }
        if (this.adclickTimeStamp == 0) {
            e4.b().d("ssp", "click data error, allow tracking");
            return true;
        }
        if (System.currentTimeMillis() - this.adclickTimeStamp <= 10000) {
            return false;
        }
        e4.b().d("ssp", "click the timestamp for more than 10 seconds, allow tracking");
        return true;
    }

    public boolean isDownloadAd() {
        if (TextUtils.isEmpty(this.packageName)) {
            return !TextUtils.isEmpty(this.psPackageName);
        }
        return true;
    }

    public boolean isFromJs() {
        return this.isFromJs;
    }

    public boolean isFromLocal() {
        return this.isFromLocal;
    }

    public boolean isH5Zip() {
        ViewJson viewJsonData = getViewJsonData();
        if (viewJsonData == null) {
            return false;
        }
        return ((viewJsonData.getDialogType().intValue() == 1 && viewJsonData.getDialogJson() != null) || getViewJsonData() == null || getViewJsonData().getOffline() == null || !TextUtils.isEmpty(viewJsonData.getOffline().getRes()) || TextUtils.isEmpty(viewJsonData.getOffline().getZipRes())) ? false : true;
    }

    public boolean isHalfScreenAd() {
        PslinkInfo pslinkInfo = this.pslinkInfo;
        return (pslinkInfo == null || pslinkInfo.getImgList() == null || this.pslinkInfo.getImgList().isEmpty()) ? false : true;
    }

    public boolean isJumpToHalfscreen() {
        return this.isJumpToHalfscreen;
    }

    public boolean isMatchVulgarBrand() {
        return this.isMatchVulgarBrand;
    }

    public boolean isOptimizeTracking() {
        return this.isOptimizeTracking;
    }

    public boolean isPsAd() {
        AdsProtocolBean.Ext ext = this.ext;
        return ext != null && ext.getStoreFlag().intValue() == 1;
    }

    public boolean isUpdateClickUrl() {
        return this.isUpdateClickUrl;
    }

    public boolean isVastDownloadSuccess() {
        return this.isVastDownloadSuccess;
    }

    public boolean isVastTypeAd() {
        return this.isVastTypeAd;
    }

    public boolean judgeOptimizeTracking() {
        if ((TextUtils.isEmpty(this.packageName) && TextUtils.isEmpty(this.psPackageName)) || getDspType().intValue() == 2) {
            return false;
        }
        return this.isOptimizeTracking;
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

    public void setAdClickTracking(boolean z10) {
        this.isAdClickTracking = z10;
        if (z10) {
            return;
        }
        this.adclickTimeStamp = System.currentTimeMillis();
    }

    public void setAdPsType(Integer num) {
        this.adPsType = num;
    }

    public void setAdRequestVer(int i11) {
        this.adRequestVer = i11;
    }

    public void setAdSeatType(String str) {
        this.adSeatType = str;
    }

    public void setAutoRetentionTime(int i11) {
        this.autoRetentionTime = i11;
    }

    public void setBannerStyle(int i11) {
        this.bannerStyle = i11;
    }

    public void setCalledUrlType(int i11) {
        this.calledUrlType = i11;
    }

    public void setCampaignname(String str) {
        this.campaignname = str;
    }

    public void setClickUrlTs(long j11) {
        this.clickUrlTs = j11;
    }

    public void setClick_link(String str) {
        this.click_link = str;
    }

    public void setClickid(String str) {
        this.clickid = str;
    }

    public void setCloseDelayTime(int i11) {
        this.closeDelayTime = i11;
    }

    public void setDeepLinkUrlFirst(String str) {
        this.deepLinkUrlFirst = str;
    }

    public void setDefaultAdSupportNetType(int i11) {
        this.defaultAdSupportNetType = i11;
    }

    public void setDefaultMaterialType(int i11) {
        this.defaultMaterialType = i11;
    }

    public void setDownloadArea(int i11) {
        this.downloadArea = i11;
    }

    public void setEndCardType(int i11) {
        this.endCardType = i11;
    }

    public void setExpiredDate(String str) {
        this.expiredDate = str;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setFill_ts(Long l11) {
        this.fill_ts = l11;
    }

    public void setFromJs(boolean z10) {
        this.isFromJs = z10;
    }

    public void setFromLocal(boolean z10) {
        this.isFromLocal = z10;
    }

    public void setImageIsDownload(Boolean bool) {
        this.imageIsDownload = bool;
    }

    public void setImpBeanRequest(AdxImpBean adxImpBean) {
        this.impBeanRequest = adxImpBean;
    }

    public void setImpressionUrl(String str) {
        this.impressionUrl = str;
    }

    public void setIndexLocation(String str) {
        this.indexLocation = str;
    }

    public void setIsEffectiveShow(Integer num) {
        this.isEffectiveShow = num;
    }

    public void setJsTriggerId(String str) {
        this.jsTriggerId = str;
    }

    public void setJumpToHalfscreen(boolean z10) {
        this.isJumpToHalfscreen = z10;
    }

    public void setMatchVulgarBrand(boolean z10) {
        this.isMatchVulgarBrand = z10;
    }

    public void setMaterialHeight(int i11) {
        this.materialHeight = i11;
    }

    public void setMaterialWith(int i11) {
        this.materialWith = i11;
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

    public void setOmSdkVerifications(List<AdsProtocolBean.OmIdData> list) {
        if (getExt() != null) {
            getExt().setOmSdkVerifications(list);
        }
    }

    public void setOptimizeTracking(boolean z10) {
        this.isOptimizeTracking = z10;
    }

    public void setPreloadStatus(int i11) {
        this.preloadStatus = i11;
    }

    public void setPslinkAppName(String str) {
        this.pslinkAppName = str;
    }

    public void setPslinkInfo(PslinkInfo pslinkInfo) {
        this.pslinkInfo = pslinkInfo;
    }

    public void setRealLandUrl(String str) {
        this.realLandUrl = str;
    }

    public void setRequestPsTs(long j11) {
        this.requestPsTs = j11;
    }

    public void setRetentionEndCardRatio(int i11) {
        this.retentionEndCardRatio = i11;
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

    public void setShowSourceSize(boolean z10) {
        this.isShowSourceSize = z10;
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

    public void setTrackUserClickArea(int i11) {
        this.trackUserClickArea = i11;
    }

    public void setTriggerId(String str) {
        AdxImpBean adxImpBean = this.impBeanRequest;
        if (adxImpBean != null) {
            adxImpBean.triggerId = str;
        }
    }

    public void setTriggerShowSpend(long j11) {
        this.triggerShowSpend = j11;
    }

    public void setUpdateClickUrl(boolean z10) {
        this.isUpdateClickUrl = z10;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setVastDownloadSuccess(boolean z10) {
        this.isVastDownloadSuccess = z10;
    }

    public void setVastTypeAd(boolean z10) {
        this.isVastTypeAd = z10;
    }

    public void setVideoInfo(VastData vastData) {
        this.videoInfo = vastData;
    }

    public void setViewHeight(int i11) {
        this.viewHeight = i11;
    }

    public void setViewWidth(int i11) {
        this.viewWidth = i11;
    }

    public String toString() {
        return "AdsDTO{impBeanRequest=" + this.impBeanRequest + ", adCreativeId=" + this.adCreativeId + ", fill_ts=" + this.fill_ts + ", uuid='" + this.uuid + "', splashCountTime=" + this.splashCountTime + ", isACReady=" + this.isACReady + ", imageIsDownload=" + this.imageIsDownload + ", deepLinkUrlFirst='" + this.deepLinkUrlFirst + "', actualShowTime=" + this.actualShowTime + ", actualShowRate=" + this.actualShowRate + ", showArea='" + this.showArea + "', isEffectiveShow=" + this.isEffectiveShow + ", showReportTimeType=" + this.showReportTimeType + ", adPsType=" + this.adPsType + ", calledUrlType=" + this.calledUrlType + ", pslinkAppName='" + this.pslinkAppName + "', packageName='" + this.packageName + "', clickid='" + this.clickid + "', requestPsTs=" + this.requestPsTs + ", returnPsTs=" + this.returnPsTs + ", impressionUrl='" + this.impressionUrl + "', clickUrlTs=" + this.clickUrlTs + ", adSeatType='" + this.adSeatType + "', viewJsonData=" + this.viewJsonData + ", filePath='" + this.filePath + "', showDate='" + this.showDate + "', tableId=" + this.tableId + ", source=" + this.source + ", showNum=" + this.showNum + ", offlineAdStartDateLong=" + this.offlineAdStartDateLong + ", offlineAdLaunchDateStr='" + this.offlineAdLaunchDateStr + "', offlineAdExpireTime=" + this.offlineAdExpireTime + ", viewJson=" + this.viewJson + ", adRequestVer=" + this.adRequestVer + ", videoWidth=" + this.viewWidth + ", videoHeight=" + this.viewHeight + ", isMatchVulgarBrand=" + this.isMatchVulgarBrand + ", isFromJs=" + this.isFromJs + ", autoRetentionTime=" + this.autoRetentionTime + ", downloadArea=" + this.downloadArea + ", isShowSourceSize=" + this.isShowSourceSize + '}';
    }

    @Override // com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        int i12;
        super.writeToParcel(parcel, i11);
        parcel.writeParcelable(this.impBeanRequest, i11);
        if (this.fill_ts == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(this.fill_ts.longValue());
        }
        parcel.writeString(this.uuid);
        if (this.splashCountTime == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.splashCountTime.intValue());
        }
        Boolean bool = this.isACReady;
        int i13 = 2;
        if (bool == null) {
            i12 = 0;
        } else {
            i12 = bool.booleanValue() ? 1 : 2;
        }
        parcel.writeByte((byte) i12);
        Boolean bool2 = this.imageIsDownload;
        if (bool2 == null) {
            i13 = 0;
        } else if (bool2.booleanValue()) {
            i13 = 1;
        }
        parcel.writeByte((byte) i13);
        parcel.writeString(this.deepLinkUrlFirst);
        if (this.actualShowTime == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(this.actualShowTime.longValue());
        }
        if (this.actualShowRate == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.actualShowRate.intValue());
        }
        parcel.writeString(this.showArea);
        if (this.isEffectiveShow == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.isEffectiveShow.intValue());
        }
        if (this.showReportTimeType == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.showReportTimeType.intValue());
        }
        if (this.adPsType == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.adPsType.intValue());
        }
        parcel.writeInt(this.calledUrlType);
        parcel.writeString(this.pslinkAppName);
        parcel.writeString(this.clickid);
        parcel.writeLong(this.requestPsTs);
        parcel.writeLong(this.returnPsTs);
        parcel.writeString(this.impressionUrl);
        parcel.writeLong(this.clickUrlTs);
        parcel.writeString(this.adSeatType);
        parcel.writeParcelable(this.viewJsonData, i11);
        parcel.writeString(this.filePath);
        parcel.writeLong(this.showDate);
        parcel.writeInt(this.tableId);
        parcel.writeInt(this.source);
        if (this.showNum == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.showNum.intValue());
        }
        if (this.offlineAdStartDateLong == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(this.offlineAdStartDateLong.longValue());
        }
        parcel.writeString(this.offlineAdLaunchDateStr);
        if (this.offlineAdExpireTime == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(this.offlineAdExpireTime.longValue());
        }
        parcel.writeByte(this.showPsFlag ? (byte) 1 : (byte) 0);
        parcel.writeString(this.click_link);
        parcel.writeParcelable(this.pslinkInfo, i11);
        parcel.writeByte(this.isJumpToHalfscreen ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isUpdateClickUrl ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.videoInfo, i11);
        parcel.writeByte(this.isVastTypeAd ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.viewHeight);
        parcel.writeInt(this.viewWidth);
        parcel.writeByte(this.isOptimizeTracking ? (byte) 1 : (byte) 0);
        parcel.writeString(this.indexLocation);
        parcel.writeString(this.jsTriggerId);
        parcel.writeString(this.halfScreenType);
        parcel.writeByte(this.isVastDownloadSuccess ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.adRequestVer);
        parcel.writeString(this.expiredDate);
        parcel.writeString(this.campaignname);
        parcel.writeInt(this.defaultMaterialType);
        parcel.writeByte(this.isFromLocal ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.materialWith);
        parcel.writeInt(this.materialHeight);
        parcel.writeByte(this.isMatchVulgarBrand ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.triggerShowSpend);
        parcel.writeByte(this.isFromJs ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.defaultAdSupportNetType);
        parcel.writeInt(this.closeDelayTime);
        parcel.writeInt(this.retentionEndCardRatio);
        parcel.writeInt(this.endCardType);
        parcel.writeByte(this.isAdClickTracking ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.adclickTimeStamp);
        parcel.writeInt(this.autoRetentionTime);
        parcel.writeInt(this.downloadArea);
        parcel.writeInt(this.trackUserClickArea);
        parcel.writeByte(this.isShowSourceSize ? (byte) 1 : (byte) 0);
        parcel.writeString(this.realLandUrl);
        parcel.writeInt(this.preloadStatus);
    }
}
