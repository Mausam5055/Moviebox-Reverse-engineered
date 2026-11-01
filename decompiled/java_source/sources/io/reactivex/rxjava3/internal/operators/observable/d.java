package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends io.reactivex.rxjava3.internal.operators.observable.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final lz.f f65425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final lz.f f65426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final lz.a f65427d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final lz.a f65428e;

    static final class a implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final io.reactivex.rxjava3.core.o f65429a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final lz.f f65430b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final lz.f f65431c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final lz.a f65432d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final lz.a f65433e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        io.reactivex.rxjava3.disposables.c f65434f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f65435g;

        a(io.reactivex.rxjava3.core.o oVar, lz.f fVar, lz.f fVar2, lz.a aVar, lz.a aVar2) {
            this.f65429a = oVar;
            this.f65430b = fVar;
            this.f65431c = fVar2;
            this.f65432d = aVar;
            this.f65433e = aVar2;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.f65434f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65434f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            if (this.f65435g) {
                return;
            }
            try {
                this.f65432d.run();
                this.f65435g = true;
                this.f65429a.onComplete();
                try {
                    this.f65433e.run();
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    pz.a.r(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                onError(th3);
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            if (this.f65435g) {
                pz.a.r(th2);
                return;
            }
            this.f65435g = true;
            try {
                this.f65431c.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f65429a.onError(th2);
            try {
                this.f65433e.run();
            } catch (Throwable th4) {
                io.reactivex.rxjava3.exceptions.a.b(th4);
                pz.a.r(th4);
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(Object obj) {
            if (this.f65435g) {
                return;
            }
            try {
                this.f65430b.accept(obj);
                this.f65429a.onNext(obj);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f65434f.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.f65434f, cVar)) {
                this.f65434f = cVar;
                this.f65429a.onSubscribe(this);
            }
        }
    }

    public d(io.reactivex.rxjava3.core.m mVar, lz.f fVar, lz.f fVar2, lz.a aVar, lz.a aVar2) {
        super(mVar);
        this.f65425b = fVar;
        this.f65426c = fVar2;
        this.f65427d = aVar;
        this.f65428e = aVar2;
    }

    @Override // io.reactivex.rxjava3.core.j
    public void D(io.reactivex.rxjava3.core.o oVar) {
        this.f65422a.subscribe(new a(oVar, this.f65425b, this.f65426c, this.f65427d, this.f65428e));
    }
}
