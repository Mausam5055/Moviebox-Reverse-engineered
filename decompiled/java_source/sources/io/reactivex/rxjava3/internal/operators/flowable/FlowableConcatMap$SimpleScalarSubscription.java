package io.reactivex.rxjava3.internal.operators.flowable;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableConcatMap$SimpleScalarSubscription<T> extends AtomicBoolean implements u10.d {
    private static final long serialVersionUID = -7606889335172043256L;
    final u10.c downstream;
    final T value;

    FlowableConcatMap$SimpleScalarSubscription(T t11, u10.c cVar) {
        this.value = t11;
        this.downstream = cVar;
    }

    @Override // u10.d
    public void cancel() {
    }

    @Override // u10.d
    public void request(long j11) {
        if (j11 <= 0 || !compareAndSet(false, true)) {
            return;
        }
        u10.c cVar = this.downstream;
        cVar.onNext(this.value);
        cVar.onComplete();
    }
}
