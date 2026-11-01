package io.reactivex.rxjava3.internal.operators.observable;

/* JADX INFO: loaded from: classes7.dex */
public final class j extends io.reactivex.rxjava3.core.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final io.reactivex.rxjava3.core.m f65441a;

    static final class a implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final io.reactivex.rxjava3.core.b f65442a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        io.reactivex.rxjava3.disposables.c f65443b;

        a(io.reactivex.rxjava3.core.b bVar) {
            this.f65442a = bVar;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.f65443b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65443b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            this.f65442a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            this.f65442a.onError(th2);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(Object obj) {
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f65443b = cVar;
            this.f65442a.onSubscribe(this);
        }
    }

    public j(io.reactivex.rxjava3.core.m mVar) {
        this.f65441a = mVar;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void b(io.reactivex.rxjava3.core.b bVar) {
        this.f65441a.subscribe(new a(bVar));
    }
}
