package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public final class FlowableOnBackpressureError extends a {

    static final class BackpressureErrorSubscriber<T> extends AtomicLong implements io.reactivex.rxjava3.core.f, u10.d {
        private static final long serialVersionUID = -3176480756392482682L;
        boolean done;
        final u10.c downstream;
        u10.d upstream;

        BackpressureErrorSubscriber(u10.c cVar) {
            this.downstream = cVar;
        }

        @Override // u10.d
        public void cancel() {
            this.upstream.cancel();
        }

        @Override // u10.c
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.downstream.onComplete();
        }

        @Override // u10.c
        public void onError(Throwable th2) {
            if (this.done) {
                pz.a.r(th2);
            } else {
                this.done = true;
                this.downstream.onError(th2);
            }
        }

        @Override // u10.c
        public void onNext(T t11) {
            if (this.done) {
                return;
            }
            if (get() != 0) {
                this.downstream.onNext(t11);
                io.reactivex.rxjava3.internal.util.a.d(this, 1L);
            } else {
                this.upstream.cancel();
                onError(MissingBackpressureException.createDefault());
            }
        }

        @Override // u10.c
        public void onSubscribe(u10.d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // u10.d
        public void request(long j11) {
            if (SubscriptionHelper.validate(j11)) {
                io.reactivex.rxjava3.internal.util.a.a(this, j11);
            }
        }
    }

    public FlowableOnBackpressureError(io.reactivex.rxjava3.core.e eVar) {
        super(eVar);
    }

    @Override // io.reactivex.rxjava3.core.e
    protected void g(u10.c cVar) {
        this.f65370b.f(new BackpressureErrorSubscriber(cVar));
    }
}
