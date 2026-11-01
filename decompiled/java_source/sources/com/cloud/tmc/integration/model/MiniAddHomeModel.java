package com.cloud.tmc.integration.model;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J'\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAddHomeModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", RequestParameters.SUBRESOURCE_LOCATION, "", "sourceType", "", "showSuccessToast", "", "(Ljava/lang/String;IZ)V", "getLocation", "()Ljava/lang/String;", "getShowSuccessToast", "()Z", "setShowSuccessToast", "(Z)V", "getSourceType", "()I", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniAddHomeModel extends BaseBean {
    private final String location;
    private boolean showSuccessToast;
    private final int sourceType;

    public MiniAddHomeModel(String location, int i11, boolean z10) {
        Intrinsics.h(location, "location");
        this.location = location;
        this.sourceType = i11;
        this.showSuccessToast = z10;
    }

    public static /* synthetic */ MiniAddHomeModel copy$default(MiniAddHomeModel miniAddHomeModel, String str, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = miniAddHomeModel.location;
        }
        if ((i12 & 2) != 0) {
            i11 = miniAddHomeModel.sourceType;
        }
        if ((i12 & 4) != 0) {
            z10 = miniAddHomeModel.showSuccessToast;
        }
        return miniAddHomeModel.copy(str, i11, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLocation() {
        return this.location;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getSourceType() {
        return this.sourceType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getShowSuccessToast() {
        return this.showSuccessToast;
    }

    public final MiniAddHomeModel copy(String location, int sourceType, boolean showSuccessToast) {
        Intrinsics.h(location, "location");
        return new MiniAddHomeModel(location, sourceType, showSuccessToast);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniAddHomeModel)) {
            return false;
        }
        MiniAddHomeModel miniAddHomeModel = (MiniAddHomeModel) other;
        return Intrinsics.c(this.location, miniAddHomeModel.location) && this.sourceType == miniAddHomeModel.sourceType && this.showSuccessToast == miniAddHomeModel.showSuccessToast;
    }

    public final String getLocation() {
        return this.location;
    }

    public final boolean getShowSuccessToast() {
        return this.showSuccessToast;
    }

    public final int getSourceType() {
        return this.sourceType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public int hashCode() {
        int iHashCode = ((this.location.hashCode() * 31) + this.sourceType) * 31;
        boolean z10 = this.showSuccessToast;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        return iHashCode + r11;
    }

    public final void setShowSuccessToast(boolean z10) {
        this.showSuccessToast = z10;
    }

    public String toString() {
        return "MiniAddHomeModel(location=" + this.location + ", sourceType=" + this.sourceType + ", showSuccessToast=" + this.showSuccessToast + ")";
    }
}
