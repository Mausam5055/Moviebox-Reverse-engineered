package com.cloud.h5update.utils;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.concurrent.ThreadsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/util/concurrent/ThreadPoolExecutor;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class ExecutorUtils$singleE$2 extends Lambda implements Function0<ThreadPoolExecutor> {
    public static final ExecutorUtils$singleE$2 INSTANCE = new ExecutorUtils$singleE$2();

    ExecutorUtils$singleE$2() {
        super(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
    public static final Thread m229invoke$lambda0(final Runnable runnable) {
        return ThreadsKt.b(false, false, null, "SINGLE", 1, new Function0<Unit>() { // from class: com.cloud.h5update.utils.ExecutorUtils$singleE$2$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m230invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m230invoke() {
                runnable.run();
            }
        }, 6, null);
    }

    @Override // kotlin.jvm.functions.Function0
    public final ThreadPoolExecutor invoke() {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.NANOSECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.cloud.h5update.utils.f
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return ExecutorUtils$singleE$2.m229invoke$lambda0(runnable);
            }
        }, new ThreadPoolExecutor.DiscardPolicy());
    }
}
