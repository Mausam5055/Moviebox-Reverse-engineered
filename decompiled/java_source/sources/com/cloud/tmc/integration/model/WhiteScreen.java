package com.cloud.tmc.integration.model;

import androidx.collection.s;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J'\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Lcom/cloud/tmc/integration/model/WhiteScreen;", "Ljava/io/Serializable;", "grayScale", "", "checkNowDelay", "", "checkIntervalArray", "", "(FJ[I)V", "getCheckIntervalArray", "()[I", "setCheckIntervalArray", "([I)V", "getCheckNowDelay", "()J", "setCheckNowDelay", "(J)V", "getGrayScale", "()F", "setGrayScale", "(F)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class WhiteScreen implements Serializable {
    private int[] checkIntervalArray;
    private long checkNowDelay;
    private float grayScale;

    public WhiteScreen() {
        this(0.0f, 0L, null, 7, null);
    }

    public WhiteScreen(float f11, long j11, int[] checkIntervalArray) {
        Intrinsics.h(checkIntervalArray, "checkIntervalArray");
        this.grayScale = f11;
        this.checkNowDelay = j11;
        this.checkIntervalArray = checkIntervalArray;
    }

    public /* synthetic */ WhiteScreen(float f11, long j11, int[] iArr, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0.0f : f11, (i11 & 2) != 0 ? 0L : j11, (i11 & 4) != 0 ? new int[0] : iArr);
    }

    public static /* synthetic */ WhiteScreen copy$default(WhiteScreen whiteScreen, float f11, long j11, int[] iArr, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = whiteScreen.grayScale;
        }
        if ((i11 & 2) != 0) {
            j11 = whiteScreen.checkNowDelay;
        }
        if ((i11 & 4) != 0) {
            iArr = whiteScreen.checkIntervalArray;
        }
        return whiteScreen.copy(f11, j11, iArr);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getGrayScale() {
        return this.grayScale;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getCheckNowDelay() {
        return this.checkNowDelay;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int[] getCheckIntervalArray() {
        return this.checkIntervalArray;
    }

    public final WhiteScreen copy(float grayScale, long checkNowDelay, int[] checkIntervalArray) {
        Intrinsics.h(checkIntervalArray, "checkIntervalArray");
        return new WhiteScreen(grayScale, checkNowDelay, checkIntervalArray);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WhiteScreen)) {
            return false;
        }
        WhiteScreen whiteScreen = (WhiteScreen) other;
        return Float.compare(this.grayScale, whiteScreen.grayScale) == 0 && this.checkNowDelay == whiteScreen.checkNowDelay && Intrinsics.c(this.checkIntervalArray, whiteScreen.checkIntervalArray);
    }

    public final int[] getCheckIntervalArray() {
        return this.checkIntervalArray;
    }

    public final long getCheckNowDelay() {
        return this.checkNowDelay;
    }

    public final float getGrayScale() {
        return this.grayScale;
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.grayScale) * 31) + s.a(this.checkNowDelay)) * 31) + Arrays.hashCode(this.checkIntervalArray);
    }

    public final void setCheckIntervalArray(int[] iArr) {
        Intrinsics.h(iArr, "<set-?>");
        this.checkIntervalArray = iArr;
    }

    public final void setCheckNowDelay(long j11) {
        this.checkNowDelay = j11;
    }

    public final void setGrayScale(float f11) {
        this.grayScale = f11;
    }

    public String toString() {
        return "WhiteScreen(grayScale=" + this.grayScale + ", checkNowDelay=" + this.checkNowDelay + ", checkIntervalArray=" + Arrays.toString(this.checkIntervalArray) + ")";
    }
}
