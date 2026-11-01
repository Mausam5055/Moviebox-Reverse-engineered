package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a0 {
    public static final w c(final f0 tracer, final String label, final Executor executor, final Function0 block) {
        Intrinsics.h(tracer, "tracer");
        Intrinsics.h(label, "label");
        Intrinsics.h(executor, "executor");
        Intrinsics.h(block, "block");
        final androidx.p009lifecycle.b0 b0Var = new androidx.p009lifecycle.b0(w.f16059b);
        com.google.common.util.concurrent.r rVarA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.b() { // from class: androidx.work.y
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.b
            public final Object a(CallbackToFutureAdapter.a aVar) {
                return a0.d(executor, tracer, label, block, b0Var, aVar);
            }
        });
        Intrinsics.g(rVarA, "getFuture(...)");
        return new x(b0Var, rVarA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(Executor executor, final f0 f0Var, final String str, final Function0 function0, final androidx.p009lifecycle.b0 b0Var, final CallbackToFutureAdapter.a completer) {
        Intrinsics.h(completer, "completer");
        executor.execute(new Runnable() { // from class: androidx.work.z
            @Override // java.lang.Runnable
            public final void run() {
                a0.e(f0Var, str, function0, b0Var, completer);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(f0 f0Var, String str, Function0 function0, androidx.p009lifecycle.b0 b0Var, CallbackToFutureAdapter.a aVar) {
        boolean zIsEnabled = f0Var.isEnabled();
        if (zIsEnabled) {
            try {
                f0Var.a(str);
            } catch (Throwable th2) {
                if (zIsEnabled) {
                    f0Var.d();
                }
                throw th2;
            }
        }
        try {
            function0.invoke();
            w.b.c cVar = w.f16058a;
            b0Var.n(cVar);
            aVar.c(cVar);
        } catch (Throwable th3) {
            b0Var.n(new w.b.a(th3));
            aVar.f(th3);
        }
        Unit unit = Unit.f67061a;
        if (zIsEnabled) {
            f0Var.d();
        }
    }
}
