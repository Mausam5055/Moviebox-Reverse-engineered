package com.transsion.home.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/transsion/home/bean/RangeValue;", "Ljava/io/Serializable;", "minVal", "", "maxVal", "<init>", "(FF)V", "getMinVal", "()F", "getMaxVal", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RangeValue implements Serializable {
    public static final int $stable = 0;
    private final float maxVal;
    private final float minVal;

    public RangeValue(float f11, float f12) {
        this.minVal = f11;
        this.maxVal = f12;
    }

    public static /* synthetic */ RangeValue copy$default(RangeValue rangeValue, float f11, float f12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = rangeValue.minVal;
        }
        if ((i11 & 2) != 0) {
            f12 = rangeValue.maxVal;
        }
        return rangeValue.copy(f11, f12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getMinVal() {
        return this.minVal;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getMaxVal() {
        return this.maxVal;
    }

    public final RangeValue copy(float minVal, float maxVal) {
        return new RangeValue(minVal, maxVal);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RangeValue)) {
            return false;
        }
        RangeValue rangeValue = (RangeValue) other;
        return Float.compare(this.minVal, rangeValue.minVal) == 0 && Float.compare(this.maxVal, rangeValue.maxVal) == 0;
    }

    public final float getMaxVal() {
        return this.maxVal;
    }

    public final float getMinVal() {
        return this.minVal;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.minVal) * 31) + Float.floatToIntBits(this.maxVal);
    }

    public String toString() {
        return "RangeValue(minVal=" + this.minVal + ", maxVal=" + this.maxVal + ")";
    }
}
