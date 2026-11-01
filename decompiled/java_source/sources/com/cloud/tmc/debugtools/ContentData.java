package com.cloud.tmc.debugtools;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.proxy.performanceanalyse.IPerformanceAnalyseType;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/debugtools/ContentData;", "", "target", "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;", NotificationCompat.CATEGORY_MESSAGE, "", "(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V", "getMsg", "()Ljava/lang/String;", "getTarget", "()Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ContentData {
    private final String msg;
    private final IPerformanceAnalyseType target;

    public ContentData(IPerformanceAnalyseType target, String str) {
        Intrinsics.h(target, "target");
        this.target = target;
        this.msg = str;
    }

    public /* synthetic */ ContentData(IPerformanceAnalyseType iPerformanceAnalyseType, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(iPerformanceAnalyseType, (i11 & 2) != 0 ? null : str);
    }

    public static /* synthetic */ ContentData copy$default(ContentData contentData, IPerformanceAnalyseType iPerformanceAnalyseType, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            iPerformanceAnalyseType = contentData.target;
        }
        if ((i11 & 2) != 0) {
            str = contentData.msg;
        }
        return contentData.copy(iPerformanceAnalyseType, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final IPerformanceAnalyseType getTarget() {
        return this.target;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMsg() {
        return this.msg;
    }

    public final ContentData copy(IPerformanceAnalyseType target, String msg) {
        Intrinsics.h(target, "target");
        return new ContentData(target, msg);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ContentData)) {
            return false;
        }
        ContentData contentData = (ContentData) other;
        return Intrinsics.c(this.target, contentData.target) && Intrinsics.c(this.msg, contentData.msg);
    }

    public final String getMsg() {
        return this.msg;
    }

    public final IPerformanceAnalyseType getTarget() {
        return this.target;
    }

    public int hashCode() {
        int iHashCode = this.target.hashCode() * 31;
        String str = this.msg;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "ContentData(target=" + this.target + ", msg=" + this.msg + ")";
    }
}
