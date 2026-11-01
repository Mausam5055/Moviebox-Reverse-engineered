package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r0 {
    /* JADX INFO: Access modifiers changed from: private */
    public static final com.google.common.util.concurrent.r e(final Executor executor, final Function0 function0) {
        com.google.common.util.concurrent.r rVarA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.b() { // from class: androidx.work.o0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.b
            public final Object a(CallbackToFutureAdapter.a aVar) {
                return r0.f(executor, function0, aVar);
            }
        });
        Intrinsics.g(rVarA, "getFuture(...)");
        return rVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(Executor executor, final Function0 function0, final CallbackToFutureAdapter.a it) {
        Intrinsics.h(it, "it");
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        it.a(new Runnable() { // from class: androidx.work.p0
            @Override // java.lang.Runnable
            public final void run() {
                r0.g(atomicBoolean);
            }
        }, DirectExecutor.INSTANCE);
        executor.execute(new Runnable() { // from class: androidx.work.q0
            @Override // java.lang.Runnable
            public final void run() {
                r0.h(atomicBoolean, it, function0);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(AtomicBoolean atomicBoolean) {
        atomicBoolean.set(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.a aVar, Function0 function0) {
        if (atomicBoolean.get()) {
            return;
        }
        try {
            aVar.c(function0.invoke());
        } catch (Throwable th2) {
            aVar.f(th2);
        }
    }
}
