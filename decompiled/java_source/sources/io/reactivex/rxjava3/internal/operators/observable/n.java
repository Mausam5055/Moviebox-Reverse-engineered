package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes7.dex */
public final class n extends io.reactivex.rxjava3.core.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final io.reactivex.rxjava3.core.m f65453a;

    static final class a implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final io.reactivex.rxjava3.core.h f65454a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        io.reactivex.rxjava3.disposables.c f65455b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f65456c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f65457d;

        a(io.reactivex.rxjava3.core.h hVar) {
            this.f65454a = hVar;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.f65455b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65455b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            if (this.f65457d) {
                return;
            }
            this.f65457d = true;
            Object obj = this.f65456c;
            this.f65456c = null;
            if (obj == null) {
                this.f65454a.onComplete();
            } else {
                this.f65454a.onSuccess(obj);
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            if (this.f65457d) {
                pz.a.r(th2);
            } else {
                this.f65457d = true;
                this.f65454a.onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(Object obj) {
            if (this.f65457d) {
                return;
            }
            if (this.f65456c == null) {
                this.f65456c = obj;
                return;
            }
            this.f65457d = true;
            this.f65455b.dispose();
            this.f65454a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.f65455b, cVar)) {
                this.f65455b = cVar;
                this.f65454a.onSubscribe(this);
            }
        }
    }

    public n(io.reactivex.rxjava3.core.m mVar) {
        this.f65453a = mVar;
    }

    @Override // io.reactivex.rxjava3.core.g
    public void b(io.reactivex.rxjava3.core.h hVar) {
        this.f65453a.subscribe(new a(hVar));
    }
}
