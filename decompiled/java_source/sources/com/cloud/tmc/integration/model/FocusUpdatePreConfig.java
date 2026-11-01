package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/integration/model/FocusUpdatePreConfig;", "Lcom/cloud/tmc/kernel/model/BaseBean;", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "version", "", "(ZLjava/lang/String;)V", "getEnable", "()Z", "getVersion", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FocusUpdatePreConfig extends BaseBean {
    private final boolean enable;
    private final String version;

    public FocusUpdatePreConfig(boolean z10, String version) {
        Intrinsics.h(version, "version");
        this.enable = z10;
        this.version = version;
    }

    public static /* synthetic */ FocusUpdatePreConfig copy$default(FocusUpdatePreConfig focusUpdatePreConfig, boolean z10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = focusUpdatePreConfig.enable;
        }
        if ((i11 & 2) != 0) {
            str = focusUpdatePreConfig.version;
        }
        return focusUpdatePreConfig.copy(z10, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnable() {
        return this.enable;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final FocusUpdatePreConfig copy(boolean enable, String version) {
        Intrinsics.h(version, "version");
        return new FocusUpdatePreConfig(enable, version);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FocusUpdatePreConfig)) {
            return false;
        }
        FocusUpdatePreConfig focusUpdatePreConfig = (FocusUpdatePreConfig) other;
        return this.enable == focusUpdatePreConfig.enable && Intrinsics.c(this.version, focusUpdatePreConfig.version);
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final String getVersion() {
        return this.version;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z10 = this.enable;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        return (r11 * 31) + this.version.hashCode();
    }

    public String toString() {
        return "FocusUpdatePreConfig(enable=" + this.enable + ", version=" + this.version + ")";
    }
}
