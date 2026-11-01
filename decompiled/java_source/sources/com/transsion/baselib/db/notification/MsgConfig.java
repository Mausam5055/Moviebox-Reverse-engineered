package com.transsion.baselib.db.notification;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b+\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Ba\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010(\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010*\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010-\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010Jz\u0010/\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00100J\u0006\u00101\u001a\u000202J\u0013\u00103\u001a\u00020\u00032\b\u00104\u001a\u0004\u0018\u000105HÖ\u0003J\t\u00106\u001a\u000202HÖ\u0001J\t\u00107\u001a\u00020\u0006HÖ\u0001J\u0016\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u000202R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u001e\u0010\u0010\"\u0004\b\u001f\u0010\u0012R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b \u0010\u0010\"\u0004\b!\u0010\u0012R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010\u0019R\u001e\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b$\u0010\u0010\"\u0004\b%\u0010\u0012¨\u0006="}, d2 = {"Lcom/transsion/baselib/db/notification/MsgConfig;", "Landroid/os/Parcelable;", "brightScreen", "", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "endTime", "", "floatingWindow", "pushGap", "ring", "shock", "startTime", "unlock", "<init>", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V", "getBrightScreen", "()Ljava/lang/Boolean;", "setBrightScreen", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getEnable", "setEnable", "getEndTime", "()Ljava/lang/String;", "setEndTime", "(Ljava/lang/String;)V", "getFloatingWindow", "setFloatingWindow", "getPushGap", "setPushGap", "getRing", "setRing", "getShock", "setShock", "getStartTime", "setStartTime", "getUnlock", "setUnlock", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/transsion/baselib/db/notification/MsgConfig;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MsgConfig implements Parcelable {
    public static final Parcelable.Creator<MsgConfig> CREATOR = new a();
    private Boolean brightScreen;
    private Boolean enable;
    private String endTime;
    private Boolean floatingWindow;
    private String pushGap;
    private Boolean ring;
    private Boolean shock;
    private String startTime;
    private Boolean unlock;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MsgConfig createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Boolean boolValueOf2;
            Boolean boolValueOf3;
            Boolean boolValueOf4;
            Boolean boolValueOf5;
            Boolean boolValueOf6;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() == 0) {
                boolValueOf2 = null;
            } else {
                boolValueOf2 = Boolean.valueOf(parcel.readInt() != 0);
            }
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf3 = null;
            } else {
                boolValueOf3 = Boolean.valueOf(parcel.readInt() != 0);
            }
            String string2 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf4 = null;
            } else {
                boolValueOf4 = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() == 0) {
                boolValueOf5 = null;
            } else {
                boolValueOf5 = Boolean.valueOf(parcel.readInt() != 0);
            }
            String string3 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf6 = null;
            } else {
                boolValueOf6 = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new MsgConfig(boolValueOf, boolValueOf2, string, boolValueOf3, string2, boolValueOf4, boolValueOf5, string3, boolValueOf6);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MsgConfig[] newArray(int i11) {
            return new MsgConfig[i11];
        }
    }

    public MsgConfig(Boolean bool, Boolean bool2, String str, Boolean bool3, String str2, Boolean bool4, Boolean bool5, String str3, Boolean bool6) {
        this.brightScreen = bool;
        this.enable = bool2;
        this.endTime = str;
        this.floatingWindow = bool3;
        this.pushGap = str2;
        this.ring = bool4;
        this.shock = bool5;
        this.startTime = str3;
        this.unlock = bool6;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getBrightScreen() {
        return this.brightScreen;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Boolean getEnable() {
        return this.enable;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEndTime() {
        return this.endTime;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getFloatingWindow() {
        return this.floatingWindow;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPushGap() {
        return this.pushGap;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Boolean getRing() {
        return this.ring;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Boolean getShock() {
        return this.shock;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Boolean getUnlock() {
        return this.unlock;
    }

    public final MsgConfig copy(Boolean brightScreen, Boolean enable, String endTime, Boolean floatingWindow, String pushGap, Boolean ring, Boolean shock, String startTime, Boolean unlock) {
        return new MsgConfig(brightScreen, enable, endTime, floatingWindow, pushGap, ring, shock, startTime, unlock);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MsgConfig)) {
            return false;
        }
        MsgConfig msgConfig = (MsgConfig) other;
        return Intrinsics.c(this.brightScreen, msgConfig.brightScreen) && Intrinsics.c(this.enable, msgConfig.enable) && Intrinsics.c(this.endTime, msgConfig.endTime) && Intrinsics.c(this.floatingWindow, msgConfig.floatingWindow) && Intrinsics.c(this.pushGap, msgConfig.pushGap) && Intrinsics.c(this.ring, msgConfig.ring) && Intrinsics.c(this.shock, msgConfig.shock) && Intrinsics.c(this.startTime, msgConfig.startTime) && Intrinsics.c(this.unlock, msgConfig.unlock);
    }

    public final Boolean getBrightScreen() {
        return this.brightScreen;
    }

    public final Boolean getEnable() {
        return this.enable;
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final Boolean getFloatingWindow() {
        return this.floatingWindow;
    }

    public final String getPushGap() {
        return this.pushGap;
    }

    public final Boolean getRing() {
        return this.ring;
    }

    public final Boolean getShock() {
        return this.shock;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final Boolean getUnlock() {
        return this.unlock;
    }

    public int hashCode() {
        Boolean bool = this.brightScreen;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Boolean bool2 = this.enable;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str = this.endTime;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool3 = this.floatingWindow;
        int iHashCode4 = (iHashCode3 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str2 = this.pushGap;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool4 = this.ring;
        int iHashCode6 = (iHashCode5 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.shock;
        int iHashCode7 = (iHashCode6 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        String str3 = this.startTime;
        int iHashCode8 = (iHashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool6 = this.unlock;
        return iHashCode8 + (bool6 != null ? bool6.hashCode() : 0);
    }

    public final void setBrightScreen(Boolean bool) {
        this.brightScreen = bool;
    }

    public final void setEnable(Boolean bool) {
        this.enable = bool;
    }

    public final void setEndTime(String str) {
        this.endTime = str;
    }

    public final void setFloatingWindow(Boolean bool) {
        this.floatingWindow = bool;
    }

    public final void setPushGap(String str) {
        this.pushGap = str;
    }

    public final void setRing(Boolean bool) {
        this.ring = bool;
    }

    public final void setShock(Boolean bool) {
        this.shock = bool;
    }

    public final void setStartTime(String str) {
        this.startTime = str;
    }

    public final void setUnlock(Boolean bool) {
        this.unlock = bool;
    }

    public String toString() {
        return "MsgConfig(brightScreen=" + this.brightScreen + ", enable=" + this.enable + ", endTime=" + this.endTime + ", floatingWindow=" + this.floatingWindow + ", pushGap=" + this.pushGap + ", ring=" + this.ring + ", shock=" + this.shock + ", startTime=" + this.startTime + ", unlock=" + this.unlock + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Boolean bool = this.brightScreen;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        Boolean bool2 = this.enable;
        if (bool2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool2.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.endTime);
        Boolean bool3 = this.floatingWindow;
        if (bool3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool3.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.pushGap);
        Boolean bool4 = this.ring;
        if (bool4 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool4.booleanValue() ? 1 : 0);
        }
        Boolean bool5 = this.shock;
        if (bool5 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool5.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.startTime);
        Boolean bool6 = this.unlock;
        if (bool6 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool6.booleanValue() ? 1 : 0);
        }
    }
}
