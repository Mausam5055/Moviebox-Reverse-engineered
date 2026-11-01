package androidx.work.impl;

import androidx.work.DirectExecutor;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15910a;

    static final class a implements Function1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.work.s f15911a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.common.util.concurrent.r f15912b;

        a(androidx.work.s sVar, com.google.common.util.concurrent.r rVar) {
            this.f15911a = sVar;
            this.f15912b = rVar;
        }

        public final void a(Throwable th2) {
            if (th2 instanceof WorkerStoppedException) {
                this.f15911a.m(((WorkerStoppedException) th2).getReason());
            }
            this.f15912b.cancel(false);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return Unit.f67061a;
        }
    }

    static {
        String strI = androidx.work.t.i("WorkerWrapper");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15910a = strI;
    }

    public static final Object d(com.google.common.util.concurrent.r rVar, androidx.work.s sVar, Continuation continuation) throws Throwable {
        try {
            if (rVar.isDone()) {
                return e(rVar);
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            rVar.addListener(new ToContinuation(rVar, cancellableContinuationImpl), DirectExecutor.INSTANCE);
            cancellableContinuationImpl.invokeOnCancellation(new a(sVar, rVar));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        } catch (ExecutionException e11) {
            throw f(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object e(Future future) {
        Object obj;
        boolean z10 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable f(ExecutionException executionException) {
        Throwable cause = executionException.getCause();
        Intrinsics.e(cause);
        return cause;
    }
}
