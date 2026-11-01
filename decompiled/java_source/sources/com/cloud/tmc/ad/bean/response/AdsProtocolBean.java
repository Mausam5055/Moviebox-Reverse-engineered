package com.cloud.tmc.ad.bean.response;

import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.cloud.tmc.ad.ps.PsRequestManager;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.cloud.tmc.integration.utils.AESUtils;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import qk.a;

/* JADX INFO: loaded from: classes3.dex */
public class AdsProtocolBean implements Serializable {
    List<AbTestDTO> abTest;
    String adChoiceClickUrl;
    String adChoiceImageUrl;
    String adChoiceLegalText;
    Long adCreativeId;
    Long adGroupId;
    String adSeatType;
    String adm;

    @Deprecated
    String advSeatType;
    Long advertiserId;
    String applicationTitle;
    Double auctionSecondPrice;

    @Deprecated
    Double bidPrice;
    int cacheTime;
    ArrayList<String> clickTrackingUrls;
    String clickUrl;
    String codeSeatId;
    Integer codeSeatType;

    @Deprecated
    Integer commissionRatio;

    @Deprecated
    Integer cost;

    @Deprecated
    String deepLinkUrl;
    Integer dspType;
    String extInfo;
    Double firstPrice;
    String gaid;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    Integer f23249id;

    @Deprecated
    Integer imageHeight;

    @Deprecated
    String imageUrl;

    @Deprecated
    Integer imageWidth;
    String materialStyle;
    NativeBean nativeObject;
    boolean offlineAd;
    Long offlineAdLaunchDate;
    String offlineAdStartDate;
    String packageName;
    Long planId;

    @Deprecated
    String planType;
    String psApplicationTitle;
    String psPackageName;
    String requestId;

    @Deprecated
    String scale;
    private List<String> scales;
    Double secondPrice;
    BigDecimal settlementRatio;
    int showTime;
    String showTrackingSecretKey;
    ArrayList<String> showTrackingUrls;

    @SerializedName("clickUrls")
    ArrayList<String> storeDeeplink;
    String viewJson;

    public List<AbTestDTO> getAbTest() {
        return this.abTest;
    }

    public String getAdChoiceClickUrl() {
        String str = this.adChoiceClickUrl;
        return str == null ? "" : str;
    }

    public String getAdChoiceImageUrl() {
        String str = this.adChoiceImageUrl;
        return str == null ? "" : str;
    }

    public String getAdChoiceLegalText() {
        String str = this.adChoiceLegalText;
        return str == null ? "" : str;
    }

    public Long getAdCreativeId() {
        Long l11 = this.adCreativeId;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public Long getAdGroupId() {
        Long l11 = this.adGroupId;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public Integer getAdImageHeight() {
        NativeBean nativeBean = this.nativeObject;
        if (nativeBean == null || nativeBean.getMainImages() == null || this.nativeObject.getMainImages().size() <= 0) {
            return 0;
        }
        return Integer.valueOf(this.nativeObject.getMainImages().get(0).getHeight());
    }

    public Integer getAdImageWidth() {
        NativeBean nativeBean = this.nativeObject;
        if (nativeBean == null || nativeBean.getMainImages() == null || this.nativeObject.getMainImages().size() <= 0) {
            return 0;
        }
        return Integer.valueOf(this.nativeObject.getMainImages().get(0).getWidth());
    }

    public String getAdImgUrl() {
        NativeBean nativeBean = this.nativeObject;
        return (nativeBean == null || nativeBean.getMainImages() == null || this.nativeObject.getMainImages().size() <= 0) ? "" : this.nativeObject.getMainImages().get(0).getUrl();
    }

    public String getAdSeatType() {
        return this.adSeatType;
    }

    public String getAdm() {
        return this.adm;
    }

    public String getAdvSeatType() {
        return this.advSeatType;
    }

    public Long getAdvertiserId() {
        Long l11 = this.advertiserId;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public String getApplicationTitle() {
        return this.applicationTitle;
    }

    public Double getAuctionSecondPrice() {
        Double d11 = this.auctionSecondPrice;
        return Double.valueOf(d11 == null ? 0.0d : d11.doubleValue());
    }

    public int getCacheTime() {
        return this.cacheTime;
    }

    public ArrayList<String> getClickTrackingUrls() {
        return this.clickTrackingUrls;
    }

    public String getClickUrl() {
        String str = this.clickUrl;
        return str == null ? "" : str;
    }

    public String getCodeSeatId() {
        return this.codeSeatId;
    }

    public Integer getCodeSeatType() {
        return this.codeSeatType;
    }

    public String getDeepLinkUrl() {
        return this.deepLinkUrl;
    }

    public Integer getDspType() {
        Integer num = this.dspType;
        return Integer.valueOf(num == null ? 1 : num.intValue());
    }

    public String getExtInfo() {
        String str = this.extInfo;
        return str == null ? "" : str;
    }

    public Double getFirstPrice() {
        Double d11 = this.firstPrice;
        return Double.valueOf(d11 == null ? 0.0d : d11.doubleValue());
    }

    public String getGaid() {
        return this.gaid;
    }

    public Integer getId() {
        Integer num = this.f23249id;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public Integer getImageHeight() {
        Integer num = this.imageHeight;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getImageUrl() {
        String str = this.imageUrl;
        return str == null ? "" : str;
    }

    public Integer getImageWidth() {
        Integer num = this.imageWidth;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public int getInstallApk() {
        if (TextUtils.isEmpty(this.packageName)) {
            return 1;
        }
        if (a.a() == null) {
            return -1;
        }
        try {
            return a.a().getPackageManager().getPackageInfo(this.packageName, 0) == null ? 3 : 2;
        } catch (Exception unused) {
            return Build.VERSION.SDK_INT >= 30 ? -1 : 3;
        }
    }

    public int getIsPslinkAd() {
        ArrayList<String> arrayList = this.storeDeeplink;
        return (arrayList == null || !arrayList.toString().contains(PsRequestManager.CLICKURLS_PS_FLAG)) ? 1 : 2;
    }

    public String getLogoUrl() {
        NativeBean nativeBean = this.nativeObject;
        return nativeBean == null ? "" : nativeBean.getLogoUrl();
    }

    public String getMaterialStyle() {
        String str = this.materialStyle;
        return str == null ? "" : str;
    }

    public NativeBean getNativeObject() {
        return this.nativeObject;
    }

    public String getNewPrice() {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("_first_price=");
            sb2.append(this.firstPrice);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("_second_price=");
            sb2.append(this.secondPrice);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("_ratio=");
            sb2.append(this.settlementRatio);
            TraceLog.d("ssp_second_price", "*----> AdsDTO getNewPrice() = " + sb2.toString());
            return Base64.encodeToString(AESUtils.encrypt(sb2.toString()).getBytes(), 2);
        } catch (Exception e11) {
            TraceLog.e(CommonLogUtil.TAG_AD, "AdsDTO getNewPrice() error = " + Log.getStackTraceString(e11));
            return "";
        }
    }

    public String getNewPrice_Click() {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("p1=");
            sb2.append(this.firstPrice);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("p2=");
            sb2.append(this.secondPrice);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("t=");
            sb2.append(this.settlementRatio);
            TraceLog.d("ssp_second_price", "*----> AdsDTO getNewPrice_Click() = " + sb2.toString());
            return sb2.toString();
        } catch (Exception e11) {
            TraceLog.e(CommonLogUtil.TAG_AD, "AdsDTO getNewPrice_Click() error = " + Log.getStackTraceString(e11));
            return "";
        }
    }

    public Long getOfflineAdLaunchDate() {
        return this.offlineAdLaunchDate;
    }

    public String getOfflineAdStartDate() {
        return this.offlineAdStartDate;
    }

    public String getPackageName() {
        String str = this.packageName;
        return str == null ? "" : str;
    }

    public Long getPlanId() {
        Long l11 = this.planId;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public String getPlanType() {
        String str = this.planType;
        return str == null ? "" : str;
    }

    public String getPsApplicationTitle() {
        return this.psApplicationTitle;
    }

    public String getPsPackageName() {
        return this.psPackageName;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public String getScale() {
        return this.scale;
    }

    public List<String> getScales() {
        return this.scales;
    }

    public Double getSecondPrice() {
        Double d11 = this.secondPrice;
        return Double.valueOf(d11 == null ? 0.0d : d11.doubleValue());
    }

    public BigDecimal getSettlementRatio() {
        return this.settlementRatio;
    }

    public int getShowTime() {
        return this.showTime;
    }

    public String getShowTrackingSecretKey() {
        String str = this.showTrackingSecretKey;
        return str == null ? "" : str;
    }

    public List<String> getShowTrackingUrls() {
        return this.showTrackingUrls;
    }

    public ArrayList<String> getStoreDeeplink() {
        return this.storeDeeplink;
    }

    public String getViewJson() {
        return this.viewJson;
    }

    public boolean isOfflineAd() {
        return this.offlineAd;
    }

    public void setAbTest(List<AbTestDTO> list) {
        this.abTest = list;
    }

    public void setAdChoiceClickUrl(String str) {
        this.adChoiceClickUrl = str;
    }

    public void setAdChoiceImageUrl(String str) {
        this.adChoiceImageUrl = str;
    }

    public void setAdChoiceLegalText(String str) {
        this.adChoiceLegalText = str;
    }

    public void setAdCreativeId(Long l11) {
        this.adCreativeId = l11;
    }

    public void setAdGroupId(Long l11) {
        this.adGroupId = l11;
    }

    public void setAdSeatType(String str) {
        this.adSeatType = str;
    }

    public void setAdm(String str) {
        this.adm = str;
    }

    public void setAdvSeatType(String str) {
        this.advSeatType = str;
    }

    public void setAdvertiserId(Long l11) {
        this.advertiserId = l11;
    }

    public void setApplicationTitle(String str) {
        this.applicationTitle = str;
    }

    public void setAuctionSecondPrice(Double d11) {
        this.auctionSecondPrice = d11;
    }

    public void setCacheTime(int i11) {
        this.cacheTime = i11;
    }

    public void setClickTrackingUrls(ArrayList<String> arrayList) {
        this.clickTrackingUrls = arrayList;
    }

    public void setClickUrl(String str) {
        this.clickUrl = str;
    }

    public void setCodeSeatId(String str) {
        this.codeSeatId = str;
    }

    public void setCodeSeatType(Integer num) {
        this.codeSeatType = num;
    }

    public void setDeepLinkUrl(String str) {
        this.deepLinkUrl = str;
    }

    public void setDspType(Integer num) {
        this.dspType = num;
    }

    public void setExtInfo(String str) {
        this.extInfo = str;
    }

    public void setFirstPrice(Double d11) {
        this.firstPrice = d11;
    }

    public void setGaid(String str) {
        this.gaid = str;
    }

    public void setId(Integer num) {
        this.f23249id = num;
    }

    public void setImageHeight(Integer num) {
        this.imageHeight = num;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setImageWidth(Integer num) {
        this.imageWidth = num;
    }

    public void setMaterialStyle(String str) {
        this.materialStyle = str;
    }

    public void setNativeObject(NativeBean nativeBean) {
        this.nativeObject = nativeBean;
    }

    public void setOfflineAd(boolean z10) {
        this.offlineAd = z10;
    }

    public void setOfflineAdLaunchDate(Long l11) {
        this.offlineAdLaunchDate = l11;
    }

    public void setOfflineAdStartDate(String str) {
        this.offlineAdStartDate = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPlanId(Long l11) {
        this.planId = l11;
    }

    public void setPlanType(String str) {
        this.planType = str;
    }

    public void setPsApplicationTitle(String str) {
        this.psApplicationTitle = str;
    }

    public void setPsPackageName(String str) {
        this.psPackageName = str;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setScale(String str) {
        this.scale = str;
    }

    public void setScales(List<String> list) {
        this.scales = list;
    }

    public void setSecondPrice(double d11) {
        TraceLog.d("ssp_second_price", "new secondPrice" + d11 + "old secondPrice" + this.secondPrice);
        if (d11 <= getSecondPrice().doubleValue() || d11 > getFirstPrice().doubleValue()) {
            return;
        }
        this.secondPrice = Double.valueOf(d11);
        this.auctionSecondPrice = Double.valueOf(d11);
        if (getDspType().intValue() == 2) {
            this.secondPrice = Double.valueOf(this.secondPrice.doubleValue() + 1.0d);
        }
    }

    public void setSecondPrice(Double d11) {
        this.secondPrice = d11;
    }

    public void setSettlementRatio(BigDecimal bigDecimal) {
        this.settlementRatio = bigDecimal;
    }

    public void setShowTime(int i11) {
        this.showTime = i11;
    }

    public void setShowTrackingSecretKey(String str) {
        this.showTrackingSecretKey = str;
    }

    public void setShowTrackingUrls(ArrayList<String> arrayList) {
        this.showTrackingUrls = arrayList;
    }

    public void setStoreDeeplink(ArrayList<String> arrayList) {
        this.storeDeeplink = arrayList;
    }

    public void setViewJson(String str) {
        this.viewJson = str;
    }
}
