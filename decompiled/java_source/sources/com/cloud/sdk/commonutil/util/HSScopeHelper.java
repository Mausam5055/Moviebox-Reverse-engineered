package com.cloud.sdk.commonutil.util;

import android.os.Handler;
import android.os.Looper;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes3.dex */
public final class HSScopeHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f23168b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HSScopeHelper f23167a = new HSScopeHelper();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final j0 f23169c = new a(j0.f67892k1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n0 f23170d = o0.a(y0.c());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final n0 f23171e = o0.a(y0.b());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final n0 f23172f = o0.a(y0.a());

    public static final class a extends AbstractCoroutineContextElement implements j0 {
        public a(j0.a aVar) {
            super(aVar);
        }

        @Override // kotlinx.coroutines.j0
        public void o(CoroutineContext coroutineContext, Throwable th2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CoroutineExceptionHandler: ");
            sb2.append(th2.getMessage());
        }
    }

    private HSScopeHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(Function0 runnable, Function1 callback) {
        Intrinsics.h(runnable, "$runnable");
        Intrinsics.h(callback, "$callback");
        try {
            callback.invoke(new f.b(runnable.invoke()));
        } catch (Throwable th2) {
            callback.invoke(new f.a(th2));
        }
    }

    public final n0 b() {
        return f23172f;
    }

    public final boolean c() {
        return Intrinsics.c(Looper.myLooper(), Looper.getMainLooper());
    }

    public final void d(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        try {
            Handler handlerA = j.f23201a.a("hs_fetch_ad_thread");
            if (handlerA != null) {
                handlerA.removeCallbacks(runnable);
            }
        } catch (Throwable unused) {
        }
    }

    public final void e(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        Looper looperMyLooper = Looper.myLooper();
        j jVar = j.f23201a;
        Handler handlerA = jVar.a("hs_fetch_ad_thread");
        if (Intrinsics.c(looperMyLooper, handlerA != null ? handlerA.getLooper() : null)) {
            runnable.run();
            return;
        }
        Handler handlerA2 = jVar.a("hs_fetch_ad_thread");
        if (handlerA2 != null) {
            handlerA2.post(runnable);
        }
    }

    public final void f(Runnable runnable, long j11) {
        Intrinsics.h(runnable, "runnable");
        Handler handlerA = j.f23201a.a("hs_fetch_ad_thread");
        if (handlerA != null) {
            handlerA.postDelayed(runnable, j11);
        }
    }

    public final void g(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        if (f23168b) {
            com.cloud.sdk.commonutil.pool.b.b().a(runnable);
        } else {
            kotlinx.coroutines.k.d(f23171e, f23169c, null, new HSScopeHelper$runIOThread$2(runnable, null), 2, null);
        }
    }

    public final void h(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        if (c()) {
            runnable.run();
        } else {
            kotlinx.coroutines.k.d(f23170d, null, null, new HSScopeHelper$runUIThread$1(runnable, null), 3, null);
        }
    }

    public final void i(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        Looper looperMyLooper = Looper.myLooper();
        j jVar = j.f23201a;
        Handler handlerA = jVar.a("hs_work_thread");
        if (Intrinsics.c(looperMyLooper, handlerA != null ? handlerA.getLooper() : null)) {
            runnable.run();
            return;
        }
        Handler handlerA2 = jVar.a("hs_work_thread");
        if (handlerA2 != null) {
            handlerA2.post(runnable);
        }
    }

    public final void j(Runnable runnable, long j11) {
        Intrinsics.h(runnable, "runnable");
        Handler handlerA = j.f23201a.a("hs_work_thread");
        if (handlerA != null) {
            handlerA.postDelayed(runnable, j11);
        }
    }

    public final void k(final Function0 runnable, final Function1 callback) {
        Intrinsics.h(runnable, "runnable");
        Intrinsics.h(callback, "callback");
        Looper looperMyLooper = Looper.myLooper();
        j jVar = j.f23201a;
        Handler handlerA = jVar.a("hs_work_thread");
        if (Intrinsics.c(looperMyLooper, handlerA != null ? handlerA.getLooper() : null)) {
            try {
                callback.invoke(new f.b(runnable.invoke()));
                return;
            } catch (Throwable th2) {
                callback.invoke(new f.a(th2));
                return;
            }
        }
        Handler handlerA2 = jVar.a("hs_work_thread");
        if (handlerA2 != null) {
            handlerA2.post(new Runnable() { // from class: com.cloud.sdk.commonutil.util.g
                @Override // java.lang.Runnable
                public final void run() {
                    HSScopeHelper.l(runnable, callback);
                }
            });
        }
    }
}
