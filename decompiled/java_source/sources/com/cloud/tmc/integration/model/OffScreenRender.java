package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J'\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001f"}, d2 = {"Lcom/cloud/tmc/integration/model/OffScreenRender;", "Lcom/cloud/tmc/kernel/model/BaseBean;", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "maxSize", "", "grayScale", "", "(ZIF)V", "getEnable", "()Z", "setEnable", "(Z)V", "getGrayScale", "()F", "setGrayScale", "(F)V", "getMaxSize", "()I", "setMaxSize", "(I)V", "component1", "component2", "component3", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OffScreenRender extends BaseBean {
    private boolean enable;
    private float grayScale;
    private int maxSize;

    public OffScreenRender(boolean z10, int i11, float f11) {
        this.enable = z10;
        this.maxSize = i11;
        this.grayScale = f11;
    }

    public /* synthetic */ OffScreenRender(boolean z10, int i11, float f11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, i11, (i12 & 4) != 0 ? 0.0f : f11);
    }

    public static /* synthetic */ OffScreenRender copy$default(OffScreenRender offScreenRender, boolean z10, int i11, float f11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = offScreenRender.enable;
        }
        if ((i12 & 2) != 0) {
            i11 = offScreenRender.maxSize;
        }
        if ((i12 & 4) != 0) {
            f11 = offScreenRender.grayScale;
        }
        return offScreenRender.copy(z10, i11, f11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getEnable() {
        return this.enable;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getMaxSize() {
        return this.maxSize;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getGrayScale() {
        return this.grayScale;
    }

    public final OffScreenRender copy(boolean enable, int maxSize, float grayScale) {
        return new OffScreenRender(enable, maxSize, grayScale);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OffScreenRender)) {
            return false;
        }
        OffScreenRender offScreenRender = (OffScreenRender) other;
        return this.enable == offScreenRender.enable && this.maxSize == offScreenRender.maxSize && Float.compare(this.grayScale, offScreenRender.grayScale) == 0;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final float getGrayScale() {
        return this.grayScale;
    }

    public final int getMaxSize() {
        return this.maxSize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z10 = this.enable;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        return (((r11 * 31) + this.maxSize) * 31) + Float.floatToIntBits(this.grayScale);
    }

    public final void setEnable(boolean z10) {
        this.enable = z10;
    }

    public final void setGrayScale(float f11) {
        this.grayScale = f11;
    }

    public final void setMaxSize(int i11) {
        this.maxSize = i11;
    }

    public String toString() {
        return "OffScreenRender(enable=" + this.enable + ", maxSize=" + this.maxSize + ", grayScale=" + this.grayScale + ")";
    }
}
