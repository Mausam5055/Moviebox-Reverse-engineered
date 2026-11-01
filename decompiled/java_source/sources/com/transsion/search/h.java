package com.transsion.search;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f52181b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f52182c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.search.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return h.b();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f52183a = Executors.newFixedThreadPool(3);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            return (h) h.f52182c.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h b() {
        return new h();
    }

    public final void d(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f52183a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
