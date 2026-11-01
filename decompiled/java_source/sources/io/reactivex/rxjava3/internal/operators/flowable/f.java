package io.reactivex.rxjava3.internal.operators.flowable;

/* JADX INFO: loaded from: classes7.dex */
final class f extends rz.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final FlowableWindowBoundary$WindowBoundaryMainSubscriber f65375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f65376c;

    f(FlowableWindowBoundary$WindowBoundaryMainSubscriber flowableWindowBoundary$WindowBoundaryMainSubscriber) {
        this.f65375b = flowableWindowBoundary$WindowBoundaryMainSubscriber;
    }

    @Override // u10.c
    public void onComplete() {
        if (this.f65376c) {
            return;
        }
        this.f65376c = true;
        this.f65375b.innerComplete();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        if (this.f65376c) {
            pz.a.r(th2);
        } else {
            this.f65376c = true;
            this.f65375b.innerError(th2);
        }
    }

    @Override // u10.c
    public void onNext(Object obj) {
        if (this.f65376c) {
            return;
        }
        this.f65375b.innerNext();
    }
}
