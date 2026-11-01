package com.transsion.postdetail.comment;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/transsion/postdetail/comment/SocialStatus;", "Ljava/io/Serializable;", "showTint", "", "showLike", "showShare", "showDownload", "<init>", "(ZZZZ)V", "getShowTint", "()Z", "setShowTint", "(Z)V", "getShowLike", "setShowLike", "getShowShare", "setShowShare", "getShowDownload", "setShowDownload", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SocialStatus implements Serializable {
    private boolean showDownload;
    private boolean showLike;
    private boolean showShare;
    private boolean showTint;

    public SocialStatus() {
        this(false, false, false, false, 15, null);
    }

    public SocialStatus(boolean z10, boolean z11, boolean z12, boolean z13) {
        this.showTint = z10;
        this.showLike = z11;
        this.showShare = z12;
        this.showDownload = z13;
    }

    public /* synthetic */ SocialStatus(boolean z10, boolean z11, boolean z12, boolean z13, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? true : z10, (i11 & 2) != 0 ? true : z11, (i11 & 4) != 0 ? true : z12, (i11 & 8) != 0 ? true : z13);
    }

    public static /* synthetic */ SocialStatus copy$default(SocialStatus socialStatus, boolean z10, boolean z11, boolean z12, boolean z13, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = socialStatus.showTint;
        }
        if ((i11 & 2) != 0) {
            z11 = socialStatus.showLike;
        }
        if ((i11 & 4) != 0) {
            z12 = socialStatus.showShare;
        }
        if ((i11 & 8) != 0) {
            z13 = socialStatus.showDownload;
        }
        return socialStatus.copy(z10, z11, z12, z13);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getShowTint() {
        return this.showTint;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getShowLike() {
        return this.showLike;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getShowShare() {
        return this.showShare;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getShowDownload() {
        return this.showDownload;
    }

    public final SocialStatus copy(boolean showTint, boolean showLike, boolean showShare, boolean showDownload) {
        return new SocialStatus(showTint, showLike, showShare, showDownload);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SocialStatus)) {
            return false;
        }
        SocialStatus socialStatus = (SocialStatus) other;
        return this.showTint == socialStatus.showTint && this.showLike == socialStatus.showLike && this.showShare == socialStatus.showShare && this.showDownload == socialStatus.showDownload;
    }

    public final boolean getShowDownload() {
        return this.showDownload;
    }

    public final boolean getShowLike() {
        return this.showLike;
    }

    public final boolean getShowShare() {
        return this.showShare;
    }

    public final boolean getShowTint() {
        return this.showTint;
    }

    public int hashCode() {
        return (((((androidx.compose.foundation.e.a(this.showTint) * 31) + androidx.compose.foundation.e.a(this.showLike)) * 31) + androidx.compose.foundation.e.a(this.showShare)) * 31) + androidx.compose.foundation.e.a(this.showDownload);
    }

    public final void setShowDownload(boolean z10) {
        this.showDownload = z10;
    }

    public final void setShowLike(boolean z10) {
        this.showLike = z10;
    }

    public final void setShowShare(boolean z10) {
        this.showShare = z10;
    }

    public final void setShowTint(boolean z10) {
        this.showTint = z10;
    }

    public String toString() {
        return "SocialStatus(showTint=" + this.showTint + ", showLike=" + this.showLike + ", showShare=" + this.showShare + ", showDownload=" + this.showDownload + ")";
    }
}
