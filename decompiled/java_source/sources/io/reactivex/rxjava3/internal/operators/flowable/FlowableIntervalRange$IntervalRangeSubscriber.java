package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableIntervalRange$IntervalRangeSubscriber extends AtomicLong implements u10.d, Runnable {
    private static final long serialVersionUID = -2809475196591179431L;
    long count;
    final u10.c downstream;
    final long end;
    final AtomicReference<io.reactivex.rxjava3.disposables.c> resource = new AtomicReference<>();

    FlowableIntervalRange$IntervalRangeSubscriber(u10.c cVar, long j11, long j12) {
        this.downstream = cVar;
        this.count = j11;
        this.end = j12;
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
        io.reactivex.rxjava3.disposables.c cVar = this.resource.get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (cVar != disposableHelper) {
            long j11 = get();
            if (j11 == 0) {
                this.downstream.onError(new MissingBackpressureException("Could not emit value " + this.count + " due to lack of requests"));
                DisposableHelper.dispose(this.resource);
                return;
            }
            long j12 = this.count;
            this.downstream.onNext(Long.valueOf(j12));
            if (j12 == this.end) {
                if (this.resource.get() != disposableHelper) {
                    this.downstream.onComplete();
                }
                DisposableHelper.dispose(this.resource);
            } else {
                this.count = j12 + 1;
                if (j11 != Long.MAX_VALUE) {
                    decrementAndGet();
                }
            }
        }
    }

    public void setResource(io.reactivex.rxjava3.disposables.c cVar) {
        DisposableHelper.setOnce(this.resource, cVar);
    }
}
