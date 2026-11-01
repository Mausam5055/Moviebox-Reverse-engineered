package com.wecloud.load.lib.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/wecloud/load/lib/bean/SoLoadControlConfig;", "Landroid/os/Parcelable;", "enableService", "", "exitProcess", "<init>", "(ZZ)V", "getEnableService", "()Z", "getExitProcess", "component1", "component2", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SoLoadControlConfig implements Parcelable {
    public static final Parcelable.Creator<SoLoadControlConfig> CREATOR = new a();
    private final boolean enableService;
    private final boolean exitProcess;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SoLoadControlConfig createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new SoLoadControlConfig(parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SoLoadControlConfig[] newArray(int i11) {
            return new SoLoadControlConfig[i11];
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SoLoadControlConfig() {
        boolean z10 = false;
        this(z10, z10, 3, null);
    }

    public SoLoadControlConfig(boolean z10, boolean z11) {
        this.enableService = z10;
        this.exitProcess = z11;
    }

    public /* synthetic */ SoLoadControlConfig(boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? false : z11);
    }

    public static /* synthetic */ SoLoadControlConfig copy$default(SoLoadControlConfig soLoadControlConfig, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = soLoadControlConfig.enableService;
        }
        if ((i11 & 2) != 0) {
            z11 = soLoadControlConfig.exitProcess;
        }
        return soLoadControlConfig.copy(z10, z11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnableService() {
        return this.enableService;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getExitProcess() {
        return this.exitProcess;
    }

    public final SoLoadControlConfig copy(boolean enableService, boolean exitProcess) {
        return new SoLoadControlConfig(enableService, exitProcess);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SoLoadControlConfig)) {
            return false;
        }
        SoLoadControlConfig soLoadControlConfig = (SoLoadControlConfig) other;
        return this.enableService == soLoadControlConfig.enableService && this.exitProcess == soLoadControlConfig.exitProcess;
    }

    public final boolean getEnableService() {
        return this.enableService;
    }

    public final boolean getExitProcess() {
        return this.exitProcess;
    }

    public int hashCode() {
        return (e.a(this.enableService) * 31) + e.a(this.exitProcess);
    }

    public String toString() {
        return "SoLoadControlConfig(enableService=" + this.enableService + ", exitProcess=" + this.exitProcess + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.enableService ? 1 : 0);
        dest.writeInt(this.exitProcess ? 1 : 0);
    }
}
