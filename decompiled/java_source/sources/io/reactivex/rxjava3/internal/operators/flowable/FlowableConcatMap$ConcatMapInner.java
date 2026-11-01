package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableConcatMap$ConcatMapInner<R> extends SubscriptionArbiter implements io.reactivex.rxjava3.core.f {
    private static final long serialVersionUID = 897683679971470653L;
    final b parent;
    long produced;

    FlowableConcatMap$ConcatMapInner(b bVar) {
        super(false);
        this.parent = bVar;
    }

    @Override // u10.c
    public void onComplete() {
        long j11 = this.produced;
        if (j11 != 0) {
            this.produced = 0L;
            produced(j11);
        }
        this.parent.innerComplete();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        long j11 = this.produced;
        if (j11 != 0) {
            this.produced = 0L;
            produced(j11);
        }
        this.parent.innerError(th2);
    }

    @Override // u10.c
    public void onNext(R r11) {
        this.produced++;
        this.parent.innerNext(r11);
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        setSubscription(dVar);
    }
}
