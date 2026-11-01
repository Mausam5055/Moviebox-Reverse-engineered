package com.wecloud.load.lib;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/wecloud/load/lib/NativeProbeRemoteConfig;", "", "enableOnlineProbe", "", "<init>", "(Ljava/lang/Boolean;)V", "getEnableOnlineProbe", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "copy", "(Ljava/lang/Boolean;)Lcom/wecloud/load/lib/NativeProbeRemoteConfig;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "network_probe_native_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class NativeProbeRemoteConfig {
    private final Boolean enableOnlineProbe;

    /* JADX WARN: Multi-variable type inference failed */
    public NativeProbeRemoteConfig() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public NativeProbeRemoteConfig(Boolean bool) {
        this.enableOnlineProbe = bool;
    }

    public /* synthetic */ NativeProbeRemoteConfig(Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : bool);
    }

    public static /* synthetic */ NativeProbeRemoteConfig copy$default(NativeProbeRemoteConfig nativeProbeRemoteConfig, Boolean bool, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = nativeProbeRemoteConfig.enableOnlineProbe;
        }
        return nativeProbeRemoteConfig.copy(bool);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getEnableOnlineProbe() {
        return this.enableOnlineProbe;
    }

    public final NativeProbeRemoteConfig copy(Boolean enableOnlineProbe) {
        return new NativeProbeRemoteConfig(enableOnlineProbe);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof NativeProbeRemoteConfig) && Intrinsics.c(this.enableOnlineProbe, ((NativeProbeRemoteConfig) other).enableOnlineProbe);
    }

    public final Boolean getEnableOnlineProbe() {
        return this.enableOnlineProbe;
    }

    public int hashCode() {
        Boolean bool = this.enableOnlineProbe;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public String toString() {
        return "NativeProbeRemoteConfig(enableOnlineProbe=" + this.enableOnlineProbe + ")";
    }
}
