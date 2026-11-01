package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import pz.a;

/* JADX INFO: loaded from: classes7.dex */
final class SingleTimeout$TimeoutMainObserver<T> extends AtomicReference<c> implements q, Runnable, c {
    private static final long serialVersionUID = 37497744973048446L;
    final q downstream;
    final TimeoutFallbackObserver<T> fallback;
    r other;
    final AtomicReference<c> task = new AtomicReference<>();
    final long timeout;
    final TimeUnit unit;

    static final class TimeoutFallbackObserver<T> extends AtomicReference<c> implements q {
        private static final long serialVersionUID = 2071387740092105509L;
        final q downstream;

        TimeoutFallbackObserver(q qVar) {
            this.downstream = qVar;
        }

        @Override // io.reactivex.rxjava3.core.q
        public void onError(Throwable th2) {
            this.downstream.onError(th2);
        }

        @Override // io.reactivex.rxjava3.core.q
        public void onSubscribe(c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.rxjava3.core.q
        public void onSuccess(T t11) {
            this.downstream.onSuccess(t11);
        }
    }

    SingleTimeout$TimeoutMainObserver(q qVar, r rVar, long j11, TimeUnit timeUnit) {
        this.downstream = qVar;
        this.other = rVar;
        this.timeout = j11;
        this.unit = timeUnit;
        if (rVar != null) {
            this.fallback = new TimeoutFallbackObserver<>(qVar);
        } else {
            this.fallback = null;
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        DisposableHelper.dispose(this);
        DisposableHelper.dispose(this.task);
        TimeoutFallbackObserver<T> timeoutFallbackObserver = this.fallback;
        if (timeoutFallbackObserver != null) {
            DisposableHelper.dispose(timeoutFallbackObserver);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onError(Throwable th2) {
        c cVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar == disposableHelper || !compareAndSet(cVar, disposableHelper)) {
            a.r(th2);
        } else {
            DisposableHelper.dispose(this.task);
            this.downstream.onError(th2);
        }
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSubscribe(c cVar) {
        DisposableHelper.setOnce(this, cVar);
    }

    @Override // io.reactivex.rxjava3.core.q
    public void onSuccess(T t11) {
        c cVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar == disposableHelper || !compareAndSet(cVar, disposableHelper)) {
            return;
        }
        DisposableHelper.dispose(this.task);
        this.downstream.onSuccess(t11);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (DisposableHelper.dispose(this)) {
            r rVar = this.other;
            if (rVar == null) {
                this.downstream.onError(new TimeoutException(ExceptionHelper.f(this.timeout, this.unit)));
            } else {
                this.other = null;
                rVar.a(this.fallback);
            }
        }
    }
}
