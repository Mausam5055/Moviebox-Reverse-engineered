package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public final class FlowableOnBackpressureDrop extends a implements lz.f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final lz.f f65362c;

    static final class BackpressureDropSubscriber<T> extends AtomicLong implements io.reactivex.rxjava3.core.f, u10.d {
        private static final long serialVersionUID = -6246093802440953054L;
        boolean done;
        final u10.c downstream;
        final lz.f onDrop;
        u10.d upstream;

        BackpressureDropSubscriber(u10.c cVar, lz.f fVar) {
            this.downstream = cVar;
            this.onDrop = fVar;
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
                return;
            }
            try {
                this.onDrop.accept(t11);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                cancel();
                onError(th2);
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

    public FlowableOnBackpressureDrop(io.reactivex.rxjava3.core.e eVar) {
        super(eVar);
        this.f65362c = this;
    }

    @Override // lz.f
    public void accept(Object obj) {
    }

    @Override // io.reactivex.rxjava3.core.e
    protected void g(u10.c cVar) {
        this.f65370b.f(new BackpressureDropSubscriber(cVar, this.f65362c));
    }
}
