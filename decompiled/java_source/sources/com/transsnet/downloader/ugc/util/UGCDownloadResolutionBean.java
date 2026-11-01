package com.transsnet.downloader.ugc.util;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, d2 = {"Lcom/transsnet/downloader/ugc/util/UGCDownloadResolutionBean;", "Ljava/io/Serializable;", "content", "", "name", "", "<init>", "(ILjava/lang/String;)V", "getContent", "()I", "getName", "()Ljava/lang/String;", "isSelected", "", "()Z", "setSelected", "(Z)V", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCDownloadResolutionBean implements Serializable {
    private final int content;
    private boolean isSelected;
    private final String name;

    public UGCDownloadResolutionBean(int i11, String name) {
        Intrinsics.h(name, "name");
        this.content = i11;
        this.name = name;
    }

    public static /* synthetic */ UGCDownloadResolutionBean copy$default(UGCDownloadResolutionBean uGCDownloadResolutionBean, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = uGCDownloadResolutionBean.content;
        }
        if ((i12 & 2) != 0) {
            str = uGCDownloadResolutionBean.name;
        }
        return uGCDownloadResolutionBean.copy(i11, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getContent() {
        return this.content;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final UGCDownloadResolutionBean copy(int content, String name) {
        Intrinsics.h(name, "name");
        return new UGCDownloadResolutionBean(content, name);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCDownloadResolutionBean)) {
            return false;
        }
        UGCDownloadResolutionBean uGCDownloadResolutionBean = (UGCDownloadResolutionBean) other;
        return this.content == uGCDownloadResolutionBean.content && Intrinsics.c(this.name, uGCDownloadResolutionBean.name);
    }

    public final int getContent() {
        return this.content;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (this.content * 31) + this.name.hashCode();
    }

    /* JADX INFO: renamed from: isSelected, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public String toString() {
        return "UGCDownloadResolutionBean(content=" + this.content + ", name=" + this.name + ")";
    }
}
