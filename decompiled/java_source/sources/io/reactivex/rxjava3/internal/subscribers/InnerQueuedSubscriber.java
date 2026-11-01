package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.i;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class InnerQueuedSubscriber<T> extends AtomicReference<u10.d> implements io.reactivex.rxjava3.core.f, u10.d {
    private static final long serialVersionUID = 22876611072430776L;
    volatile boolean done;
    int fusionMode;
    final int limit;
    final a parent;
    final int prefetch;
    long produced;
    volatile io.reactivex.rxjava3.operators.g queue;

    public InnerQueuedSubscriber(a aVar, int i11) {
        this.prefetch = i11;
        this.limit = i11 - (i11 >> 2);
    }

    @Override // u10.d
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    public boolean isDone() {
        return this.done;
    }

    @Override // u10.c
    public void onComplete() {
        throw null;
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        throw null;
    }

    @Override // u10.c
    public void onNext(T t11) {
        if (this.fusionMode != 0) {
            throw null;
        }
        throw null;
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.setOnce(this, dVar)) {
            if (dVar instanceof io.reactivex.rxjava3.operators.d) {
                io.reactivex.rxjava3.operators.d dVar2 = (io.reactivex.rxjava3.operators.d) dVar;
                int iRequestFusion = dVar2.requestFusion(3);
                if (iRequestFusion == 1) {
                    this.fusionMode = iRequestFusion;
                    this.queue = dVar2;
                    this.done = true;
                    throw null;
                }
                if (iRequestFusion == 2) {
                    this.fusionMode = iRequestFusion;
                    this.queue = dVar2;
                    i.f(dVar, this.prefetch);
                    return;
                }
            }
            this.queue = i.c(this.prefetch);
            i.f(dVar, this.prefetch);
        }
    }

    public io.reactivex.rxjava3.operators.g queue() {
        return this.queue;
    }

    @Override // u10.d
    public void request(long j11) {
        if (this.fusionMode != 1) {
            long j12 = this.produced + j11;
            if (j12 < this.limit) {
                this.produced = j12;
            } else {
                this.produced = 0L;
                get().request(j12);
            }
        }
    }

    public void setDone() {
        this.done = true;
    }
}
