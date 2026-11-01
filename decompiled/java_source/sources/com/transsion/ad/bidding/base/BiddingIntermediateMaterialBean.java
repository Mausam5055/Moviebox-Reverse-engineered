package com.transsion.ad.bidding.base;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.annotation.Keep;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.ad.bidding.banner.BiddingHiSavanaBannerProvider;
import com.transsion.ad.monopoly.model.AdPlans;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b:\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u000b\u0010B\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u0010\u0010H\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u00101J\u000b\u0010I\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\t\u0010L\u001a\u00020\u0017HÆ\u0003J\u009c\u0001\u0010M\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0017HÆ\u0001¢\u0006\u0002\u0010NJ\u0006\u0010O\u001a\u00020\u0017J\u0013\u0010P\u001a\u00020\u00112\b\u0010Q\u001a\u0004\u0018\u00010RHÖ\u0003J\t\u0010S\u001a\u00020\u0017HÖ\u0001J\t\u0010T\u001a\u00020\u0013HÖ\u0001J\u0016\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020\u0017R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0019\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u000e\n\u0000\u0012\u0004\b#\u0010 \u001a\u0004\b$\u0010%R\u0019\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u000e\n\u0000\u0012\u0004\b&\u0010 \u001a\u0004\b'\u0010(R\"\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b)\u0010 \u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u000e\n\u0000\u0012\u0004\b.\u0010 \u001a\u0004\b/\u00100R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u0010\n\u0002\u00104\u001a\u0004\b\u0010\u00101\"\u0004\b2\u00103R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u00106\"\u0004\b:\u00108R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00106\"\u0004\b<\u00108R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@¨\u0006Z"}, d2 = {"Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "Landroid/os/Parcelable;", TrackingKey.ECPM, "", "plans", "Lcom/transsion/ad/monopoly/model/AdPlans;", "nativeInfo", "Lcom/hisavana/common/bean/TAdNativeInfo;", "sspNativeInfo", "Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;", "hiSavanaBannerProvider", "Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;", "bannerView", "Landroid/view/View;", "hiSavanaInterceptProvider", "Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;", "isExpend", "", "sceneId", "", "sceneSubId", "errorMsg", "adSource", "", "<init>", "(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getEcpm", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getPlans", "()Lcom/transsion/ad/monopoly/model/AdPlans;", "getNativeInfo$annotations", "()V", "getNativeInfo", "()Lcom/hisavana/common/bean/TAdNativeInfo;", "getSspNativeInfo$annotations", "getSspNativeInfo", "()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;", "getHiSavanaBannerProvider$annotations", "getHiSavanaBannerProvider", "()Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;", "getBannerView$annotations", "getBannerView", "()Landroid/view/View;", "setBannerView", "(Landroid/view/View;)V", "getHiSavanaInterceptProvider$annotations", "getHiSavanaInterceptProvider", "()Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;", "()Ljava/lang/Boolean;", "setExpend", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getSceneId", "()Ljava/lang/String;", "setSceneId", "(Ljava/lang/String;)V", "getSceneSubId", "setSceneSubId", "getErrorMsg", "setErrorMsg", "getAdSource", "()I", "setAdSource", "(I)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BiddingIntermediateMaterialBean implements Parcelable {
    public static final Parcelable.Creator<BiddingIntermediateMaterialBean> CREATOR = new a();
    private int adSource;
    private View bannerView;
    private final Double ecpm;
    private String errorMsg;
    private final BiddingHiSavanaBannerProvider hiSavanaBannerProvider;
    private final AbsBiddingInterceptHiSavanaAdManager hiSavanaInterceptProvider;
    private Boolean isExpend;
    private final TAdNativeInfo nativeInfo;
    private final AdPlans plans;
    private String sceneId;
    private String sceneSubId;
    private final TaNativeInfo sspNativeInfo;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BiddingIntermediateMaterialBean createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            Double dValueOf = parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble());
            AdPlans adPlans = (AdPlans) parcel.readParcelable(BiddingIntermediateMaterialBean.class.getClassLoader());
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new BiddingIntermediateMaterialBean(dValueOf, adPlans, null, null, null, null, null, boolValueOf, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final BiddingIntermediateMaterialBean[] newArray(int i11) {
            return new BiddingIntermediateMaterialBean[i11];
        }
    }

    public BiddingIntermediateMaterialBean(Double d11, AdPlans adPlans, TAdNativeInfo tAdNativeInfo, TaNativeInfo taNativeInfo, BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider, View view, AbsBiddingInterceptHiSavanaAdManager absBiddingInterceptHiSavanaAdManager, Boolean bool, String str, String str2, String str3, int i11) {
        this.ecpm = d11;
        this.plans = adPlans;
        this.nativeInfo = tAdNativeInfo;
        this.sspNativeInfo = taNativeInfo;
        this.hiSavanaBannerProvider = biddingHiSavanaBannerProvider;
        this.bannerView = view;
        this.hiSavanaInterceptProvider = absBiddingInterceptHiSavanaAdManager;
        this.isExpend = bool;
        this.sceneId = str;
        this.sceneSubId = str2;
        this.errorMsg = str3;
        this.adSource = i11;
    }

    public /* synthetic */ BiddingIntermediateMaterialBean(Double d11, AdPlans adPlans, TAdNativeInfo tAdNativeInfo, TaNativeInfo taNativeInfo, BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider, View view, AbsBiddingInterceptHiSavanaAdManager absBiddingInterceptHiSavanaAdManager, Boolean bool, String str, String str2, String str3, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : d11, (i12 & 2) != 0 ? null : adPlans, (i12 & 4) != 0 ? null : tAdNativeInfo, (i12 & 8) != 0 ? null : taNativeInfo, (i12 & 16) != 0 ? null : biddingHiSavanaBannerProvider, (i12 & 32) != 0 ? null : view, (i12 & 64) != 0 ? null : absBiddingInterceptHiSavanaAdManager, (i12 & 128) != 0 ? Boolean.FALSE : bool, (i12 & 256) != 0 ? null : str, (i12 & 512) != 0 ? null : str2, (i12 & 1024) != 0 ? null : str3, i11);
    }

    public static /* synthetic */ void getBannerView$annotations() {
    }

    public static /* synthetic */ void getHiSavanaBannerProvider$annotations() {
    }

    public static /* synthetic */ void getHiSavanaInterceptProvider$annotations() {
    }

    public static /* synthetic */ void getNativeInfo$annotations() {
    }

    public static /* synthetic */ void getSspNativeInfo$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Double getEcpm() {
        return this.ecpm;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getSceneSubId() {
        return this.sceneSubId;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getErrorMsg() {
        return this.errorMsg;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final int getAdSource() {
        return this.adSource;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final AdPlans getPlans() {
        return this.plans;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TAdNativeInfo getNativeInfo() {
        return this.nativeInfo;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final TaNativeInfo getSspNativeInfo() {
        return this.sspNativeInfo;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final BiddingHiSavanaBannerProvider getHiSavanaBannerProvider() {
        return this.hiSavanaBannerProvider;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final View getBannerView() {
        return this.bannerView;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final AbsBiddingInterceptHiSavanaAdManager getHiSavanaInterceptProvider() {
        return this.hiSavanaInterceptProvider;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Boolean getIsExpend() {
        return this.isExpend;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSceneId() {
        return this.sceneId;
    }

    public final BiddingIntermediateMaterialBean copy(Double ecpm, AdPlans plans, TAdNativeInfo nativeInfo, TaNativeInfo sspNativeInfo, BiddingHiSavanaBannerProvider hiSavanaBannerProvider, View bannerView, AbsBiddingInterceptHiSavanaAdManager hiSavanaInterceptProvider, Boolean isExpend, String sceneId, String sceneSubId, String errorMsg, int adSource) {
        return new BiddingIntermediateMaterialBean(ecpm, plans, nativeInfo, sspNativeInfo, hiSavanaBannerProvider, bannerView, hiSavanaInterceptProvider, isExpend, sceneId, sceneSubId, errorMsg, adSource);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BiddingIntermediateMaterialBean)) {
            return false;
        }
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) other;
        return Intrinsics.c(this.ecpm, biddingIntermediateMaterialBean.ecpm) && Intrinsics.c(this.plans, biddingIntermediateMaterialBean.plans) && Intrinsics.c(this.nativeInfo, biddingIntermediateMaterialBean.nativeInfo) && Intrinsics.c(this.sspNativeInfo, biddingIntermediateMaterialBean.sspNativeInfo) && Intrinsics.c(this.hiSavanaBannerProvider, biddingIntermediateMaterialBean.hiSavanaBannerProvider) && Intrinsics.c(this.bannerView, biddingIntermediateMaterialBean.bannerView) && Intrinsics.c(this.hiSavanaInterceptProvider, biddingIntermediateMaterialBean.hiSavanaInterceptProvider) && Intrinsics.c(this.isExpend, biddingIntermediateMaterialBean.isExpend) && Intrinsics.c(this.sceneId, biddingIntermediateMaterialBean.sceneId) && Intrinsics.c(this.sceneSubId, biddingIntermediateMaterialBean.sceneSubId) && Intrinsics.c(this.errorMsg, biddingIntermediateMaterialBean.errorMsg) && this.adSource == biddingIntermediateMaterialBean.adSource;
    }

    public final int getAdSource() {
        return this.adSource;
    }

    public final View getBannerView() {
        return this.bannerView;
    }

    public final Double getEcpm() {
        return this.ecpm;
    }

    public final String getErrorMsg() {
        return this.errorMsg;
    }

    public final BiddingHiSavanaBannerProvider getHiSavanaBannerProvider() {
        return this.hiSavanaBannerProvider;
    }

    public final AbsBiddingInterceptHiSavanaAdManager getHiSavanaInterceptProvider() {
        return this.hiSavanaInterceptProvider;
    }

    public final TAdNativeInfo getNativeInfo() {
        return this.nativeInfo;
    }

    public final AdPlans getPlans() {
        return this.plans;
    }

    public final String getSceneId() {
        return this.sceneId;
    }

    public final String getSceneSubId() {
        return this.sceneSubId;
    }

    public final TaNativeInfo getSspNativeInfo() {
        return this.sspNativeInfo;
    }

    public int hashCode() {
        Double d11 = this.ecpm;
        int iHashCode = (d11 == null ? 0 : d11.hashCode()) * 31;
        AdPlans adPlans = this.plans;
        int iHashCode2 = (iHashCode + (adPlans == null ? 0 : adPlans.hashCode())) * 31;
        TAdNativeInfo tAdNativeInfo = this.nativeInfo;
        int iHashCode3 = (iHashCode2 + (tAdNativeInfo == null ? 0 : tAdNativeInfo.hashCode())) * 31;
        TaNativeInfo taNativeInfo = this.sspNativeInfo;
        int iHashCode4 = (iHashCode3 + (taNativeInfo == null ? 0 : taNativeInfo.hashCode())) * 31;
        BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider = this.hiSavanaBannerProvider;
        int iHashCode5 = (iHashCode4 + (biddingHiSavanaBannerProvider == null ? 0 : biddingHiSavanaBannerProvider.hashCode())) * 31;
        View view = this.bannerView;
        int iHashCode6 = (iHashCode5 + (view == null ? 0 : view.hashCode())) * 31;
        AbsBiddingInterceptHiSavanaAdManager absBiddingInterceptHiSavanaAdManager = this.hiSavanaInterceptProvider;
        int iHashCode7 = (iHashCode6 + (absBiddingInterceptHiSavanaAdManager == null ? 0 : absBiddingInterceptHiSavanaAdManager.hashCode())) * 31;
        Boolean bool = this.isExpend;
        int iHashCode8 = (iHashCode7 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.sceneId;
        int iHashCode9 = (iHashCode8 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.sceneSubId;
        int iHashCode10 = (iHashCode9 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.errorMsg;
        return ((iHashCode10 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.adSource;
    }

    public final Boolean isExpend() {
        return this.isExpend;
    }

    public final void setAdSource(int i11) {
        this.adSource = i11;
    }

    public final void setBannerView(View view) {
        this.bannerView = view;
    }

    public final void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public final void setExpend(Boolean bool) {
        this.isExpend = bool;
    }

    public final void setSceneId(String str) {
        this.sceneId = str;
    }

    public final void setSceneSubId(String str) {
        this.sceneSubId = str;
    }

    public String toString() {
        return "BiddingIntermediateMaterialBean(ecpm=" + this.ecpm + ", plans=" + this.plans + ", nativeInfo=" + this.nativeInfo + ", sspNativeInfo=" + this.sspNativeInfo + ", hiSavanaBannerProvider=" + this.hiSavanaBannerProvider + ", bannerView=" + this.bannerView + ", hiSavanaInterceptProvider=" + this.hiSavanaInterceptProvider + ", isExpend=" + this.isExpend + ", sceneId=" + this.sceneId + ", sceneSubId=" + this.sceneSubId + ", errorMsg=" + this.errorMsg + ", adSource=" + this.adSource + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Double d11 = this.ecpm;
        if (d11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeDouble(d11.doubleValue());
        }
        dest.writeParcelable(this.plans, flags);
        Boolean bool = this.isExpend;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.sceneId);
        dest.writeString(this.sceneSubId);
        dest.writeString(this.errorMsg);
        dest.writeInt(this.adSource);
    }
}
