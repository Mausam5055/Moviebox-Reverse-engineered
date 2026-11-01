package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.Objects;
import lz.h;
import lz.k;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableConcatMapScheduler$ConcatMapDelayed<T, R> extends FlowableConcatMapScheduler$BaseConcatMapSubscriber<T, R> {
    private static final long serialVersionUID = -2945777694260521066L;
    final u10.c downstream;
    final boolean veryEnd;

    FlowableConcatMapScheduler$ConcatMapDelayed(u10.c cVar, h hVar, int i11, boolean z10, Scheduler.Worker worker) {
        super(hVar, i11, worker);
        this.downstream = cVar;
        this.veryEnd = z10;
    }

    @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatMapScheduler$BaseConcatMapSubscriber, u10.d
    public void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        this.inner.cancel();
        this.upstream.cancel();
        this.worker.dispose();
        this.errors.tryTerminateAndReport();
    }

    @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatMapScheduler$BaseConcatMapSubscriber, io.reactivex.rxjava3.internal.operators.flowable.b
    public void innerError(Throwable th2) {
        if (this.errors.tryAddThrowableOrReport(th2)) {
            if (!this.veryEnd) {
                this.upstream.cancel();
                this.done = true;
            }
            this.active = false;
            schedule();
        }
    }

    @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatMapScheduler$BaseConcatMapSubscriber, io.reactivex.rxjava3.internal.operators.flowable.b
    public void innerNext(R r11) {
        this.downstream.onNext(r11);
    }

    @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatMapScheduler$BaseConcatMapSubscriber, u10.c
    public void onError(Throwable th2) {
        if (this.errors.tryAddThrowableOrReport(th2)) {
            this.done = true;
            schedule();
        }
    }

    @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatMapScheduler$BaseConcatMapSubscriber, u10.d
    public void request(long j11) {
        this.inner.request(j11);
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        while (!this.cancelled) {
            if (!this.active) {
                boolean z10 = this.done;
                if (z10 && !this.veryEnd && this.errors.get() != null) {
                    this.errors.tryTerminateConsumer(this.downstream);
                    this.worker.dispose();
                    return;
                }
                try {
                    Object objPoll = this.queue.poll();
                    boolean z11 = objPoll == null;
                    if (z10 && z11) {
                        this.errors.tryTerminateConsumer(this.downstream);
                        this.worker.dispose();
                        return;
                    }
                    if (!z11) {
                        try {
                            Object objApply = this.mapper.apply(objPoll);
                            Objects.requireNonNull(objApply, "The mapper returned a null Publisher");
                            u10.b bVar = (u10.b) objApply;
                            if (this.sourceMode != 1) {
                                int i11 = this.consumed + 1;
                                if (i11 == this.limit) {
                                    this.consumed = 0;
                                    this.upstream.request(i11);
                                } else {
                                    this.consumed = i11;
                                }
                            }
                            if (bVar instanceof k) {
                                try {
                                    obj = ((k) bVar).get();
                                } catch (Throwable th2) {
                                    io.reactivex.rxjava3.exceptions.a.b(th2);
                                    this.errors.tryAddThrowableOrReport(th2);
                                    if (!this.veryEnd) {
                                        this.upstream.cancel();
                                        this.errors.tryTerminateConsumer(this.downstream);
                                        this.worker.dispose();
                                        return;
                                    }
                                    obj = null;
                                }
                                if (obj != null && !this.cancelled) {
                                    if (this.inner.isUnbounded()) {
                                        this.downstream.onNext(obj);
                                    } else {
                                        this.active = true;
                                        this.inner.setSubscription(new FlowableConcatMap$SimpleScalarSubscription(obj, this.inner));
                                    }
                                }
                            } else {
                                this.active = true;
                                bVar.subscribe(this.inner);
                            }
                        } catch (Throwable th3) {
                            io.reactivex.rxjava3.exceptions.a.b(th3);
                            this.upstream.cancel();
                            this.errors.tryAddThrowableOrReport(th3);
                            this.errors.tryTerminateConsumer(this.downstream);
                            this.worker.dispose();
                            return;
                        }
                    }
                } catch (Throwable th4) {
                    io.reactivex.rxjava3.exceptions.a.b(th4);
                    this.upstream.cancel();
                    this.errors.tryAddThrowableOrReport(th4);
                    this.errors.tryTerminateConsumer(this.downstream);
                    this.worker.dispose();
                    return;
                }
            }
            if (decrementAndGet() == 0) {
                return;
            }
        }
    }

    @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatMapScheduler$BaseConcatMapSubscriber
    void schedule() {
        if (getAndIncrement() == 0) {
            this.worker.schedule(this);
        }
    }

    @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatMapScheduler$BaseConcatMapSubscriber
    void subscribeActual() {
        this.downstream.onSubscribe(this);
    }
}
