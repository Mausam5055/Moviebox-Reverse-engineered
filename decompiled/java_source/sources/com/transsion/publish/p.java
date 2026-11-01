package com.transsion.publish;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f50458b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f50459c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.publish.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return p.b();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f50460a = Executors.newFixedThreadPool(3);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final p a() {
            return (p) p.f50459c.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final p b() {
        return new p();
    }

    public final void d(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f50460a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
