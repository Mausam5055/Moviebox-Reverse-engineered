package com.transsion.search_pugc;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f52490b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f52491c = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.search_pugc.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return j.b();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f52492a = Executors.newFixedThreadPool(3);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final j a() {
            return (j) j.f52491c.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j b() {
        return new j();
    }

    public final void d(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        ExecutorService executorService = this.f52492a;
        if (executorService != null) {
            executorService.submit(runnable);
        }
    }
}
