package com.transsion.mpush.core.config;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J5\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u001e\u001a\u00020\u0007J\u0013\u0010\u001f\u001a\u00020\u00032\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0007HÖ\u0001J\t\u0010#\u001a\u00020\u0005HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012¨\u0006)"}, d2 = {"Lcom/transsion/mpush/core/config/PermanentConfig;", "Landroid/os/Parcelable;", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "startTime", "", "interval", "", CampaignEx.JSON_KEY_TITLE, "<init>", "(ZLjava/lang/String;ILjava/lang/String;)V", "getEnable", "()Z", "setEnable", "(Z)V", "getStartTime", "()Ljava/lang/String;", "setStartTime", "(Ljava/lang/String;)V", "getInterval", "()I", "setInterval", "(I)V", "getTitle", "setTitle", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PermanentConfig implements Parcelable {
    public static final Parcelable.Creator<PermanentConfig> CREATOR = new Creator();
    private boolean enable;
    private int interval;
    private String startTime;
    private String title;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<PermanentConfig> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PermanentConfig createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PermanentConfig(parcel.readInt() != 0, parcel.readString(), parcel.readInt(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PermanentConfig[] newArray(int i11) {
            return new PermanentConfig[i11];
        }
    }

    public PermanentConfig(boolean z10, String str, int i11, String str2) {
        this.enable = z10;
        this.startTime = str;
        this.interval = i11;
        this.title = str2;
    }

    public /* synthetic */ PermanentConfig(boolean z10, String str, int i11, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? true : z10, str, (i12 & 4) != 0 ? 0 : i11, (i12 & 8) != 0 ? null : str2);
    }

    public static /* synthetic */ PermanentConfig copy$default(PermanentConfig permanentConfig, boolean z10, String str, int i11, String str2, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = permanentConfig.enable;
        }
        if ((i12 & 2) != 0) {
            str = permanentConfig.startTime;
        }
        if ((i12 & 4) != 0) {
            i11 = permanentConfig.interval;
        }
        if ((i12 & 8) != 0) {
            str2 = permanentConfig.title;
        }
        return permanentConfig.copy(z10, str, i11, str2);
    }

    public final native boolean component1();

    public final native String component2();

    public final native int component3();

    public final native String component4();

    public final native PermanentConfig copy(boolean enable, String startTime, int interval, String title);

    @Override // android.os.Parcelable
    public final native int describeContents();

    public native boolean equals(Object other);

    public final native boolean getEnable();

    public final native int getInterval();

    public final native String getStartTime();

    public final native String getTitle();

    public native int hashCode();

    public final native void setEnable(boolean z10);

    public final native void setInterval(int i11);

    public final native void setStartTime(String str);

    public final native void setTitle(String str);

    public native String toString();

    @Override // android.os.Parcelable
    public final native void writeToParcel(Parcel dest, int flags);
}
