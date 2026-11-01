package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoLikeResponse;", "Ljava/io/Serializable;", "isAffected", "", "likes", "", "<init>", "(ZI)V", "()Z", "getLikes", "()I", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoLikeResponse implements Serializable {
    private final boolean isAffected;
    private final int likes;

    public UGCVideoLikeResponse(boolean z10, int i11) {
        this.isAffected = z10;
        this.likes = i11;
    }

    public static /* synthetic */ UGCVideoLikeResponse copy$default(UGCVideoLikeResponse uGCVideoLikeResponse, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = uGCVideoLikeResponse.isAffected;
        }
        if ((i12 & 2) != 0) {
            i11 = uGCVideoLikeResponse.likes;
        }
        return uGCVideoLikeResponse.copy(z10, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsAffected() {
        return this.isAffected;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getLikes() {
        return this.likes;
    }

    public final UGCVideoLikeResponse copy(boolean isAffected, int likes) {
        return new UGCVideoLikeResponse(isAffected, likes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoLikeResponse)) {
            return false;
        }
        UGCVideoLikeResponse uGCVideoLikeResponse = (UGCVideoLikeResponse) other;
        return this.isAffected == uGCVideoLikeResponse.isAffected && this.likes == uGCVideoLikeResponse.likes;
    }

    public final int getLikes() {
        return this.likes;
    }

    public int hashCode() {
        return (e.a(this.isAffected) * 31) + this.likes;
    }

    public final boolean isAffected() {
        return this.isAffected;
    }

    public String toString() {
        return "UGCVideoLikeResponse(isAffected=" + this.isAffected + ", likes=" + this.likes + ")";
    }
}
