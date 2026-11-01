package io.reactivex.rxjava3.internal.subscribers;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements io.reactivex.rxjava3.core.f, u10.d {
    static final long COMPLETE_MASK = Long.MIN_VALUE;
    static final long REQUEST_MASK = Long.MAX_VALUE;
    private static final long serialVersionUID = 7917814472626990048L;
    protected final u10.c downstream;
    protected long produced;
    protected u10.d upstream;
    protected R value;

    public SinglePostCompleteSubscriber(u10.c cVar) {
        this.downstream = cVar;
    }

    @Override // u10.d
    public void cancel() {
        this.upstream.cancel();
    }

    protected final void complete(R r11) {
        long j11 = this.produced;
        if (j11 != 0) {
            io.reactivex.rxjava3.internal.util.a.d(this, j11);
        }
        while (true) {
            long j12 = get();
            if ((j12 & Long.MIN_VALUE) != 0) {
                onDrop(r11);
                return;
            }
            if ((j12 & Long.MAX_VALUE) != 0) {
                lazySet(C.TIME_UNSET);
                this.downstream.onNext(r11);
                this.downstream.onComplete();
                return;
            } else {
                this.value = r11;
                if (compareAndSet(0L, Long.MIN_VALUE)) {
                    return;
                } else {
                    this.value = null;
                }
            }
        }
    }

    @Override // u10.c
    public abstract /* synthetic */ void onComplete();

    protected void onDrop(R r11) {
    }

    @Override // u10.c
    public abstract /* synthetic */ void onError(Throwable th2);

    @Override // u10.c
    public abstract /* synthetic */ void onNext(Object obj);

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override // u10.d
    public final void request(long j11) {
        long j12;
        if (SubscriptionHelper.validate(j11)) {
            do {
                j12 = get();
                if ((j12 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, C.TIME_UNSET)) {
                        this.downstream.onNext(this.value);
                        this.downstream.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j12, io.reactivex.rxjava3.internal.util.a.b(j12, j11)));
            this.upstream.request(j11);
        }
    }
}
