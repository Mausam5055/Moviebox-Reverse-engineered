package com.transsion.shorttv._channel.model;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;", "Ljava/io/Serializable;", "colNum", "", "shape", "", "<init>", "(ILjava/lang/String;)V", "getColNum", "()I", "getShape", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTvLayoutStyle implements Serializable {

    @SerializedName("colNum")
    private final int colNum;

    @SerializedName("shape")
    private final String shape;

    public ShortTvLayoutStyle(int i11, String shape) {
        Intrinsics.h(shape, "shape");
        this.colNum = i11;
        this.shape = shape;
    }

    public static /* synthetic */ ShortTvLayoutStyle copy$default(ShortTvLayoutStyle shortTvLayoutStyle, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = shortTvLayoutStyle.colNum;
        }
        if ((i12 & 2) != 0) {
            str = shortTvLayoutStyle.shape;
        }
        return shortTvLayoutStyle.copy(i11, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getColNum() {
        return this.colNum;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getShape() {
        return this.shape;
    }

    public final ShortTvLayoutStyle copy(int colNum, String shape) {
        Intrinsics.h(shape, "shape");
        return new ShortTvLayoutStyle(colNum, shape);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShortTvLayoutStyle)) {
            return false;
        }
        ShortTvLayoutStyle shortTvLayoutStyle = (ShortTvLayoutStyle) other;
        return this.colNum == shortTvLayoutStyle.colNum && Intrinsics.c(this.shape, shortTvLayoutStyle.shape);
    }

    public final int getColNum() {
        return this.colNum;
    }

    public final String getShape() {
        return this.shape;
    }

    public int hashCode() {
        return (this.colNum * 31) + this.shape.hashCode();
    }

    public String toString() {
        return "ShortTvLayoutStyle(colNum=" + this.colNum + ", shape=" + this.shape + ")";
    }
}
