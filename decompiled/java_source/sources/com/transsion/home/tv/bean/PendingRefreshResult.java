package com.transsion.home.tv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.home.bean.SubOperateData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u000bHÆ\u0003JI\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0006\u0010'\u001a\u00020(J\u0013\u0010)\u001a\u00020\u00052\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020(HÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020(R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u00063"}, d2 = {"Lcom/transsion/home/tv/bean/PendingRefreshResult;", "Landroid/os/Parcelable;", "countryCode", "", "operateDone", "", "channelDone", "channelFailed", "operateData", "Lcom/transsion/home/bean/SubOperateData;", "channelData", "Lcom/transsion/home/tv/bean/TvChannelListDataBean;", "<init>", "(Ljava/lang/String;ZZZLcom/transsion/home/bean/SubOperateData;Lcom/transsion/home/tv/bean/TvChannelListDataBean;)V", "getCountryCode", "()Ljava/lang/String;", "getOperateDone", "()Z", "setOperateDone", "(Z)V", "getChannelDone", "setChannelDone", "getChannelFailed", "setChannelFailed", "getOperateData", "()Lcom/transsion/home/bean/SubOperateData;", "setOperateData", "(Lcom/transsion/home/bean/SubOperateData;)V", "getChannelData", "()Lcom/transsion/home/tv/bean/TvChannelListDataBean;", "setChannelData", "(Lcom/transsion/home/tv/bean/TvChannelListDataBean;)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PendingRefreshResult implements Parcelable {
    private TvChannelListDataBean channelData;
    private boolean channelDone;
    private boolean channelFailed;
    private final String countryCode;
    private SubOperateData operateData;
    private boolean operateDone;
    public static final Parcelable.Creator<PendingRefreshResult> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PendingRefreshResult createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PendingRefreshResult(parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() == 0 ? null : SubOperateData.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? TvChannelListDataBean.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PendingRefreshResult[] newArray(int i11) {
            return new PendingRefreshResult[i11];
        }
    }

    public PendingRefreshResult(String countryCode, boolean z10, boolean z11, boolean z12, SubOperateData subOperateData, TvChannelListDataBean tvChannelListDataBean) {
        Intrinsics.h(countryCode, "countryCode");
        this.countryCode = countryCode;
        this.operateDone = z10;
        this.channelDone = z11;
        this.channelFailed = z12;
        this.operateData = subOperateData;
        this.channelData = tvChannelListDataBean;
    }

    public /* synthetic */ PendingRefreshResult(String str, boolean z10, boolean z11, boolean z12, SubOperateData subOperateData, TvChannelListDataBean tvChannelListDataBean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? false : z11, (i11 & 8) == 0 ? z12 : false, (i11 & 16) != 0 ? null : subOperateData, (i11 & 32) == 0 ? tvChannelListDataBean : null);
    }

    public static /* synthetic */ PendingRefreshResult copy$default(PendingRefreshResult pendingRefreshResult, String str, boolean z10, boolean z11, boolean z12, SubOperateData subOperateData, TvChannelListDataBean tvChannelListDataBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = pendingRefreshResult.countryCode;
        }
        if ((i11 & 2) != 0) {
            z10 = pendingRefreshResult.operateDone;
        }
        boolean z13 = z10;
        if ((i11 & 4) != 0) {
            z11 = pendingRefreshResult.channelDone;
        }
        boolean z14 = z11;
        if ((i11 & 8) != 0) {
            z12 = pendingRefreshResult.channelFailed;
        }
        boolean z15 = z12;
        if ((i11 & 16) != 0) {
            subOperateData = pendingRefreshResult.operateData;
        }
        SubOperateData subOperateData2 = subOperateData;
        if ((i11 & 32) != 0) {
            tvChannelListDataBean = pendingRefreshResult.channelData;
        }
        return pendingRefreshResult.copy(str, z13, z14, z15, subOperateData2, tvChannelListDataBean);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getOperateDone() {
        return this.operateDone;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getChannelDone() {
        return this.channelDone;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getChannelFailed() {
        return this.channelFailed;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final SubOperateData getOperateData() {
        return this.operateData;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final TvChannelListDataBean getChannelData() {
        return this.channelData;
    }

    public final PendingRefreshResult copy(String countryCode, boolean operateDone, boolean channelDone, boolean channelFailed, SubOperateData operateData, TvChannelListDataBean channelData) {
        Intrinsics.h(countryCode, "countryCode");
        return new PendingRefreshResult(countryCode, operateDone, channelDone, channelFailed, operateData, channelData);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PendingRefreshResult)) {
            return false;
        }
        PendingRefreshResult pendingRefreshResult = (PendingRefreshResult) other;
        return Intrinsics.c(this.countryCode, pendingRefreshResult.countryCode) && this.operateDone == pendingRefreshResult.operateDone && this.channelDone == pendingRefreshResult.channelDone && this.channelFailed == pendingRefreshResult.channelFailed && Intrinsics.c(this.operateData, pendingRefreshResult.operateData) && Intrinsics.c(this.channelData, pendingRefreshResult.channelData);
    }

    public final TvChannelListDataBean getChannelData() {
        return this.channelData;
    }

    public final boolean getChannelDone() {
        return this.channelDone;
    }

    public final boolean getChannelFailed() {
        return this.channelFailed;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final SubOperateData getOperateData() {
        return this.operateData;
    }

    public final boolean getOperateDone() {
        return this.operateDone;
    }

    public int hashCode() {
        int iHashCode = ((((((this.countryCode.hashCode() * 31) + e.a(this.operateDone)) * 31) + e.a(this.channelDone)) * 31) + e.a(this.channelFailed)) * 31;
        SubOperateData subOperateData = this.operateData;
        int iHashCode2 = (iHashCode + (subOperateData == null ? 0 : subOperateData.hashCode())) * 31;
        TvChannelListDataBean tvChannelListDataBean = this.channelData;
        return iHashCode2 + (tvChannelListDataBean != null ? tvChannelListDataBean.hashCode() : 0);
    }

    public final void setChannelData(TvChannelListDataBean tvChannelListDataBean) {
        this.channelData = tvChannelListDataBean;
    }

    public final void setChannelDone(boolean z10) {
        this.channelDone = z10;
    }

    public final void setChannelFailed(boolean z10) {
        this.channelFailed = z10;
    }

    public final void setOperateData(SubOperateData subOperateData) {
        this.operateData = subOperateData;
    }

    public final void setOperateDone(boolean z10) {
        this.operateDone = z10;
    }

    public String toString() {
        return "PendingRefreshResult(countryCode=" + this.countryCode + ", operateDone=" + this.operateDone + ", channelDone=" + this.channelDone + ", channelFailed=" + this.channelFailed + ", operateData=" + this.operateData + ", channelData=" + this.channelData + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.countryCode);
        dest.writeInt(this.operateDone ? 1 : 0);
        dest.writeInt(this.channelDone ? 1 : 0);
        dest.writeInt(this.channelFailed ? 1 : 0);
        SubOperateData subOperateData = this.operateData;
        if (subOperateData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            subOperateData.writeToParcel(dest, flags);
        }
        TvChannelListDataBean tvChannelListDataBean = this.channelData;
        if (tvChannelListDataBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            tvChannelListDataBean.writeToParcel(dest, flags);
        }
    }
}
