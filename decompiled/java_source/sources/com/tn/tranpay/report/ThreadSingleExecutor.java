package com.tn.tranpay.report;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class ThreadSingleExecutor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f41659b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f41660c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<ThreadSingleExecutor>() { // from class: com.tn.tranpay.report.ThreadSingleExecutor$Companion$INSTANCE$2
        @Override // kotlin.jvm.functions.Function0
        public final ThreadSingleExecutor invoke() {
            return new ThreadSingleExecutor();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f41661a = Executors.newSingleThreadExecutor(new com.tn.tranpay.report.a("tran_single"));

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ThreadSingleExecutor a() {
            return (ThreadSingleExecutor) ThreadSingleExecutor.f41660c.getValue();
        }
    }

    public final void b(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f41661a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
