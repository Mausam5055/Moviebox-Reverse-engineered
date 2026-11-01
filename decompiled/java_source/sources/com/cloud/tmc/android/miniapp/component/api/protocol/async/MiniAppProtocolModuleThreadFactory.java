package com.cloud.tmc.android.miniapp.component.api.protocol.async;

import com.cloud.tmc.component_api_ps.BuildConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/android/miniapp/component/api/protocol/async/MiniAppProtocolModuleThreadFactory;", "Ljava/util/concurrent/ThreadFactory;", "()V", "count", "Ljava/util/concurrent/atomic/AtomicInteger;", "newThread", "Ljava/lang/Thread;", CampaignEx.JSON_KEY_AD_R, "Ljava/lang/Runnable;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppProtocolModuleThreadFactory implements ThreadFactory {
    private static final String THREAD_NAME_PREFIX = "MiniAppProtocolModuleThread-";
    private final AtomicInteger count = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable r11) {
        String str;
        try {
            str = THREAD_NAME_PREFIX + this.count.getAndIncrement();
        } catch (Throwable unused) {
            str = "";
        }
        return new Thread(r11, str);
    }
}
