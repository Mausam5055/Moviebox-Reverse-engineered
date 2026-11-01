package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableInterval$IntervalSubscriber extends AtomicLong implements u10.d, Runnable {
    private static final long serialVersionUID = -2809475196591179431L;
    long count;
    final u10.c downstream;
    final AtomicReference<io.reactivex.rxjava3.disposables.c> resource = new AtomicReference<>();

    FlowableInterval$IntervalSubscriber(u10.c cVar) {
        this.downstream = cVar;
    }

    @Override // u10.d
    public void cancel() {
        DisposableHelper.dispose(this.resource);
    }

    @Override // u10.d
    public void request(long j11) {
        if (SubscriptionHelper.validate(j11)) {
            io.reactivex.rxjava3.internal.util.a.a(this, j11);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.resource.get() != DisposableHelper.DISPOSED) {
            if (get() != 0) {
                u10.c cVar = this.downstream;
                long j11 = this.count;
                this.count = j11 + 1;
                cVar.onNext(Long.valueOf(j11));
                io.reactivex.rxjava3.internal.util.a.d(this, 1L);
                return;
            }
            this.downstream.onError(new MissingBackpressureException("Could not emit value " + this.count + " due to lack of requests"));
            DisposableHelper.dispose(this.resource);
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this.resource, cVar);
    }
}
