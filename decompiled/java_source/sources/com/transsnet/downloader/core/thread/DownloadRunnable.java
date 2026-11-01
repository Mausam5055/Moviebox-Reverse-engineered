package com.transsnet.downloader.core.thread;

import com.cloud.config.utils.XLogUtil;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadRange;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B?\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/transsnet/downloader/core/thread/DownloadRunnable;", "Ljava/lang/Runnable;", "Lcom/transsnet/downloader/core/thread/b;", "Lcom/transsion/baselib/db/download/DownloadRange;", "downloadRange", "Lcom/transsnet/downloader/proxy/b;", "proxyHelper", "", "threadIndex", "Lcom/transsnet/downloader/core/c;", "downloadResponse", "Loy/c;", XLogUtil.TAG, "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadInfo", "Lcom/transsnet/downloader/core/thread/d;", "downloadProgressListener", "<init>", "(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V", "", "run", "()V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadRunnable extends b implements Runnable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadRunnable(DownloadRange downloadRange, com.transsnet.downloader.proxy.b proxyHelper, int i11, com.transsnet.downloader.core.c downloadResponse, oy.c config, DownloadBean downloadInfo, d downloadProgressListener) {
        super(downloadRange, proxyHelper, i11, downloadResponse, config, downloadInfo, downloadProgressListener);
        Intrinsics.h(downloadRange, "downloadRange");
        Intrinsics.h(proxyHelper, "proxyHelper");
        Intrinsics.h(downloadResponse, "downloadResponse");
        Intrinsics.h(config, "config");
        Intrinsics.h(downloadInfo, "downloadInfo");
        Intrinsics.h(downloadProgressListener, "downloadProgressListener");
    }

    @Override // java.lang.Runnable
    public void run() {
        startDownload();
    }
}
