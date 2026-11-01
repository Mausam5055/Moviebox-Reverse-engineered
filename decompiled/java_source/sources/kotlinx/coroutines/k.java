package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public abstract /* synthetic */ class k {
    public static final r0 a(n0 n0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        CoroutineContext coroutineContextK = g0.k(n0Var, coroutineContext);
        s0 y1Var = coroutineStart.isLazy() ? new y1(coroutineContextK, function2) : new s0(coroutineContextK, true);
        y1Var.start(coroutineStart, y1Var, function2);
        return y1Var;
    }

    public static /* synthetic */ r0 b(n0 n0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i11 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return i.a(n0Var, coroutineContext, coroutineStart, function2);
    }

    public static final t1 c(n0 n0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2) {
        CoroutineContext coroutineContextK = g0.k(n0Var, coroutineContext);
        a z1Var = coroutineStart.isLazy() ? new z1(coroutineContextK, function2) : new i2(coroutineContextK, true);
        z1Var.start(coroutineStart, z1Var, function2);
        return z1Var;
    }

    public static /* synthetic */ t1 d(n0 n0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i11 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return i.c(n0Var, coroutineContext, coroutineStart, function2);
    }

    public static final Object e(CoroutineContext coroutineContext, Function2 function2, Continuation continuation) {
        Object objX;
        CoroutineContext context = continuation.getContext();
        CoroutineContext coroutineContextJ = g0.j(context, coroutineContext);
        v1.i(coroutineContextJ);
        if (coroutineContextJ == context) {
            kotlinx.coroutines.internal.v vVar = new kotlinx.coroutines.internal.v(coroutineContextJ, continuation);
            objX = b00.b.b(vVar, vVar, function2);
        } else {
            ContinuationInterceptor.Companion key = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.c(coroutineContextJ.get(key), context.get(key))) {
                q2 q2Var = new q2(coroutineContextJ, continuation);
                CoroutineContext context2 = q2Var.getContext();
                Object objI = kotlinx.coroutines.internal.g0.i(context2, null);
                try {
                    Object objB = b00.b.b(q2Var, q2Var, function2);
                    kotlinx.coroutines.internal.g0.f(context2, objI);
                    objX = objB;
                } catch (Throwable th2) {
                    kotlinx.coroutines.internal.g0.f(context2, objI);
                    throw th2;
                }
            } else {
                v0 v0Var = new v0(coroutineContextJ, continuation);
                b00.a.c(function2, v0Var, v0Var);
                objX = v0Var.X();
            }
        }
        if (objX == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objX;
    }
}
