package com.google.common.util.concurrent;

import java.lang.Throwable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
abstract class AbstractCatchingFuture<V, X extends Throwable, F, T> extends i.a implements Runnable {
    Class<X> exceptionType;
    F fallback;
    r inputFuture;

    private static final class AsyncCatchingFuture<V, X extends Throwable> extends AbstractCatchingFuture<V, X, f, r> {
        AsyncCatchingFuture(r rVar, Class<X> cls, f fVar) {
            super(rVar, cls, fVar);
        }

        /* JADX INFO: renamed from: doFallback, reason: avoid collision after fix types in other method */
        r doFallback2(f fVar, X x10) throws Exception {
            r rVarApply = fVar.apply(x10);
            com.google.common.base.m.q(rVarApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", fVar);
            return rVarApply;
        }

        @Override // com.google.common.util.concurrent.AbstractCatchingFuture
        /* bridge */ /* synthetic */ r doFallback(f fVar, Throwable th2) throws Exception {
            android.support.v4.media.session.c.a(fVar);
            return doFallback2((f) null, th2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.AbstractCatchingFuture
        public void setResult(r rVar) {
            setFuture(rVar);
        }
    }

    private static final class CatchingFuture<V, X extends Throwable> extends AbstractCatchingFuture<V, X, com.google.common.base.f, V> {
        CatchingFuture(r rVar, Class<X> cls, com.google.common.base.f fVar) {
            super(rVar, cls, fVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.AbstractCatchingFuture
        public V doFallback(com.google.common.base.f fVar, X x10) throws Exception {
            return (V) fVar.apply(x10);
        }

        @Override // com.google.common.util.concurrent.AbstractCatchingFuture
        void setResult(V v11) {
            set(v11);
        }
    }

    AbstractCatchingFuture(r rVar, Class<X> cls, F f11) {
        this.inputFuture = (r) com.google.common.base.m.o(rVar);
        this.exceptionType = (Class) com.google.common.base.m.o(cls);
        this.fallback = (F) com.google.common.base.m.o(f11);
    }

    static <V, X extends Throwable> r create(r rVar, Class<X> cls, com.google.common.base.f fVar, Executor executor) {
        CatchingFuture catchingFuture = new CatchingFuture(rVar, cls, fVar);
        rVar.addListener(catchingFuture, MoreExecutors.c(executor, catchingFuture));
        return catchingFuture;
    }

    static <X extends Throwable, V> r createAsync(r rVar, Class<X> cls, f fVar, Executor executor) {
        AsyncCatchingFuture asyncCatchingFuture = new AsyncCatchingFuture(rVar, cls, fVar);
        rVar.addListener(asyncCatchingFuture, MoreExecutors.c(executor, asyncCatchingFuture));
        return asyncCatchingFuture;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    protected final void afterDone() {
        maybePropagateCancellationTo(this.inputFuture);
        this.inputFuture = null;
        this.exceptionType = null;
        this.fallback = null;
    }

    abstract T doFallback(F f11, X x10) throws Exception;

    @Override // com.google.common.util.concurrent.AbstractFuture
    protected String pendingToString() {
        String str;
        r rVar = this.inputFuture;
        Class<X> cls = this.exceptionType;
        F f11 = this.fallback;
        String strPendingToString = super.pendingToString();
        if (rVar != null) {
            str = "inputFuture=[" + rVar + "], ";
        } else {
            str = "";
        }
        if (cls == null || f11 == null) {
            if (strPendingToString == null) {
                return null;
            }
            return str + strPendingToString;
        }
        return str + "exceptionType=[" + cls + "], fallback=[" + f11 + "]";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [F, java.lang.Class<X extends java.lang.Throwable>] */
    @Override // java.lang.Runnable
    public final void run() {
        Object objD;
        r rVar = this.inputFuture;
        Class<X> cls = this.exceptionType;
        F f11 = this.fallback;
        if (((f11 == null) || ((rVar == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        ?? r11 = (Class<X>) null;
        this.inputFuture = null;
        try {
            th = rVar instanceof gb.a ? gb.b.a((gb.a) rVar) : null;
            objD = th == null ? Futures.d(rVar) : null;
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (cause == null) {
                cause = new NullPointerException("Future type " + rVar.getClass() + " threw " + e11.getClass() + " without a cause");
            }
            th = cause;
        } catch (Throwable th2) {
            th = th2;
        }
        if (th == null) {
            set(u.a(objD));
            return;
        }
        if (!w.a(th, cls)) {
            setFuture(rVar);
            return;
        }
        try {
            T tDoFallback = doFallback(f11, th);
            this.exceptionType = null;
            this.fallback = null;
            setResult(tDoFallback);
        } catch (Throwable th3) {
            try {
                w.b(th3);
                setException(th3);
            } finally {
                this.exceptionType = null;
                this.fallback = null;
            }
        }
    }

    abstract void setResult(T t11);
}
