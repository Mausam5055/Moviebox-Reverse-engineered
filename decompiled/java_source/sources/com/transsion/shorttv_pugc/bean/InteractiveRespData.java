package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/InteractiveRespData;", "", "isAffected", "", "likes", "", "<init>", "(ZI)V", "()Z", "getLikes", "()I", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class InteractiveRespData {
    private final boolean isAffected;
    private final int likes;

    /* JADX WARN: Multi-variable type inference failed */
    public InteractiveRespData() {
        this(false, 0 == true ? 1 : 0, 3, null);
    }

    public InteractiveRespData(boolean z10, int i11) {
        this.isAffected = z10;
        this.likes = i11;
    }

    public /* synthetic */ InteractiveRespData(boolean z10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? false : z10, (i12 & 2) != 0 ? 0 : i11);
    }

    public static /* synthetic */ InteractiveRespData copy$default(InteractiveRespData interactiveRespData, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = interactiveRespData.isAffected;
        }
        if ((i12 & 2) != 0) {
            i11 = interactiveRespData.likes;
        }
        return interactiveRespData.copy(z10, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsAffected() {
        return this.isAffected;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getLikes() {
        return this.likes;
    }

    public final InteractiveRespData copy(boolean isAffected, int likes) {
        return new InteractiveRespData(isAffected, likes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InteractiveRespData)) {
            return false;
        }
        InteractiveRespData interactiveRespData = (InteractiveRespData) other;
        return this.isAffected == interactiveRespData.isAffected && this.likes == interactiveRespData.likes;
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
        return "InteractiveRespData(isAffected=" + this.isAffected + ", likes=" + this.likes + ")";
    }
}
