package com.cloud.tmc.offline.download.thread;

import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;", "Ljava/util/concurrent/ThreadFactory;", "name", "", "daemon", "", "(Ljava/lang/String;Z)V", "atomicInteger", "Ljava/util/concurrent/atomic/AtomicInteger;", "getAtomicInteger", "()Ljava/util/concurrent/atomic/AtomicInteger;", "atomicInteger$delegate", "Lkotlin/Lazy;", "newThread", "Ljava/lang/Thread;", CampaignEx.JSON_KEY_AD_R, "Ljava/lang/Runnable;", "Companion", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadThreadFactory implements ThreadFactory {
    private static final String TAG = "TmcOfflineDownload: DownLoadThreadFactory";

    /* JADX INFO: renamed from: atomicInteger$delegate, reason: from kotlin metadata */
    private final Lazy atomicInteger;
    private final boolean daemon;
    private final String name;

    public DownloadThreadFactory(String name, boolean z10) {
        Intrinsics.h(name, "name");
        this.name = name;
        this.daemon = z10;
        this.atomicInteger = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<AtomicInteger>() { // from class: com.cloud.tmc.offline.download.thread.DownloadThreadFactory$atomicInteger$2
            @Override // kotlin.jvm.functions.Function0
            public final AtomicInteger invoke() {
                return new AtomicInteger();
            }
        });
    }

    private final AtomicInteger getAtomicInteger() {
        return (AtomicInteger) this.atomicInteger.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void newThread$lambda$0(Runnable runnable) {
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Exception e11) {
                if (AppDynamicBuildConfig.isAppDebugAble()) {
                    TmcLogger.e(TAG, "线程池中的某个线程发生了问题，请查看控制台或者日志文件！。", e11);
                }
            }
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(final Runnable r11) {
        Thread thread = new Thread(new Runnable() { // from class: com.cloud.tmc.offline.download.thread.d
            @Override // java.lang.Runnable
            public final void run() {
                DownloadThreadFactory.newThread$lambda$0(r11);
            }
        }, this.name + "-" + getAtomicInteger().getAndIncrement());
        thread.setDaemon(this.daemon);
        return thread;
    }
}
