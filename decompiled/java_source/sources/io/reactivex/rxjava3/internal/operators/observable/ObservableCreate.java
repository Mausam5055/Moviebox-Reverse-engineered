package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.CancellableDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class ObservableCreate extends io.reactivex.rxjava3.core.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final io.reactivex.rxjava3.core.l f65393a;

    static final class CreateEmitter<T> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.k, io.reactivex.rxjava3.disposables.c {
        private static final long serialVersionUID = -3434801548987643227L;
        final io.reactivex.rxjava3.core.o observer;

        CreateEmitter(io.reactivex.rxjava3.core.o oVar) {
            this.observer = oVar;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.k, io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            try {
                this.observer.onComplete();
            } finally {
                dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable th2) {
            if (tryOnError(th2)) {
                return;
            }
            pz.a.r(th2);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onNext(T t11) {
            if (t11 == null) {
                onError(ExceptionHelper.b("onNext called with a null value."));
            } else {
                if (isDisposed()) {
                    return;
                }
                this.observer.onNext(t11);
            }
        }

        public io.reactivex.rxjava3.core.k serialize() {
            return new SerializedEmitter(this);
        }

        @Override // io.reactivex.rxjava3.core.k
        public void setCancellable(lz.e eVar) {
            setDisposable(new CancellableDisposable(eVar));
        }

        @Override // io.reactivex.rxjava3.core.k
        public void setDisposable(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.set(this, cVar);
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", CreateEmitter.class.getSimpleName(), super.toString());
        }

        public boolean tryOnError(Throwable th2) {
            if (th2 == null) {
                th2 = ExceptionHelper.b("onError called with a null Throwable.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.observer.onError(th2);
                return true;
            } finally {
                dispose();
            }
        }
    }

    static final class SerializedEmitter<T> extends AtomicInteger implements io.reactivex.rxjava3.core.k {
        private static final long serialVersionUID = 4883307006032401862L;
        volatile boolean done;
        final io.reactivex.rxjava3.core.k emitter;
        final AtomicThrowable errors = new AtomicThrowable();
        final io.reactivex.rxjava3.operators.h queue = new io.reactivex.rxjava3.operators.h(16);

        SerializedEmitter(io.reactivex.rxjava3.core.k kVar) {
            this.emitter = kVar;
        }

        void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        void drainLoop() {
            io.reactivex.rxjava3.core.k kVar = this.emitter;
            io.reactivex.rxjava3.operators.h hVar = this.queue;
            AtomicThrowable atomicThrowable = this.errors;
            int iAddAndGet = 1;
            while (!kVar.isDisposed()) {
                if (atomicThrowable.get() != null) {
                    hVar.clear();
                    atomicThrowable.tryTerminateConsumer(kVar);
                    return;
                }
                boolean z10 = this.done;
                Object objPoll = hVar.poll();
                boolean z11 = objPoll == null;
                if (z10 && z11) {
                    kVar.onComplete();
                    return;
                } else if (z11) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    kVar.onNext(objPoll);
                }
            }
            hVar.clear();
        }

        @Override // io.reactivex.rxjava3.core.k, io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.emitter.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (this.done || this.emitter.isDisposed()) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable th2) {
            if (tryOnError(th2)) {
                return;
            }
            pz.a.r(th2);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onNext(T t11) {
            if (this.done || this.emitter.isDisposed()) {
                return;
            }
            if (t11 == null) {
                onError(ExceptionHelper.b("onNext called with a null value."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.emitter.onNext(t11);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                io.reactivex.rxjava3.operators.h hVar = this.queue;
                synchronized (hVar) {
                    hVar.offer(t11);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        public io.reactivex.rxjava3.core.k serialize() {
            return this;
        }

        @Override // io.reactivex.rxjava3.core.k
        public void setCancellable(lz.e eVar) {
            this.emitter.setCancellable(eVar);
        }

        @Override // io.reactivex.rxjava3.core.k
        public void setDisposable(io.reactivex.rxjava3.disposables.c cVar) {
            this.emitter.setDisposable(cVar);
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.emitter.toString();
        }

        public boolean tryOnError(Throwable th2) {
            if (!this.done && !this.emitter.isDisposed()) {
                if (th2 == null) {
                    th2 = ExceptionHelper.b("onError called with a null Throwable.");
                }
                if (this.errors.tryAddThrowable(th2)) {
                    this.done = true;
                    drain();
                    return true;
                }
            }
            return false;
        }
    }

    public ObservableCreate(io.reactivex.rxjava3.core.l lVar) {
        this.f65393a = lVar;
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        CreateEmitter createEmitter = new CreateEmitter(oVar);
        oVar.onSubscribe(createEmitter);
        try {
            this.f65393a.a(createEmitter);
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            createEmitter.onError(th2);
        }
    }
}
