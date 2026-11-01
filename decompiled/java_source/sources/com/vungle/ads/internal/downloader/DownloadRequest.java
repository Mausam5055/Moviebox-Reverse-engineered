package com.vungle.ads.internal.downloader;

import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.n;
import com.vungle.ads.x;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class DownloadRequest {
    private final AdAsset asset;
    private final AtomicBoolean cancelled;
    private x downloadDuration;
    private final n logEntry;
    private final Priority priority;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;", "", TrackingKey.PRIORITY, "", "(Ljava/lang/String;II)V", "getPriority", "()I", "CRITICAL", "HIGHEST", "HIGH", "LOWEST", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum Priority {
        CRITICAL(-2147483647),
        HIGHEST(0),
        HIGH(1),
        LOWEST(Integer.MAX_VALUE);

        private final int priority;

        Priority(int i11) {
            this.priority = i11;
        }

        public final int getPriority() {
            return this.priority;
        }
    }

    public DownloadRequest(Priority priority, AdAsset asset, n nVar) {
        Intrinsics.h(priority, "priority");
        Intrinsics.h(asset, "asset");
        this.priority = priority;
        this.asset = asset;
        this.logEntry = nVar;
        this.cancelled = new AtomicBoolean(false);
    }

    public /* synthetic */ DownloadRequest(Priority priority, AdAsset adAsset, n nVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(priority, adAsset, (i11 & 4) != 0 ? null : nVar);
    }

    public final void cancel() {
        this.cancelled.set(true);
    }

    public final AdAsset getAsset() {
        return this.asset;
    }

    public final n getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    public final int getPriority() {
        return this.priority.getPriority();
    }

    /* JADX INFO: renamed from: getPriority, reason: collision with other method in class */
    public final Priority m393getPriority() {
        return this.priority;
    }

    public final boolean isCancelled() {
        return this.cancelled.get();
    }

    public final boolean isHtmlTemplate() {
        return Intrinsics.c(this.asset.getAdIdentifier(), AdPayload.KEY_VM);
    }

    public final boolean isMainVideo() {
        return Intrinsics.c(this.asset.getAdIdentifier(), com.vungle.ads.internal.b.KEY_MAIN_VIDEO);
    }

    public final boolean isTemplate() {
        return this.asset.getFileType() == AdAsset.FileType.ZIP || isHtmlTemplate();
    }

    public final void startRecord() {
        x xVar = new x(Sdk$SDKMetric.SDKMetricType.TEMPLATE_DOWNLOAD_DURATION_MS);
        this.downloadDuration = xVar;
        xVar.markStart();
    }

    public final void stopRecord() {
        x xVar = this.downloadDuration;
        if (xVar != null) {
            xVar.markEnd();
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(xVar, this.logEntry, this.asset.getServerPath());
        }
    }

    public String toString() {
        return "DownloadRequest{, priority=" + this.priority + ", url='" + this.asset.getServerPath() + "', path='" + this.asset.getLocalPath() + "', cancelled=" + this.cancelled + ", logEntry=" + this.logEntry + '}';
    }
}
