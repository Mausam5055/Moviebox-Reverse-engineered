package com.transsion.usercenter.profile.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0016"}, d2 = {"Lcom/transsion/usercenter/profile/bean/CoverUrl;", "", "coverUrl", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "<init>", "(Ljava/lang/String;I)V", "getCoverUrl", "()Ljava/lang/String;", "setCoverUrl", "(Ljava/lang/String;)V", "getType", "()I", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CoverUrl {
    private String coverUrl;
    private final int type;

    public CoverUrl(String str, int i11) {
        this.coverUrl = str;
        this.type = i11;
    }

    public static /* synthetic */ CoverUrl copy$default(CoverUrl coverUrl, String str, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = coverUrl.coverUrl;
        }
        if ((i12 & 2) != 0) {
            i11 = coverUrl.type;
        }
        return coverUrl.copy(str, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCoverUrl() {
        return this.coverUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getType() {
        return this.type;
    }

    public final CoverUrl copy(String coverUrl, int type) {
        return new CoverUrl(coverUrl, type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CoverUrl)) {
            return false;
        }
        CoverUrl coverUrl = (CoverUrl) other;
        return Intrinsics.c(this.coverUrl, coverUrl.coverUrl) && this.type == coverUrl.type;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.coverUrl;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.type;
    }

    public final void setCoverUrl(String str) {
        this.coverUrl = str;
    }

    public String toString() {
        return "CoverUrl(coverUrl=" + this.coverUrl + ", type=" + this.type + ")";
    }
}
