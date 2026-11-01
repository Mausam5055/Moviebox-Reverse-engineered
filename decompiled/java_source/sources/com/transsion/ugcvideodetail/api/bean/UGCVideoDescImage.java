package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0018"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;", "Ljava/io/Serializable;", "previewImage", "Lcom/transsion/moviedetailapi/bean/Cover;", "originalImage", "<init>", "(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Cover;)V", "getPreviewImage", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setPreviewImage", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getOriginalImage", "setOriginalImage", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoDescImage implements Serializable {
    private Cover originalImage;
    private Cover previewImage;

    /* JADX WARN: Multi-variable type inference failed */
    public UGCVideoDescImage() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public UGCVideoDescImage(Cover cover, Cover cover2) {
        this.previewImage = cover;
        this.originalImage = cover2;
    }

    public /* synthetic */ UGCVideoDescImage(Cover cover, Cover cover2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : cover, (i11 & 2) != 0 ? null : cover2);
    }

    public static /* synthetic */ UGCVideoDescImage copy$default(UGCVideoDescImage uGCVideoDescImage, Cover cover, Cover cover2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            cover = uGCVideoDescImage.previewImage;
        }
        if ((i11 & 2) != 0) {
            cover2 = uGCVideoDescImage.originalImage;
        }
        return uGCVideoDescImage.copy(cover, cover2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Cover getPreviewImage() {
        return this.previewImage;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Cover getOriginalImage() {
        return this.originalImage;
    }

    public final UGCVideoDescImage copy(Cover previewImage, Cover originalImage) {
        return new UGCVideoDescImage(previewImage, originalImage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoDescImage)) {
            return false;
        }
        UGCVideoDescImage uGCVideoDescImage = (UGCVideoDescImage) other;
        return Intrinsics.c(this.previewImage, uGCVideoDescImage.previewImage) && Intrinsics.c(this.originalImage, uGCVideoDescImage.originalImage);
    }

    public final Cover getOriginalImage() {
        return this.originalImage;
    }

    public final Cover getPreviewImage() {
        return this.previewImage;
    }

    public int hashCode() {
        Cover cover = this.previewImage;
        int iHashCode = (cover == null ? 0 : cover.hashCode()) * 31;
        Cover cover2 = this.originalImage;
        return iHashCode + (cover2 != null ? cover2.hashCode() : 0);
    }

    public final void setOriginalImage(Cover cover) {
        this.originalImage = cover;
    }

    public final void setPreviewImage(Cover cover) {
        this.previewImage = cover;
    }

    public String toString() {
        return "UGCVideoDescImage(previewImage=" + this.previewImage + ", originalImage=" + this.originalImage + ")";
    }
}
