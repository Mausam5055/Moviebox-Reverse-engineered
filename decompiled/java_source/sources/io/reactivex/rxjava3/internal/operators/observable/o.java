package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes7.dex */
public final class o extends io.reactivex.rxjava3.core.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final io.reactivex.rxjava3.core.m f65458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Object f65459b;

    static final class a implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final io.reactivex.rxjava3.core.q f65460a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f65461b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        io.reactivex.rxjava3.disposables.c f65462c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Object f65463d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f65464e;

        a(io.reactivex.rxjava3.core.q qVar, Object obj) {
            this.f65460a = qVar;
            this.f65461b = obj;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.f65462c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65462c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            if (this.f65464e) {
                return;
            }
            this.f65464e = true;
            Object obj = this.f65463d;
            this.f65463d = null;
            if (obj == null) {
                obj = this.f65461b;
            }
            if (obj != null) {
                this.f65460a.onSuccess(obj);
            } else {
                this.f65460a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            if (this.f65464e) {
                pz.a.r(th2);
            } else {
                this.f65464e = true;
                this.f65460a.onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(Object obj) {
            if (this.f65464e) {
                return;
            }
            if (this.f65463d == null) {
                this.f65463d = obj;
                return;
            }
            this.f65464e = true;
            this.f65462c.dispose();
            this.f65460a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.f65462c, cVar)) {
                this.f65462c = cVar;
                this.f65460a.onSubscribe(this);
            }
        }
    }

    public o(io.reactivex.rxjava3.core.m mVar, Object obj) {
        this.f65458a = mVar;
        this.f65459b = obj;
    }

    @Override // io.reactivex.rxjava3.core.p
    public void b(io.reactivex.rxjava3.core.q qVar) {
        this.f65458a.subscribe(new a(qVar, this.f65459b));
    }
}
