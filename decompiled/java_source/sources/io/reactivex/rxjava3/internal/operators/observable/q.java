package io.reactivex.rxjava3.internal.operators.observable;

/* JADX INFO: loaded from: classes7.dex */
final class q extends oz.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ObservableWindowBoundary$WindowBoundaryMainObserver f65465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f65466c;

    q(ObservableWindowBoundary$WindowBoundaryMainObserver observableWindowBoundary$WindowBoundaryMainObserver) {
        this.f65465b = observableWindowBoundary$WindowBoundaryMainObserver;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        if (this.f65466c) {
            return;
        }
        this.f65466c = true;
        this.f65465b.innerComplete();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        if (this.f65466c) {
            pz.a.r(th2);
        } else {
            this.f65466c = true;
            this.f65465b.innerError(th2);
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(Object obj) {
        if (this.f65466c) {
            return;
        }
        this.f65465b.innerNext();
    }
}
