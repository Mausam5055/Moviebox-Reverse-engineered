package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0017"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "topPopover", "Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;", "bottomPopover", "exitReminder", "(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)V", "getBottomPopover", "()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;", "getExitReminder", "getTopPopover", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniAppAutoOperationConfig extends BaseBean {
    private final MiniAppAutoPopover bottomPopover;
    private final MiniAppAutoPopover exitReminder;
    private final MiniAppAutoPopover topPopover;

    public MiniAppAutoOperationConfig(MiniAppAutoPopover miniAppAutoPopover, MiniAppAutoPopover miniAppAutoPopover2, MiniAppAutoPopover miniAppAutoPopover3) {
        this.topPopover = miniAppAutoPopover;
        this.bottomPopover = miniAppAutoPopover2;
        this.exitReminder = miniAppAutoPopover3;
    }

    public static /* synthetic */ MiniAppAutoOperationConfig copy$default(MiniAppAutoOperationConfig miniAppAutoOperationConfig, MiniAppAutoPopover miniAppAutoPopover, MiniAppAutoPopover miniAppAutoPopover2, MiniAppAutoPopover miniAppAutoPopover3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            miniAppAutoPopover = miniAppAutoOperationConfig.topPopover;
        }
        if ((i11 & 2) != 0) {
            miniAppAutoPopover2 = miniAppAutoOperationConfig.bottomPopover;
        }
        if ((i11 & 4) != 0) {
            miniAppAutoPopover3 = miniAppAutoOperationConfig.exitReminder;
        }
        return miniAppAutoOperationConfig.copy(miniAppAutoPopover, miniAppAutoPopover2, miniAppAutoPopover3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final MiniAppAutoPopover getTopPopover() {
        return this.topPopover;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MiniAppAutoPopover getBottomPopover() {
        return this.bottomPopover;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final MiniAppAutoPopover getExitReminder() {
        return this.exitReminder;
    }

    public final MiniAppAutoOperationConfig copy(MiniAppAutoPopover topPopover, MiniAppAutoPopover bottomPopover, MiniAppAutoPopover exitReminder) {
        return new MiniAppAutoOperationConfig(topPopover, bottomPopover, exitReminder);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniAppAutoOperationConfig)) {
            return false;
        }
        MiniAppAutoOperationConfig miniAppAutoOperationConfig = (MiniAppAutoOperationConfig) other;
        return Intrinsics.c(this.topPopover, miniAppAutoOperationConfig.topPopover) && Intrinsics.c(this.bottomPopover, miniAppAutoOperationConfig.bottomPopover) && Intrinsics.c(this.exitReminder, miniAppAutoOperationConfig.exitReminder);
    }

    public final MiniAppAutoPopover getBottomPopover() {
        return this.bottomPopover;
    }

    public final MiniAppAutoPopover getExitReminder() {
        return this.exitReminder;
    }

    public final MiniAppAutoPopover getTopPopover() {
        return this.topPopover;
    }

    public int hashCode() {
        MiniAppAutoPopover miniAppAutoPopover = this.topPopover;
        int iHashCode = (miniAppAutoPopover == null ? 0 : miniAppAutoPopover.hashCode()) * 31;
        MiniAppAutoPopover miniAppAutoPopover2 = this.bottomPopover;
        int iHashCode2 = (iHashCode + (miniAppAutoPopover2 == null ? 0 : miniAppAutoPopover2.hashCode())) * 31;
        MiniAppAutoPopover miniAppAutoPopover3 = this.exitReminder;
        return iHashCode2 + (miniAppAutoPopover3 != null ? miniAppAutoPopover3.hashCode() : 0);
    }

    public String toString() {
        return "MiniAppAutoOperationConfig(topPopover=" + this.topPopover + ", bottomPopover=" + this.bottomPopover + ", exitReminder=" + this.exitReminder + ")";
    }
}
