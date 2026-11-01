package com.cloud.tmc.ad.bean;

import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\bHÆ\u0003J\t\u0010 \u001a\u00020\bHÆ\u0003JE\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\bHÖ\u0001J\t\u0010'\u001a\u00020(HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000e¨\u0006)"}, d2 = {"Lcom/cloud/tmc/ad/bean/DownUpPointBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "downX", "", "downY", "upX", "upY", "imageH", "", "imageW", "(FFFFII)V", "getDownX", "()F", "setDownX", "(F)V", "getDownY", "setDownY", "getImageH", "()I", "setImageH", "(I)V", "getImageW", "setImageW", "getUpX", "setUpX", "getUpY", "setUpY", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DownUpPointBean extends BaseBean {
    private float downX;
    private float downY;
    private int imageH;
    private int imageW;
    private float upX;
    private float upY;

    public DownUpPointBean() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 63, null);
    }

    public DownUpPointBean(float f11, float f12, float f13, float f14, int i11, int i12) {
        this.downX = f11;
        this.downY = f12;
        this.upX = f13;
        this.upY = f14;
        this.imageH = i11;
        this.imageW = i12;
    }

    public /* synthetic */ DownUpPointBean(float f11, float f12, float f13, float f14, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0.0f : f11, (i13 & 2) != 0 ? 0.0f : f12, (i13 & 4) != 0 ? 0.0f : f13, (i13 & 8) == 0 ? f14 : 0.0f, (i13 & 16) != 0 ? 0 : i11, (i13 & 32) != 0 ? 0 : i12);
    }

    public static /* synthetic */ DownUpPointBean copy$default(DownUpPointBean downUpPointBean, float f11, float f12, float f13, float f14, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            f11 = downUpPointBean.downX;
        }
        if ((i13 & 2) != 0) {
            f12 = downUpPointBean.downY;
        }
        float f15 = f12;
        if ((i13 & 4) != 0) {
            f13 = downUpPointBean.upX;
        }
        float f16 = f13;
        if ((i13 & 8) != 0) {
            f14 = downUpPointBean.upY;
        }
        float f17 = f14;
        if ((i13 & 16) != 0) {
            i11 = downUpPointBean.imageH;
        }
        int i14 = i11;
        if ((i13 & 32) != 0) {
            i12 = downUpPointBean.imageW;
        }
        return downUpPointBean.copy(f11, f15, f16, f17, i14, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getDownX() {
        return this.downX;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getDownY() {
        return this.downY;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getUpX() {
        return this.upX;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final float getUpY() {
        return this.upY;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getImageH() {
        return this.imageH;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getImageW() {
        return this.imageW;
    }

    public final DownUpPointBean copy(float downX, float downY, float upX, float upY, int imageH, int imageW) {
        return new DownUpPointBean(downX, downY, upX, upY, imageH, imageW);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownUpPointBean)) {
            return false;
        }
        DownUpPointBean downUpPointBean = (DownUpPointBean) other;
        return Float.compare(this.downX, downUpPointBean.downX) == 0 && Float.compare(this.downY, downUpPointBean.downY) == 0 && Float.compare(this.upX, downUpPointBean.upX) == 0 && Float.compare(this.upY, downUpPointBean.upY) == 0 && this.imageH == downUpPointBean.imageH && this.imageW == downUpPointBean.imageW;
    }

    public final float getDownX() {
        return this.downX;
    }

    public final float getDownY() {
        return this.downY;
    }

    public final int getImageH() {
        return this.imageH;
    }

    public final int getImageW() {
        return this.imageW;
    }

    public final float getUpX() {
        return this.upX;
    }

    public final float getUpY() {
        return this.upY;
    }

    public int hashCode() {
        return (((((((((Float.floatToIntBits(this.downX) * 31) + Float.floatToIntBits(this.downY)) * 31) + Float.floatToIntBits(this.upX)) * 31) + Float.floatToIntBits(this.upY)) * 31) + this.imageH) * 31) + this.imageW;
    }

    public final void setDownX(float f11) {
        this.downX = f11;
    }

    public final void setDownY(float f11) {
        this.downY = f11;
    }

    public final void setImageH(int i11) {
        this.imageH = i11;
    }

    public final void setImageW(int i11) {
        this.imageW = i11;
    }

    public final void setUpX(float f11) {
        this.upX = f11;
    }

    public final void setUpY(float f11) {
        this.upY = f11;
    }

    public String toString() {
        return "DownUpPointBean(downX=" + this.downX + ", downY=" + this.downY + ", upX=" + this.upX + ", upY=" + this.upY + ", imageH=" + this.imageH + ", imageW=" + this.imageW + ")";
    }
}
