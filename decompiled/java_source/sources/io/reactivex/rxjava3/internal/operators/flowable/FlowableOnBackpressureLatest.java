package io.reactivex.rxjava3.internal.operators.flowable;

/* JADX INFO: loaded from: classes7.dex */
public final class FlowableOnBackpressureLatest extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final lz.f f65363c;

    static final class BackpressureLatestSubscriber<T> extends AbstractBackpressureThrottlingSubscriber<T, T> {
        private static final long serialVersionUID = 163080509307634843L;
        final lz.f onDropped;

        BackpressureLatestSubscriber(u10.c cVar, lz.f fVar) {
            super(cVar);
            this.onDropped = fVar;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // io.reactivex.rxjava3.internal.operators.flowable.AbstractBackpressureThrottlingSubscriber, u10.c
        public void onNext(T t11) {
            Object andSet = this.current.getAndSet((R) t11);
            lz.f fVar = this.onDropped;
            if (fVar != null && andSet != null) {
                try {
                    fVar.accept(andSet);
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    this.upstream.cancel();
                    this.downstream.onError(th2);
                }
            }
            drain();
        }
    }

    public FlowableOnBackpressureLatest(io.reactivex.rxjava3.core.e eVar, lz.f fVar) {
        super(eVar);
        this.f65363c = fVar;
    }

    @Override // io.reactivex.rxjava3.core.e
    protected void g(u10.c cVar) {
        this.f65370b.f(new BackpressureLatestSubscriber(cVar, this.f65363c));
    }
}
