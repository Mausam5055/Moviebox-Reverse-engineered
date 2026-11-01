package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.m;
import io.reactivex.rxjava3.core.o;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends io.reactivex.rxjava3.core.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f65371b;

    static final class a implements o, u10.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final u10.c f65372a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        io.reactivex.rxjava3.disposables.c f65373b;

        a(u10.c cVar) {
            this.f65372a = cVar;
        }

        @Override // u10.d
        public void cancel() {
            this.f65373b.dispose();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            this.f65372a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            this.f65372a.onError(th2);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(Object obj) {
            this.f65372a.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f65373b = cVar;
            this.f65372a.onSubscribe(this);
        }

        @Override // u10.d
        public void request(long j11) {
        }
    }

    public c(m mVar) {
        this.f65371b = mVar;
    }

    @Override // io.reactivex.rxjava3.core.e
    protected void g(u10.c cVar) {
        this.f65371b.subscribe(new a(cVar));
    }
}
