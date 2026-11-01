package com.transsion.fission;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0017\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003J1\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0006\u0010\u001c\u001a\u00020\u0004J\u0013\u0010\u001d\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u0004HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006("}, d2 = {"Lcom/transsion/fission/FissionConfig;", "Lcom/transsion/fission/WebViewCacheConfigData;", "Landroid/os/Parcelable;", "inviteNum", "", "moneyNum", "intervalDays", "inviteCodeReg", "", "<init>", "(IIIZ)V", "getInviteNum", "()I", "setInviteNum", "(I)V", "getMoneyNum", "setMoneyNum", "getIntervalDays", "setIntervalDays", "getInviteCodeReg", "()Z", "setInviteCodeReg", "(Z)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Fission_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FissionConfig extends WebViewCacheConfigData implements Parcelable {
    public static final Parcelable.Creator<FissionConfig> CREATOR = new a();
    private int intervalDays;
    private boolean inviteCodeReg;
    private int inviteNum;
    private int moneyNum;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FissionConfig createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new FissionConfig(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final FissionConfig[] newArray(int i11) {
            return new FissionConfig[i11];
        }
    }

    public FissionConfig(int i11, int i12, int i13, boolean z10) {
        super(null, null, null, 7, null);
        this.inviteNum = i11;
        this.moneyNum = i12;
        this.intervalDays = i13;
        this.inviteCodeReg = z10;
    }

    public static /* synthetic */ FissionConfig copy$default(FissionConfig fissionConfig, int i11, int i12, int i13, boolean z10, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i11 = fissionConfig.inviteNum;
        }
        if ((i14 & 2) != 0) {
            i12 = fissionConfig.moneyNum;
        }
        if ((i14 & 4) != 0) {
            i13 = fissionConfig.intervalDays;
        }
        if ((i14 & 8) != 0) {
            z10 = fissionConfig.inviteCodeReg;
        }
        return fissionConfig.copy(i11, i12, i13, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getInviteNum() {
        return this.inviteNum;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getMoneyNum() {
        return this.moneyNum;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getIntervalDays() {
        return this.intervalDays;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getInviteCodeReg() {
        return this.inviteCodeReg;
    }

    public final FissionConfig copy(int inviteNum, int moneyNum, int intervalDays, boolean inviteCodeReg) {
        return new FissionConfig(inviteNum, moneyNum, intervalDays, inviteCodeReg);
    }

    @Override // com.transsion.fission.WebViewCacheConfigData, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FissionConfig)) {
            return false;
        }
        FissionConfig fissionConfig = (FissionConfig) other;
        return this.inviteNum == fissionConfig.inviteNum && this.moneyNum == fissionConfig.moneyNum && this.intervalDays == fissionConfig.intervalDays && this.inviteCodeReg == fissionConfig.inviteCodeReg;
    }

    public final int getIntervalDays() {
        return this.intervalDays;
    }

    public final boolean getInviteCodeReg() {
        return this.inviteCodeReg;
    }

    public final int getInviteNum() {
        return this.inviteNum;
    }

    public final int getMoneyNum() {
        return this.moneyNum;
    }

    public int hashCode() {
        return (((((this.inviteNum * 31) + this.moneyNum) * 31) + this.intervalDays) * 31) + androidx.compose.foundation.e.a(this.inviteCodeReg);
    }

    public final void setIntervalDays(int i11) {
        this.intervalDays = i11;
    }

    public final void setInviteCodeReg(boolean z10) {
        this.inviteCodeReg = z10;
    }

    public final void setInviteNum(int i11) {
        this.inviteNum = i11;
    }

    public final void setMoneyNum(int i11) {
        this.moneyNum = i11;
    }

    public String toString() {
        return "FissionConfig(inviteNum=" + this.inviteNum + ", moneyNum=" + this.moneyNum + ", intervalDays=" + this.intervalDays + ", inviteCodeReg=" + this.inviteCodeReg + ")";
    }

    @Override // com.transsion.fission.WebViewCacheConfigData, android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.inviteNum);
        dest.writeInt(this.moneyNum);
        dest.writeInt(this.intervalDays);
        dest.writeInt(this.inviteCodeReg ? 1 : 0);
    }
}
