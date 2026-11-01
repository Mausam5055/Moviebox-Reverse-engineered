package com.transsion.shorttv_pugc.base.helper;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u001dHÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u001dR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\r¨\u0006)"}, d2 = {"Lcom/transsion/shorttv_pugc/base/helper/ReferrerBean;", "Landroid/os/Parcelable;", "utmSource", "", "utmContent", "utmTerm", "utmMedium", "utmCampaign", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUtmSource", "()Ljava/lang/String;", "setUtmSource", "(Ljava/lang/String;)V", "getUtmContent", "setUtmContent", "getUtmTerm", "setUtmTerm", "getUtmMedium", "setUtmMedium", "getUtmCampaign", "setUtmCampaign", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ReferrerBean implements Parcelable {
    public static final Parcelable.Creator<ReferrerBean> CREATOR = new a();
    private String utmCampaign;
    private String utmContent;
    private String utmMedium;
    private String utmSource;
    private String utmTerm;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReferrerBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new ReferrerBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ReferrerBean[] newArray(int i11) {
            return new ReferrerBean[i11];
        }
    }

    public ReferrerBean() {
        this(null, null, null, null, null, 31, null);
    }

    public ReferrerBean(String str, String str2, String str3, String str4, String str5) {
        this.utmSource = str;
        this.utmContent = str2;
        this.utmTerm = str3;
        this.utmMedium = str4;
        this.utmCampaign = str5;
    }

    public /* synthetic */ ReferrerBean(String str, String str2, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5);
    }

    public static /* synthetic */ ReferrerBean copy$default(ReferrerBean referrerBean, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = referrerBean.utmSource;
        }
        if ((i11 & 2) != 0) {
            str2 = referrerBean.utmContent;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = referrerBean.utmTerm;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = referrerBean.utmMedium;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = referrerBean.utmCampaign;
        }
        return referrerBean.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUtmSource() {
        return this.utmSource;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUtmContent() {
        return this.utmContent;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUtmTerm() {
        return this.utmTerm;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUtmMedium() {
        return this.utmMedium;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUtmCampaign() {
        return this.utmCampaign;
    }

    public final ReferrerBean copy(String utmSource, String utmContent, String utmTerm, String utmMedium, String utmCampaign) {
        return new ReferrerBean(utmSource, utmContent, utmTerm, utmMedium, utmCampaign);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReferrerBean)) {
            return false;
        }
        ReferrerBean referrerBean = (ReferrerBean) other;
        return Intrinsics.c(this.utmSource, referrerBean.utmSource) && Intrinsics.c(this.utmContent, referrerBean.utmContent) && Intrinsics.c(this.utmTerm, referrerBean.utmTerm) && Intrinsics.c(this.utmMedium, referrerBean.utmMedium) && Intrinsics.c(this.utmCampaign, referrerBean.utmCampaign);
    }

    public final String getUtmCampaign() {
        return this.utmCampaign;
    }

    public final String getUtmContent() {
        return this.utmContent;
    }

    public final String getUtmMedium() {
        return this.utmMedium;
    }

    public final String getUtmSource() {
        return this.utmSource;
    }

    public final String getUtmTerm() {
        return this.utmTerm;
    }

    public int hashCode() {
        String str = this.utmSource;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.utmContent;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.utmTerm;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.utmMedium;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.utmCampaign;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setUtmCampaign(String str) {
        this.utmCampaign = str;
    }

    public final void setUtmContent(String str) {
        this.utmContent = str;
    }

    public final void setUtmMedium(String str) {
        this.utmMedium = str;
    }

    public final void setUtmSource(String str) {
        this.utmSource = str;
    }

    public final void setUtmTerm(String str) {
        this.utmTerm = str;
    }

    public String toString() {
        return "ReferrerBean(utmSource=" + this.utmSource + ", utmContent=" + this.utmContent + ", utmTerm=" + this.utmTerm + ", utmMedium=" + this.utmMedium + ", utmCampaign=" + this.utmCampaign + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.utmSource);
        dest.writeString(this.utmContent);
        dest.writeString(this.utmTerm);
        dest.writeString(this.utmMedium);
        dest.writeString(this.utmCampaign);
    }
}
