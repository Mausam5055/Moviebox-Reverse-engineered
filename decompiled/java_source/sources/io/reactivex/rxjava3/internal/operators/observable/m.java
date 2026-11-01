package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;

/* JADX INFO: loaded from: classes7.dex */
public final class m extends io.reactivex.rxjava3.internal.operators.observable.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final lz.h f65447b;

    static final class a implements io.reactivex.rxjava3.core.o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final io.reactivex.rxjava3.core.o f65448a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final lz.h f65449b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final SequentialDisposable f65450c = new SequentialDisposable();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f65451d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f65452e;

        a(io.reactivex.rxjava3.core.o oVar, lz.h hVar) {
            this.f65448a = oVar;
            this.f65449b = hVar;
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            if (this.f65452e) {
                return;
            }
            this.f65452e = true;
            this.f65451d = true;
            this.f65448a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            if (this.f65451d) {
                if (this.f65452e) {
                    pz.a.r(th2);
                    return;
                } else {
                    this.f65448a.onError(th2);
                    return;
                }
            }
            this.f65451d = true;
            try {
                io.reactivex.rxjava3.core.m mVar = (io.reactivex.rxjava3.core.m) this.f65449b.apply(th2);
                if (mVar != null) {
                    mVar.subscribe(this);
                    return;
                }
                NullPointerException nullPointerException = new NullPointerException("Observable is null");
                nullPointerException.initCause(th2);
                this.f65448a.onError(nullPointerException);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                this.f65448a.onError(new CompositeException(th2, th3));
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(Object obj) {
            if (this.f65452e) {
                return;
            }
            this.f65448a.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f65450c.replace(cVar);
        }
    }

    public m(io.reactivex.rxjava3.core.m mVar, lz.h hVar) {
        super(mVar);
        this.f65447b = hVar;
    }

    @Override // io.reactivex.rxjava3.core.j
    public void D(io.reactivex.rxjava3.core.o oVar) {
        a aVar = new a(oVar, this.f65447b);
        oVar.onSubscribe(aVar.f65450c);
        this.f65422a.subscribe(aVar);
    }
}
