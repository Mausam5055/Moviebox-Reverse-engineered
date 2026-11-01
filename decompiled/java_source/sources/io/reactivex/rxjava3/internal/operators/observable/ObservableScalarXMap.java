package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ObservableScalarXMap {

    public static final class ScalarDisposable<T> extends AtomicInteger implements io.reactivex.rxjava3.operators.b, Runnable {
        static final int FUSED = 1;
        static final int ON_COMPLETE = 3;
        static final int ON_NEXT = 2;
        static final int START = 0;
        private static final long serialVersionUID = 3880992722410194083L;
        final io.reactivex.rxjava3.core.o observer;
        final T value;

        public ScalarDisposable(io.reactivex.rxjava3.core.o oVar, T t11) {
            this.observer = oVar;
            this.value = t11;
        }

        @Override // io.reactivex.rxjava3.operators.g
        public void clear() {
            lazySet(3);
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            set(3);
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return get() == 3;
        }

        @Override // io.reactivex.rxjava3.operators.g
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override // io.reactivex.rxjava3.operators.g
        public boolean offer(T t11) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        public boolean offer(T t11, T t12) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // io.reactivex.rxjava3.operators.g
        public T poll() {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.value;
        }

        @Override // io.reactivex.rxjava3.operators.c
        public int requestFusion(int i11) {
            if ((i11 & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.observer.onNext(this.value);
                if (get() == 2) {
                    lazySet(3);
                    this.observer.onComplete();
                }
            }
        }
    }

    static final class a extends io.reactivex.rxjava3.core.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f65404a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final lz.h f65405b;

        a(Object obj, lz.h hVar) {
            this.f65404a = obj;
            this.f65405b = hVar;
        }

        @Override // io.reactivex.rxjava3.core.j
        public void D(io.reactivex.rxjava3.core.o oVar) {
            try {
                Object objApply = this.f65405b.apply(this.f65404a);
                Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                io.reactivex.rxjava3.core.m mVar = (io.reactivex.rxjava3.core.m) objApply;
                if (!(mVar instanceof lz.k)) {
                    mVar.subscribe(oVar);
                    return;
                }
                try {
                    Object obj = ((lz.k) mVar).get();
                    if (obj == null) {
                        EmptyDisposable.complete(oVar);
                        return;
                    }
                    ScalarDisposable scalarDisposable = new ScalarDisposable(oVar, obj);
                    oVar.onSubscribe(scalarDisposable);
                    scalarDisposable.run();
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    EmptyDisposable.error(th2, oVar);
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                EmptyDisposable.error(th3, oVar);
            }
        }
    }

    public static io.reactivex.rxjava3.core.j a(Object obj, lz.h hVar) {
        return pz.a.o(new a(obj, hVar));
    }

    public static boolean b(io.reactivex.rxjava3.core.m mVar, io.reactivex.rxjava3.core.o oVar, lz.h hVar) {
        if (!(mVar instanceof lz.k)) {
            return false;
        }
        try {
            Object obj = ((lz.k) mVar).get();
            if (obj == null) {
                EmptyDisposable.complete(oVar);
                return true;
            }
            try {
                Object objApply = hVar.apply(obj);
                Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                io.reactivex.rxjava3.core.m mVar2 = (io.reactivex.rxjava3.core.m) objApply;
                if (mVar2 instanceof lz.k) {
                    try {
                        Object obj2 = ((lz.k) mVar2).get();
                        if (obj2 == null) {
                            EmptyDisposable.complete(oVar);
                            return true;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(oVar, obj2);
                        oVar.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        EmptyDisposable.error(th2, oVar);
                        return true;
                    }
                } else {
                    mVar2.subscribe(oVar);
                }
                return true;
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                EmptyDisposable.error(th3, oVar);
                return true;
            }
        } catch (Throwable th4) {
            io.reactivex.rxjava3.exceptions.a.b(th4);
            EmptyDisposable.error(th4, oVar);
            return true;
        }
    }
}
