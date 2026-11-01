package com.cloud.hisavana.sdk.data.bean.response;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.NonNull;
import com.cloud.hisavana.sdk.common.util.b0;
import com.cloud.hisavana.sdk.common.util.i0;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.a;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class AdsProtocolBean implements Parcelable {
    public static final Parcelable.Creator<AdsProtocolBean> CREATOR = new Parcelable.Creator<AdsProtocolBean>() { // from class: com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdsProtocolBean createFromParcel(Parcel parcel) {
            return new AdsProtocolBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdsProtocolBean[] newArray(int i11) {
            return new AdsProtocolBean[i11];
        }
    };
    List<AbTestDTO> abTest;
    String adChoiceClickUrl;
    String adChoiceImageUrl;
    String adChoiceLegalText;
    String adCreativeId;
    String adGroupId;
    Integer adLaunchTypes;
    String adm;

    @Deprecated
    String advSeatType;
    String advertiserId;
    String advrId;
    protected String appInfo;
    String applicationTitle;
    Double auctionSecondPrice;

    @Deprecated
    Double bidPrice;
    Integer cacheTime;
    List<String> clickTrackingUrls;
    String clickUrl;

    @Deprecated
    Integer commissionRatio;

    @Deprecated
    Integer cost;
    String creativeId;
    String deepLinkUrl;
    Integer dspType;
    protected Ext ext;
    String extInfo;
    Double firstPrice;
    Integer fullScreenFlag;
    String groupId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    Integer f22380id;

    @Deprecated
    Integer imageHeight;

    @Deprecated
    String imageUrl;

    @Deprecated
    Integer imageWidth;
    String industryId;
    Boolean isAdxAscribeRetryEnable;
    boolean isInteractiveAd;
    String materialStyle;
    Integer materialType;
    NativeBean nativeObject;
    Long offlineAdLaunchDate;
    String offlineAdStartDate;
    String packageName;
    String planId;
    String planIdStr;

    @Deprecated
    String planType;
    Boolean preloadEnable;
    String psApplicationTitle;
    ArrayList<String> psClickTrackingUrls;
    String psLink;
    String psPackageName;
    protected Integer pullNewestLive;
    Integer rewardDuration;
    String rtbAdm;
    String scale;
    List<String> scales;
    Double secondPrice;
    String settlementRatio;
    Integer showTime;
    String showTrackingSecretKey;
    ArrayList<String> showTrackingUrls;

    @SerializedName("clickUrls")
    ArrayList<String> storeDeeplink;
    Boolean testResponse;
    Integer trackType;
    String viewJson;

    public static class Ext implements Parcelable {
        public static final Parcelable.Creator<Ext> CREATOR = new Parcelable.Creator<Ext>() { // from class: com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean.Ext.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Ext createFromParcel(Parcel parcel) {
                return new Ext(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Ext[] newArray(int i11) {
                return new Ext[i11];
            }
        };
        private Integer dwellTime;
        private Integer linkWake;
        List<String> logEnable;
        private List<OmIdData> omSdkVerifications;
        private RUComplianceData ruCompliance;
        private Integer storeFlag;
        private String storeImageUrl;
        private String storeTitle;

        public Ext() {
            this.storeFlag = 0;
        }

        protected Ext(Parcel parcel) {
            this.storeFlag = 0;
            if (parcel.readByte() == 0) {
                this.storeFlag = null;
            } else {
                this.storeFlag = Integer.valueOf(parcel.readInt());
            }
            this.storeImageUrl = parcel.readString();
            this.storeTitle = parcel.readString();
            this.ruCompliance = (RUComplianceData) parcel.readParcelable(RUComplianceData.class.getClassLoader());
            this.logEnable = parcel.createStringArrayList();
            this.omSdkVerifications = parcel.readArrayList(OmIdData.class.getClassLoader());
            this.linkWake = Integer.valueOf(parcel.readInt());
            this.dwellTime = Integer.valueOf(parcel.readInt());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Integer getDwellTime() {
            Integer num = this.dwellTime;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public Integer getLinkWake() {
            Integer num = this.linkWake;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public List<String> getLogEnable() {
            return this.logEnable;
        }

        public List<OmIdData> getOmSdkVerifications() {
            return this.omSdkVerifications;
        }

        public RUComplianceData getRuCompliance() {
            return this.ruCompliance;
        }

        public Integer getStoreFlag() {
            Integer num = this.storeFlag;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getStoreImageurl() {
            return this.storeImageUrl;
        }

        public String getStoreTitle() {
            return this.storeTitle;
        }

        public void setDwellTime(Integer num) {
            this.dwellTime = num;
        }

        public void setLinkWake(Integer num) {
            this.linkWake = num;
        }

        public void setOmSdkVerifications(List<OmIdData> list) {
            this.omSdkVerifications = list;
        }

        public void setStoreFlag(Integer num) {
            this.storeFlag = num;
        }

        public void setStoreImageurl(String str) {
            this.storeImageUrl = str;
        }

        public void setStoreTitle(String str) {
            this.storeTitle = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            if (this.storeFlag == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.storeFlag.intValue());
            }
            parcel.writeString(this.storeImageUrl);
            parcel.writeString(this.storeTitle);
            parcel.writeParcelable(this.ruCompliance, i11);
            parcel.writeStringList(this.logEnable);
            parcel.writeList(this.omSdkVerifications);
            parcel.writeInt(getLinkWake().intValue());
            parcel.writeInt(getDwellTime().intValue());
        }
    }

    public static class OmIdData implements Parcelable {
        public static final Parcelable.Creator<OmIdData> CREATOR = new Parcelable.Creator<OmIdData>() { // from class: com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean.OmIdData.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OmIdData createFromParcel(Parcel parcel) {
                return new OmIdData(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public OmIdData[] newArray(int i11) {
                return new OmIdData[i11];
            }
        };
        public String url;
        public String vendorKey;
        public String verification_parameters;

        public OmIdData() {
        }

        protected OmIdData(Parcel parcel) {
            this.url = parcel.readString();
            this.vendorKey = parcel.readString();
            this.verification_parameters = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public String toString() {
            return "OmIdData{url='" + this.url + "', vendorKey='" + this.vendorKey + "', verification_parameters='" + this.verification_parameters + "'}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i11) {
            parcel.writeString(this.url);
            parcel.writeString(this.vendorKey);
            parcel.writeString(this.verification_parameters);
        }
    }

    public static class RUComplianceData implements Parcelable {
        public static final Parcelable.Creator<RUComplianceData> CREATOR = new Parcelable.Creator<RUComplianceData>() { // from class: com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean.RUComplianceData.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RUComplianceData createFromParcel(Parcel parcel) {
                return new RUComplianceData(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RUComplianceData[] newArray(int i11) {
                return new RUComplianceData[i11];
            }
        };
        private String advertiserAge;
        private String advertiserInfo;
        private String advertiserLink;
        private String copyAdvertiserLink;
        private String disclaimerPercent;
        private String disclaimerText;

        protected RUComplianceData(Parcel parcel) {
            this.advertiserAge = parcel.readString();
            this.advertiserInfo = parcel.readString();
            this.advertiserLink = parcel.readString();
            this.copyAdvertiserLink = parcel.readString();
            this.disclaimerPercent = parcel.readString();
            this.disclaimerText = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getAdvertiserAge() {
            return (String) b0.a(this.advertiserAge, "");
        }

        public String getAdvertiserInfo() {
            return (String) b0.a(this.advertiserInfo, "");
        }

        public String getAdvertiserLink() {
            return (String) b0.a(this.advertiserLink, "");
        }

        public String getCopyAdvertiserLink() {
            return (String) b0.a(this.copyAdvertiserLink, "");
        }

        public String getDisclaimerPercent() {
            return (String) b0.a(this.disclaimerPercent, "");
        }

        public String getDisclaimerText() {
            return (String) b0.a(this.disclaimerText, "");
        }

        public int getIntAgeValue() {
            if (this.advertiserAge == null) {
                return 0;
            }
            Matcher matcher = Pattern.compile("\\d+").matcher(this.advertiserAge);
            if (matcher.find()) {
                return Integer.parseInt(matcher.group());
            }
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeString(this.advertiserAge);
            parcel.writeString(this.advertiserInfo);
            parcel.writeString(this.advertiserLink);
            parcel.writeString(this.copyAdvertiserLink);
            parcel.writeString(this.disclaimerPercent);
            parcel.writeString(this.disclaimerText);
        }
    }

    public AdsProtocolBean() {
        this.isAdxAscribeRetryEnable = Boolean.FALSE;
        this.isInteractiveAd = false;
        this.adLaunchTypes = 1;
    }

    protected AdsProtocolBean(Parcel parcel) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        this.isAdxAscribeRetryEnable = Boolean.FALSE;
        this.isInteractiveAd = false;
        this.adLaunchTypes = 1;
        Boolean boolValueOf3 = null;
        if (parcel.readByte() == 0) {
            this.f22380id = null;
        } else {
            this.f22380id = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.advertiserId = null;
        } else {
            this.advertiserId = parcel.readString();
        }
        if (parcel.readByte() == 0) {
            this.advrId = null;
        } else {
            this.advrId = parcel.readString();
        }
        byte b11 = parcel.readByte();
        if (b11 == 0) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(b11 == 1);
        }
        this.isAdxAscribeRetryEnable = boolValueOf;
        if (parcel.readByte() == 0) {
            this.planId = null;
        } else {
            this.planId = parcel.readString();
        }
        if (parcel.readByte() == 0) {
            this.planIdStr = null;
        } else {
            this.planIdStr = parcel.readString();
        }
        this.planType = parcel.readString();
        if (parcel.readByte() == 0) {
            this.adGroupId = null;
        } else {
            this.adGroupId = parcel.readString();
        }
        if (parcel.readByte() == 0) {
            this.groupId = null;
        } else {
            this.groupId = parcel.readString();
        }
        if (parcel.readByte() == 0) {
            this.adCreativeId = null;
        } else {
            this.adCreativeId = parcel.readString();
        }
        if (parcel.readByte() == 0) {
            this.creativeId = null;
        } else {
            this.creativeId = parcel.readString();
        }
        if (parcel.readByte() == 0) {
            this.cost = null;
        } else {
            this.cost = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.bidPrice = null;
        } else {
            this.bidPrice = Double.valueOf(parcel.readDouble());
        }
        this.packageName = parcel.readString();
        if (parcel.readByte() == 0) {
            this.cacheTime = null;
        } else {
            this.cacheTime = Integer.valueOf(parcel.readInt());
        }
        this.clickUrl = parcel.readString();
        this.abTest = parcel.createTypedArrayList(AbTestDTO.CREATOR);
        this.deepLinkUrl = parcel.readString();
        this.storeDeeplink = parcel.createStringArrayList();
        this.showTrackingUrls = parcel.createStringArrayList();
        this.showTrackingSecretKey = parcel.readString();
        this.clickTrackingUrls = parcel.createStringArrayList();
        this.adChoiceImageUrl = parcel.readString();
        this.adChoiceClickUrl = parcel.readString();
        this.adChoiceLegalText = parcel.readString();
        this.imageUrl = parcel.readString();
        if (parcel.readByte() == 0) {
            this.imageWidth = null;
        } else {
            this.imageWidth = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.imageHeight = null;
        } else {
            this.imageHeight = Integer.valueOf(parcel.readInt());
        }
        this.nativeObject = (NativeBean) parcel.readParcelable(NativeBean.class.getClassLoader());
        this.extInfo = parcel.readString();
        this.scale = parcel.readString();
        this.advSeatType = parcel.readString();
        this.materialStyle = parcel.readString();
        if (parcel.readByte() == 0) {
            this.firstPrice = null;
        } else {
            this.firstPrice = Double.valueOf(parcel.readDouble());
        }
        if (parcel.readByte() == 0) {
            this.secondPrice = null;
        } else {
            this.secondPrice = Double.valueOf(parcel.readDouble());
        }
        if (parcel.readByte() == 0) {
            this.auctionSecondPrice = null;
        } else {
            this.auctionSecondPrice = Double.valueOf(parcel.readDouble());
        }
        if (parcel.readByte() == 0) {
            this.commissionRatio = null;
        } else {
            this.commissionRatio = Integer.valueOf(parcel.readInt());
        }
        this.settlementRatio = parcel.readString();
        if (parcel.readByte() == 0) {
            this.dspType = null;
        } else {
            this.dspType = Integer.valueOf(parcel.readInt());
        }
        this.adm = parcel.readString();
        this.scales = parcel.createStringArrayList();
        this.applicationTitle = parcel.readString();
        if (parcel.readByte() == 0) {
            this.offlineAdLaunchDate = null;
        } else {
            this.offlineAdLaunchDate = Long.valueOf(parcel.readLong());
        }
        this.offlineAdStartDate = parcel.readString();
        byte b12 = parcel.readByte();
        if (b12 == 0) {
            boolValueOf2 = null;
        } else {
            boolValueOf2 = Boolean.valueOf(b12 == 1);
        }
        this.testResponse = boolValueOf2;
        if (parcel.readByte() == 0) {
            this.materialType = null;
        } else {
            this.materialType = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.fullScreenFlag = null;
        } else {
            this.fullScreenFlag = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.showTime = null;
        } else {
            this.showTime = Integer.valueOf(parcel.readInt());
        }
        this.viewJson = parcel.readString();
        this.industryId = parcel.readString();
        this.psLink = parcel.readString();
        this.psApplicationTitle = parcel.readString();
        this.psPackageName = parcel.readString();
        this.appInfo = parcel.readString();
        if (parcel.readByte() == 0) {
            this.pullNewestLive = null;
        } else {
            this.pullNewestLive = Integer.valueOf(parcel.readInt());
        }
        this.ext = (Ext) parcel.readParcelable(Ext.class.getClassLoader());
        this.isInteractiveAd = parcel.readByte() != 0;
        this.psClickTrackingUrls = parcel.createStringArrayList();
        if (parcel.readByte() == 0) {
            this.trackType = null;
        } else {
            this.trackType = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.adLaunchTypes = null;
        } else {
            this.adLaunchTypes = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.rewardDuration = null;
        } else {
            this.rewardDuration = Integer.valueOf(parcel.readInt());
        }
        byte b13 = parcel.readByte();
        if (b13 != 0) {
            boolValueOf3 = Boolean.valueOf(b13 == 1);
        }
        this.preloadEnable = boolValueOf3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

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

    public String getAdCreativeId() {
        if (TextUtils.isEmpty(this.creativeId)) {
            String str = this.adCreativeId;
            return str == null ? "" : str;
        }
        String str2 = this.creativeId;
        return str2 == null ? "" : str2;
    }

    public String getAdGroupId() {
        if (TextUtils.isEmpty(this.groupId)) {
            String str = this.adGroupId;
            return str == null ? "" : str;
        }
        String str2 = this.groupId;
        return str2 == null ? "" : str2;
    }

    public Integer getAdImageHeight() {
        NativeBean nativeBean = this.nativeObject;
        if (nativeBean == null || nativeBean.getMainImages() == null || this.nativeObject.getMainImages().size() <= 0) {
            return 0;
        }
        return this.nativeObject.getMainImages().get(0).getHeight();
    }

    public Integer getAdImageWidth() {
        NativeBean nativeBean = this.nativeObject;
        if (nativeBean == null || nativeBean.getMainImages() == null || this.nativeObject.getMainImages().isEmpty()) {
            return 0;
        }
        return this.nativeObject.getMainImages().get(0).getWidth();
    }

    public String getAdImgUrl() {
        NativeBean nativeBean = this.nativeObject;
        if (nativeBean == null || nativeBean.getMainImages() == null || this.nativeObject.getMainImages().isEmpty()) {
            return "";
        }
        return this.isInteractiveAd ? this.nativeObject.getMainImages().get(0).getInteractiveUrl() : this.nativeObject.getMainImages().get(0).getUrl();
    }

    public Integer getAdLaunchTypes() {
        Integer num = this.adLaunchTypes;
        return Integer.valueOf(num == null ? 1 : num.intValue());
    }

    public String getAdPackageName() {
        return !TextUtils.isEmpty(this.psPackageName) ? this.psPackageName : getPackageName();
    }

    public String getAdm() {
        return this.adm;
    }

    public String getAdvSeatType() {
        return this.advSeatType;
    }

    public String getAdvertiserId() {
        if (TextUtils.isEmpty(this.advrId)) {
            String str = this.advertiserId;
            return str == null ? "" : str;
        }
        String str2 = this.advrId;
        return str2 == null ? "" : str2;
    }

    public boolean getAdxAscribeRetryEnable() {
        Boolean bool = this.isAdxAscribeRetryEnable;
        return bool != null && bool.booleanValue();
    }

    public String getAppInfo() {
        return this.appInfo;
    }

    public String getApplicationTitle() {
        return this.applicationTitle;
    }

    public Double getAuctionSecondPrice() {
        Double d11 = this.auctionSecondPrice;
        return Double.valueOf(d11 == null ? 0.0d : d11.doubleValue());
    }

    public Integer getCacheTime() {
        Integer num = this.cacheTime;
        return Integer.valueOf(num == null ? 60 : num.intValue());
    }

    public List<String> getClickTrackingUrls() {
        List<String> list = this.clickTrackingUrls;
        return list == null ? new ArrayList() : list;
    }

    public String getClickUrl() {
        String str = this.clickUrl;
        return str == null ? "" : str;
    }

    public String getDeepLinkUrl() {
        return this.deepLinkUrl;
    }

    public Integer getDspType() {
        Integer num = this.dspType;
        return Integer.valueOf(num == null ? 1 : num.intValue());
    }

    public Ext getExt() {
        return this.ext;
    }

    public String getExtInfo() {
        String str = this.extInfo;
        return str == null ? "" : str;
    }

    public Double getFirstPrice() {
        Double d11 = this.firstPrice;
        return Double.valueOf(d11 == null ? 0.0d : d11.doubleValue());
    }

    public Integer getFullScreenFlag() {
        Integer num = this.fullScreenFlag;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public Integer getId() {
        Integer num = this.f22380id;
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

    public String getIndustryId() {
        String str = this.industryId;
        return str == null ? "" : str;
    }

    public int getInstallApk() {
        if (TextUtils.isEmpty(this.packageName) && TextUtils.isEmpty(this.psPackageName)) {
            return 1;
        }
        if (e.a() == null) {
            return -1;
        }
        try {
            return (i0.b(this.packageName, e.a()) == null && i0.b(this.psPackageName, e.a()) == null) ? 3 : 2;
        } catch (Exception unused) {
            return Build.VERSION.SDK_INT >= 30 ? -1 : 3;
        }
    }

    public String getInteractiveUrl() {
        NativeBean nativeBean = this.nativeObject;
        if (nativeBean == null || nativeBean.getMainImages() == null || this.nativeObject.getMainImages().isEmpty() || this.nativeObject.getMainImages().get(0) == null) {
            return "";
        }
        String interactiveUrl = this.nativeObject.getMainImages().get(0).getInteractiveUrl();
        return !TextUtils.isEmpty(interactiveUrl) ? interactiveUrl : "";
    }

    public String getLogoUrl() {
        NativeBean nativeBean = this.nativeObject;
        return nativeBean == null ? "" : nativeBean.getLogoUrl();
    }

    public String getMaterialStyle() {
        String str = this.materialStyle;
        return str == null ? "" : str;
    }

    public Integer getMaterialType() {
        Integer num = this.materialType;
        return Integer.valueOf(num == null ? 2 : num.intValue());
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
            e4.b().d("ssp_second_price", "*----> AdsDTO getNewPrice() = " + ((Object) sb2));
            return Base64.encodeToString(a.a(sb2.toString()).getBytes(), 2);
        } catch (Exception e11) {
            e4.b().e("AdsDTO getNewPrice() error = " + Log.getStackTraceString(e11));
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
            e4.b().d("ssp_second_price", "*----> AdsDTO getNewPrice_Click() = " + ((Object) sb2));
            return sb2.toString();
        } catch (Exception e11) {
            e4.b().e("AdsDTO getNewPrice_Click() error = " + Log.getStackTraceString(e11));
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

    public String getPlanId() {
        if (TextUtils.isEmpty(this.planIdStr)) {
            String str = this.planId;
            return str == null ? "" : str;
        }
        String str2 = this.planIdStr;
        return str2 == null ? "" : str2;
    }

    public String getPlanType() {
        String str = this.planType;
        return str == null ? "" : str;
    }

    public Boolean getPreloadEnable() {
        Boolean bool = this.preloadEnable;
        return Boolean.valueOf(bool != null && bool.booleanValue());
    }

    public String getPsApplicationTitle() {
        return this.psApplicationTitle;
    }

    public ArrayList<String> getPsClickTrackingUrls() {
        return this.psClickTrackingUrls;
    }

    public String getPsLink() {
        return this.psLink;
    }

    public String getPsPackageName() {
        return this.psPackageName;
    }

    public Integer getPullNewestLive() {
        Integer num = this.pullNewestLive;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public Integer getRewardDuration() {
        Integer num = this.rewardDuration;
        return Integer.valueOf(num == null ? 5 : num.intValue());
    }

    public String getRtbAdm() {
        return this.rtbAdm;
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

    public String getSettlementRatio() {
        return this.settlementRatio;
    }

    public Integer getShowTime() {
        Integer num = this.showTime;
        if (num != null && num.intValue() >= 1) {
            return this.showTime;
        }
        return 5;
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

    public Boolean getTestResponse() {
        Boolean bool = this.testResponse;
        return Boolean.valueOf(bool != null && bool.booleanValue());
    }

    public Integer getTrackType() {
        Integer num = this.trackType;
        return Integer.valueOf(num == null ? -1 : num.intValue());
    }

    public String getViewJson() {
        return this.viewJson;
    }

    public boolean isInteractiveAd() {
        return this.isInteractiveAd;
    }

    public boolean isOfflineAd() {
        return getAdLaunchTypes().intValue() == 3;
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

    public void setAdCreativeId(String str) {
        this.adCreativeId = str;
    }

    public void setAdGroupId(String str) {
        this.adGroupId = str;
    }

    public void setAdLaunchTypes(Integer num) {
        this.adLaunchTypes = num;
    }

    public void setAdm(String str) {
        this.adm = str;
    }

    public void setAdvSeatType(String str) {
        this.advSeatType = str;
    }

    public void setAdvertiserId(String str) {
        this.advertiserId = str;
    }

    public void setAdvrId(String str) {
        this.advrId = str;
    }

    public void setAdxAscribeRetryEnable(Boolean bool) {
        this.isAdxAscribeRetryEnable = bool;
    }

    public void setAppInfo(String str) {
        this.appInfo = str;
    }

    public void setApplicationTitle(String str) {
        this.applicationTitle = str;
    }

    public void setAuctionSecondPrice(Double d11) {
        this.auctionSecondPrice = d11;
    }

    public void setCacheTime(Integer num) {
        this.cacheTime = num;
    }

    public void setClickTrackingUrls(List<String> list) {
        this.clickTrackingUrls = list;
    }

    public void setClickUrl(String str) {
        this.clickUrl = str;
    }

    public void setCreativeId(String str) {
        this.creativeId = str;
    }

    public void setDeepLinkUrl(String str) {
        this.deepLinkUrl = str;
    }

    public void setExt(Ext ext) {
        this.ext = ext;
    }

    public void setExtInfo(String str) {
        this.extInfo = str;
    }

    public void setFirstPrice(Double d11) {
        this.firstPrice = d11;
    }

    public void setFullScreenFlag(Integer num) {
        this.fullScreenFlag = num;
    }

    public void setGroupId(String str) {
        this.groupId = str;
    }

    public void setId(Integer num) {
        this.f22380id = num;
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

    public void setIndustryId(String str) {
        this.industryId = str;
    }

    public void setInteractiveAd() {
        NativeBean nativeBean = this.nativeObject;
        if (nativeBean == null || nativeBean.getMainImages() == null || this.nativeObject.getMainImages().isEmpty() || TextUtils.isEmpty(this.nativeObject.getMainImages().get(0).getInteractiveUrl())) {
            return;
        }
        this.isInteractiveAd = true;
    }

    public void setMaterialStyle(String str) {
        this.materialStyle = str;
    }

    public void setMaterialType(Integer num) {
        this.materialType = num;
    }

    public void setNativeObject(NativeBean nativeBean) {
        this.nativeObject = nativeBean;
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

    public void setPlanId(String str) {
        this.planId = str;
    }

    public void setPlanIdStr(String str) {
        this.planIdStr = str;
    }

    public void setPlanType(String str) {
        this.planType = str;
    }

    public void setPsApplicationTitle(String str) {
        this.psApplicationTitle = str;
    }

    public void setPsClickTrackingUrls(ArrayList<String> arrayList) {
        this.psClickTrackingUrls = arrayList;
    }

    public void setPsLink(String str) {
        this.psLink = str;
    }

    public void setPsPackageName(String str) {
        this.psPackageName = str;
    }

    public void setPullNewestLive(Integer num) {
        this.pullNewestLive = num;
    }

    public void setRewardDuration(Integer num) {
        this.rewardDuration = num;
    }

    public void setRtbAdm(String str) {
        this.rtbAdm = str;
    }

    public void setScale(String str) {
        this.scale = str;
    }

    public void setScales(List<String> list) {
        this.scales = list;
    }

    public void setSecondPrice(double d11) {
        e4.b().d("ssp_second_price", "new secondPrice" + d11 + "old secondPrice" + this.secondPrice);
        if (d11 <= getSecondPrice().doubleValue() || d11 > getFirstPrice().doubleValue()) {
            return;
        }
        this.secondPrice = Double.valueOf(d11);
        this.auctionSecondPrice = Double.valueOf(d11);
        if (getDspType().intValue() == 2) {
            this.secondPrice = Double.valueOf(this.secondPrice.doubleValue() + 1.0d);
        }
    }

    public void setSettlementRatio(String str) {
        this.settlementRatio = str;
    }

    public void setShowTime(Integer num) {
        this.showTime = num;
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

    public void setTestResponse(Boolean bool) {
        this.testResponse = bool;
    }

    public void setTrackType(Integer num) {
        this.trackType = num;
    }

    public void setViewJson(String str) {
        this.viewJson = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        int i12;
        int i13;
        int i14 = 1;
        if (this.f22380id == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.f22380id.intValue());
        }
        if (this.advertiserId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.advertiserId);
        }
        if (this.advrId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.advrId);
        }
        Boolean bool = this.isAdxAscribeRetryEnable;
        if (bool == null) {
            i12 = 0;
        } else {
            i12 = bool.booleanValue() ? 1 : 2;
        }
        parcel.writeByte((byte) i12);
        if (this.planId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.planId);
        }
        if (this.planIdStr == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.planIdStr);
        }
        parcel.writeString(this.planType);
        if (this.adGroupId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.adGroupId);
        }
        if (this.groupId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.groupId);
        }
        if (this.adCreativeId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.adCreativeId);
        }
        if (this.creativeId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.creativeId);
        }
        if (this.cost == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.cost.intValue());
        }
        if (this.bidPrice == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeDouble(this.bidPrice.doubleValue());
        }
        parcel.writeString(this.packageName);
        if (this.cacheTime == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.cacheTime.intValue());
        }
        parcel.writeString(this.clickUrl);
        parcel.writeTypedList(this.abTest);
        parcel.writeString(this.deepLinkUrl);
        parcel.writeStringList(this.storeDeeplink);
        parcel.writeStringList(this.showTrackingUrls);
        parcel.writeString(this.showTrackingSecretKey);
        parcel.writeStringList(this.clickTrackingUrls);
        parcel.writeString(this.adChoiceImageUrl);
        parcel.writeString(this.adChoiceClickUrl);
        parcel.writeString(this.adChoiceLegalText);
        parcel.writeString(this.imageUrl);
        if (this.imageWidth == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.imageWidth.intValue());
        }
        if (this.imageHeight == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.imageHeight.intValue());
        }
        parcel.writeParcelable(this.nativeObject, i11);
        parcel.writeString(this.extInfo);
        parcel.writeString(this.scale);
        parcel.writeString(this.advSeatType);
        parcel.writeString(this.materialStyle);
        if (this.firstPrice == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeDouble(this.firstPrice.doubleValue());
        }
        if (this.secondPrice == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeDouble(this.secondPrice.doubleValue());
        }
        if (this.auctionSecondPrice == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeDouble(this.auctionSecondPrice.doubleValue());
        }
        if (this.commissionRatio == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.commissionRatio.intValue());
        }
        parcel.writeString(this.settlementRatio);
        if (this.dspType == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.dspType.intValue());
        }
        parcel.writeString(this.adm);
        parcel.writeStringList(this.scales);
        parcel.writeString(this.applicationTitle);
        if (this.offlineAdLaunchDate == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(this.offlineAdLaunchDate.longValue());
        }
        parcel.writeString(this.offlineAdStartDate);
        Boolean bool2 = this.testResponse;
        if (bool2 == null) {
            i13 = 0;
        } else {
            i13 = bool2.booleanValue() ? 1 : 2;
        }
        parcel.writeByte((byte) i13);
        if (this.materialType == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.materialType.intValue());
        }
        if (this.fullScreenFlag == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.fullScreenFlag.intValue());
        }
        if (this.showTime == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.showTime.intValue());
        }
        parcel.writeString(this.viewJson);
        parcel.writeString(this.industryId);
        parcel.writeString(this.psLink);
        parcel.writeString(this.psApplicationTitle);
        parcel.writeString(this.psPackageName);
        parcel.writeString(this.appInfo);
        if (this.pullNewestLive == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.pullNewestLive.intValue());
        }
        parcel.writeParcelable(this.ext, i11);
        parcel.writeByte(this.isInteractiveAd ? (byte) 1 : (byte) 0);
        parcel.writeStringList(this.psClickTrackingUrls);
        if (this.trackType == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.trackType.intValue());
        }
        if (this.adLaunchTypes == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.adLaunchTypes.intValue());
        }
        if (this.rewardDuration == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.rewardDuration.intValue());
        }
        Boolean bool3 = this.preloadEnable;
        if (bool3 == null) {
            i14 = 0;
        } else if (!bool3.booleanValue()) {
            i14 = 2;
        }
        parcel.writeByte((byte) i14);
    }
}
