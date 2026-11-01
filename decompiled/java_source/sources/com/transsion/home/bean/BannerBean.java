package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0002\b\u0018\b\u0087\b\u0018\u0000 92\u00020\u0001:\u0001:BI\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0012\b\u0002\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0018\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001bJR\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0012\b\u0002\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\t\u001a\u00020\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b!\u0010\u001bJ\u0010\u0010\"\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\"\u0010\u0015J\u001a\u0010%\u001a\u00020\u00022\b\u0010$\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b%\u0010&R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010'\u001a\u0004\b(\u0010\u0017\"\u0004\b)\u0010*R,\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010+\u001a\u0004\b,\u0010\u0019\"\u0004\b-\u0010.R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010/\u001a\u0004\b0\u0010\u001b\"\u0004\b1\u00102R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u00103\u001a\u0004\b4\u0010\u001d\"\u0004\b5\u00106R$\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010/\u001a\u0004\b7\u0010\u001b\"\u0004\b8\u00102¨\u0006;"}, d2 = {"Lcom/transsion/home/bean/BannerBean;", "Landroid/os/Parcelable;", "", "autoPlay", "", "Lcom/transsion/home/bean/BannerData;", "banners", "", "interval", "refreshAd", TtmlNode.TAG_STYLE, "<init>", "(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/Boolean;", "component2", "()Ljava/util/List;", "component3", "()Ljava/lang/String;", "component4", "()Z", "component5", "copy", "(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)Lcom/transsion/home/bean/BannerBean;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Boolean;", "getAutoPlay", "setAutoPlay", "(Ljava/lang/Boolean;)V", "Ljava/util/List;", "getBanners", "setBanners", "(Ljava/util/List;)V", "Ljava/lang/String;", "getInterval", "setInterval", "(Ljava/lang/String;)V", "Z", "getRefreshAd", "setRefreshAd", "(Z)V", "getStyle", "setStyle", "Companion", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BannerBean implements Parcelable {
    public static final String BANNER_STYLE_HORIZONTAL = "HORIZONTAL";
    private Boolean autoPlay;
    private List<BannerData> banners;
    private String interval;
    private boolean refreshAd;
    private String style;
    public static final Parcelable.Creator<BannerBean> CREATOR = new b();
    public static final int $stable = 8;

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BannerBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            Boolean boolValueOf = parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0);
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(parcel.readInt() == 0 ? null : BannerData.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new BannerBean(boolValueOf, arrayList, parcel.readString(), parcel.readInt() != 0, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final BannerBean[] newArray(int i11) {
            return new BannerBean[i11];
        }
    }

    public BannerBean() {
        this(null, null, null, false, null, 31, null);
    }

    public BannerBean(Boolean bool, List<BannerData> list, String str, boolean z10, String str2) {
        this.autoPlay = bool;
        this.banners = list;
        this.interval = str;
        this.refreshAd = z10;
        this.style = str2;
    }

    public /* synthetic */ BannerBean(Boolean bool, List list, String str, boolean z10, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : bool, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? false : z10, (i11 & 16) != 0 ? null : str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BannerBean copy$default(BannerBean bannerBean, Boolean bool, List list, String str, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = bannerBean.autoPlay;
        }
        if ((i11 & 2) != 0) {
            list = bannerBean.banners;
        }
        List list2 = list;
        if ((i11 & 4) != 0) {
            str = bannerBean.interval;
        }
        String str3 = str;
        if ((i11 & 8) != 0) {
            z10 = bannerBean.refreshAd;
        }
        boolean z11 = z10;
        if ((i11 & 16) != 0) {
            str2 = bannerBean.style;
        }
        return bannerBean.copy(bool, list2, str3, z11, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getAutoPlay() {
        return this.autoPlay;
    }

    public final List<BannerData> component2() {
        return this.banners;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getInterval() {
        return this.interval;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getRefreshAd() {
        return this.refreshAd;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getStyle() {
        return this.style;
    }

    public final BannerBean copy(Boolean autoPlay, List<BannerData> banners, String interval, boolean refreshAd, String style) {
        return new BannerBean(autoPlay, banners, interval, refreshAd, style);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BannerBean)) {
            return false;
        }
        BannerBean bannerBean = (BannerBean) other;
        return Intrinsics.c(this.autoPlay, bannerBean.autoPlay) && Intrinsics.c(this.banners, bannerBean.banners) && Intrinsics.c(this.interval, bannerBean.interval) && this.refreshAd == bannerBean.refreshAd && Intrinsics.c(this.style, bannerBean.style);
    }

    public final Boolean getAutoPlay() {
        return this.autoPlay;
    }

    public final List<BannerData> getBanners() {
        return this.banners;
    }

    public final String getInterval() {
        return this.interval;
    }

    public final boolean getRefreshAd() {
        return this.refreshAd;
    }

    public final String getStyle() {
        return this.style;
    }

    public int hashCode() {
        Boolean bool = this.autoPlay;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        List<BannerData> list = this.banners;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.interval;
        int iHashCode3 = (((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31) + e.a(this.refreshAd)) * 31;
        String str2 = this.style;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setAutoPlay(Boolean bool) {
        this.autoPlay = bool;
    }

    public final void setBanners(List<BannerData> list) {
        this.banners = list;
    }

    public final void setInterval(String str) {
        this.interval = str;
    }

    public final void setRefreshAd(boolean z10) {
        this.refreshAd = z10;
    }

    public final void setStyle(String str) {
        this.style = str;
    }

    public String toString() {
        return "BannerBean(autoPlay=" + this.autoPlay + ", banners=" + this.banners + ", interval=" + this.interval + ", refreshAd=" + this.refreshAd + ", style=" + this.style + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Boolean bool = this.autoPlay;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        List<BannerData> list = this.banners;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            for (BannerData bannerData : list) {
                if (bannerData == null) {
                    dest.writeInt(0);
                } else {
                    dest.writeInt(1);
                    bannerData.writeToParcel(dest, flags);
                }
            }
        }
        dest.writeString(this.interval);
        dest.writeInt(this.refreshAd ? 1 : 0);
        dest.writeString(this.style);
    }
}
