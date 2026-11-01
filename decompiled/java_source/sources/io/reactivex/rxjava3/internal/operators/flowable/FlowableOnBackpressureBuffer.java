package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.h;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public final class FlowableOnBackpressureBuffer extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f65357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f65358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f65359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final lz.a f65360f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final lz.f f65361g;

    static final class BackpressureBufferSubscriber<T> extends BasicIntQueueSubscription<T> implements io.reactivex.rxjava3.core.f {
        private static final long serialVersionUID = -2514538129242366402L;
        volatile boolean cancelled;
        final boolean delayError;
        volatile boolean done;
        final u10.c downstream;
        Throwable error;
        final lz.f onDropped;
        final lz.a onOverflow;
        boolean outputFused;
        final io.reactivex.rxjava3.operators.f queue;
        final AtomicLong requested = new AtomicLong();
        u10.d upstream;

        BackpressureBufferSubscriber(u10.c cVar, int i11, boolean z10, boolean z11, lz.a aVar, lz.f fVar) {
            this.downstream = cVar;
            this.onOverflow = aVar;
            this.delayError = z11;
            this.onDropped = fVar;
            this.queue = z10 ? new h(i11) : new SpscArrayQueue(i11);
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, u10.d
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }

        boolean checkTerminated(boolean z10, boolean z11, u10.c cVar) {
            if (this.cancelled) {
                this.queue.clear();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (this.delayError) {
                if (!z11) {
                    return false;
                }
                Throwable th2 = this.error;
                if (th2 != null) {
                    cVar.onError(th2);
                } else {
                    cVar.onComplete();
                }
                return true;
            }
            Throwable th3 = this.error;
            if (th3 != null) {
                this.queue.clear();
                cVar.onError(th3);
                return true;
            }
            if (!z11) {
                return false;
            }
            cVar.onComplete();
            return true;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
        public void clear() {
            this.queue.clear();
        }

        void drain() {
            if (getAndIncrement() == 0) {
                io.reactivex.rxjava3.operators.f fVar = this.queue;
                u10.c cVar = this.downstream;
                int iAddAndGet = 1;
                while (!checkTerminated(this.done, fVar.isEmpty(), cVar)) {
                    long j11 = this.requested.get();
                    long j12 = 0;
                    while (j12 != j11) {
                        boolean z10 = this.done;
                        Object objPoll = fVar.poll();
                        boolean z11 = objPoll == null;
                        if (checkTerminated(z10, z11, cVar)) {
                            return;
                        }
                        if (z11) {
                            break;
                        }
                        cVar.onNext(objPoll);
                        j12++;
                    }
                    if (j12 == j11 && checkTerminated(this.done, fVar.isEmpty(), cVar)) {
                        return;
                    }
                    if (j12 != 0 && j11 != Long.MAX_VALUE) {
                        this.requested.addAndGet(-j12);
                    }
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
        public boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // u10.c
        public void onComplete() {
            this.done = true;
            if (this.outputFused) {
                this.downstream.onComplete();
            } else {
                drain();
            }
        }

        @Override // u10.c
        public void onError(Throwable th2) {
            this.error = th2;
            this.done = true;
            if (this.outputFused) {
                this.downstream.onError(th2);
            } else {
                drain();
            }
        }

        @Override // u10.c
        public void onNext(T t11) {
            if (this.queue.offer(t11)) {
                if (this.outputFused) {
                    this.downstream.onNext(null);
                    return;
                } else {
                    drain();
                    return;
                }
            }
            this.upstream.cancel();
            MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
            try {
                this.onOverflow.run();
                this.onDropped.accept(t11);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                missingBackpressureException.initCause(th2);
            }
            onError(missingBackpressureException);
        }

        @Override // u10.c
        public void onSubscribe(u10.d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.downstream.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.g
        public T poll() {
            return (T) this.queue.poll();
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, u10.d
        public void request(long j11) {
            if (this.outputFused || !SubscriptionHelper.validate(j11)) {
                return;
            }
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j11);
            drain();
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, io.reactivex.rxjava3.operators.c
        public int requestFusion(int i11) {
            if ((i11 & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }
    }

    public FlowableOnBackpressureBuffer(io.reactivex.rxjava3.core.e eVar, int i11, boolean z10, boolean z11, lz.a aVar, lz.f fVar) {
        super(eVar);
        this.f65357c = i11;
        this.f65358d = z10;
        this.f65359e = z11;
        this.f65360f = aVar;
        this.f65361g = fVar;
    }

    @Override // io.reactivex.rxjava3.core.e
    protected void g(u10.c cVar) {
        this.f65370b.f(new BackpressureBufferSubscriber(cVar, this.f65357c, this.f65358d, this.f65359e, this.f65360f, this.f65361g));
    }
}
