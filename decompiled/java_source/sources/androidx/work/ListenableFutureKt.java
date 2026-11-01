package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ListenableFutureKt {
    public static final com.google.common.util.concurrent.r f(final Executor executor, final String debugTag, final Function0 block) {
        Intrinsics.h(executor, "<this>");
        Intrinsics.h(debugTag, "debugTag");
        Intrinsics.h(block, "block");
        com.google.common.util.concurrent.r rVarA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.b() { // from class: androidx.work.p
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.b
            public final Object a(CallbackToFutureAdapter.a aVar) {
                return ListenableFutureKt.g(executor, debugTag, block, aVar);
            }
        });
        Intrinsics.g(rVarA, "getFuture(...)");
        return rVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object g(Executor executor, String str, final Function0 function0, final CallbackToFutureAdapter.a completer) {
        Intrinsics.h(completer, "completer");
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        completer.a(new Runnable() { // from class: androidx.work.q
            @Override // java.lang.Runnable
            public final void run() {
                ListenableFutureKt.h(atomicBoolean);
            }
        }, DirectExecutor.INSTANCE);
        executor.execute(new Runnable() { // from class: androidx.work.r
            @Override // java.lang.Runnable
            public final void run() {
                ListenableFutureKt.i(atomicBoolean, completer, function0);
            }
        });
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(AtomicBoolean atomicBoolean) {
        atomicBoolean.set(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.a aVar, Function0 function0) {
        if (atomicBoolean.get()) {
            return;
        }
        try {
            aVar.c(function0.invoke());
        } catch (Throwable th2) {
            aVar.f(th2);
        }
    }

    public static final com.google.common.util.concurrent.r j(final CoroutineContext context, final CoroutineStart start, final Function2 block) {
        Intrinsics.h(context, "context");
        Intrinsics.h(start, "start");
        Intrinsics.h(block, "block");
        com.google.common.util.concurrent.r rVarA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.b() { // from class: androidx.work.n
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.b
            public final Object a(CallbackToFutureAdapter.a aVar) {
                return ListenableFutureKt.l(context, start, block, aVar);
            }
        });
        Intrinsics.g(rVarA, "getFuture(...)");
        return rVarA;
    }

    public static /* synthetic */ com.google.common.util.concurrent.r k(CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i11 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return j(coroutineContext, coroutineStart, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object l(CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, CallbackToFutureAdapter.a completer) {
        Intrinsics.h(completer, "completer");
        final t1 t1Var = (t1) coroutineContext.get(t1.f67996l1);
        completer.a(new Runnable() { // from class: androidx.work.o
            @Override // java.lang.Runnable
            public final void run() {
                ListenableFutureKt.m(t1Var);
            }
        }, DirectExecutor.INSTANCE);
        return kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(coroutineContext), null, coroutineStart, new ListenableFutureKt$launchFuture$1$2(function2, completer, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(t1 t1Var) {
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
    }
}
