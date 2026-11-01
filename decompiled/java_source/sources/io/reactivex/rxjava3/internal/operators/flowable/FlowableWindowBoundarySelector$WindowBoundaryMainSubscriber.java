package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.processors.UnicastProcessor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import lz.h;

/* JADX INFO: loaded from: classes7.dex */
final class FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber<T, B, V> extends AtomicInteger implements io.reactivex.rxjava3.core.f, u10.d, Runnable {
    private static final long serialVersionUID = 8646217640096099753L;
    final int bufferSize;
    final h closingIndicator;
    final u10.c downstream;
    long emitted;
    final u10.b open;
    volatile boolean openDone;
    u10.d upstream;
    volatile boolean upstreamCanceled;
    volatile boolean upstreamDone;
    final io.reactivex.rxjava3.operators.f queue = new MpscLinkedQueue();
    final io.reactivex.rxjava3.disposables.a resources = new io.reactivex.rxjava3.disposables.a();
    final List<UnicastProcessor> windows = new ArrayList();
    final AtomicLong windowCount = new AtomicLong(1);
    final AtomicBoolean downstreamCancelled = new AtomicBoolean();
    final AtomicThrowable error = new AtomicThrowable();
    final WindowStartSubscriber<B> startSubscriber = new WindowStartSubscriber<>(this);
    final AtomicLong requested = new AtomicLong();

    static final class WindowStartSubscriber<B> extends AtomicReference<u10.d> implements io.reactivex.rxjava3.core.f {
        private static final long serialVersionUID = -3326496781427702834L;
        final FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber<?, B, ?> parent;

        WindowStartSubscriber(FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber<?, B, ?> flowableWindowBoundarySelector$WindowBoundaryMainSubscriber) {
            this.parent = flowableWindowBoundarySelector$WindowBoundaryMainSubscriber;
        }

        void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // u10.c
        public void onComplete() {
            this.parent.openComplete();
        }

        @Override // u10.c
        public void onError(Throwable th2) {
            this.parent.openError(th2);
        }

        @Override // u10.c
        public void onNext(B b11) {
            this.parent.open(b11);
        }

        @Override // u10.c
        public void onSubscribe(u10.d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    static final class a extends io.reactivex.rxjava3.core.e implements io.reactivex.rxjava3.core.f, io.reactivex.rxjava3.disposables.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber f65365b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final UnicastProcessor f65366c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicReference f65367d = new AtomicReference();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final AtomicBoolean f65368e = new AtomicBoolean();

        a(FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber flowableWindowBoundarySelector$WindowBoundaryMainSubscriber, UnicastProcessor unicastProcessor) {
            this.f65365b = flowableWindowBoundarySelector$WindowBoundaryMainSubscriber;
            this.f65366c = unicastProcessor;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            SubscriptionHelper.cancel(this.f65367d);
        }

        @Override // io.reactivex.rxjava3.core.e
        protected void g(u10.c cVar) {
            this.f65366c.subscribe(cVar);
            this.f65368e.set(true);
        }

        boolean h() {
            return !this.f65368e.get() && this.f65368e.compareAndSet(false, true);
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65367d.get() == SubscriptionHelper.CANCELLED;
        }

        @Override // u10.c
        public void onComplete() {
            this.f65365b.close(this);
        }

        @Override // u10.c
        public void onError(Throwable th2) {
            if (isDisposed()) {
                pz.a.r(th2);
            } else {
                this.f65365b.closeError(th2);
            }
        }

        @Override // u10.c
        public void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this.f65367d)) {
                this.f65365b.close(this);
            }
        }

        @Override // u10.c
        public void onSubscribe(u10.d dVar) {
            if (SubscriptionHelper.setOnce(this.f65367d, dVar)) {
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f65369a;

        b(Object obj) {
            this.f65369a = obj;
        }
    }

    FlowableWindowBoundarySelector$WindowBoundaryMainSubscriber(u10.c cVar, u10.b bVar, h hVar, int i11) {
        this.downstream = cVar;
        this.open = bVar;
        this.closingIndicator = hVar;
        this.bufferSize = i11;
    }

    @Override // u10.d
    public void cancel() {
        if (this.downstreamCancelled.compareAndSet(false, true)) {
            if (this.windowCount.decrementAndGet() != 0) {
                this.startSubscriber.cancel();
                return;
            }
            this.upstream.cancel();
            this.startSubscriber.cancel();
            this.resources.dispose();
            this.error.tryTerminateAndReport();
            this.upstreamCanceled = true;
            drain();
        }
    }

    void close(a aVar) {
        this.queue.offer(aVar);
        drain();
    }

    void closeError(Throwable th2) {
        this.upstream.cancel();
        this.startSubscriber.cancel();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        u10.c cVar = this.downstream;
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        List<UnicastProcessor> list = this.windows;
        int iAddAndGet = 1;
        while (true) {
            if (this.upstreamCanceled) {
                fVar.clear();
                list.clear();
            } else {
                boolean z10 = this.upstreamDone;
                Object objPoll = fVar.poll();
                boolean z11 = objPoll == null;
                if (z10 && (z11 || this.error.get() != null)) {
                    terminateDownstream(cVar);
                    this.upstreamCanceled = true;
                } else if (z11) {
                    if (this.openDone && list.size() == 0) {
                        this.upstream.cancel();
                        this.startSubscriber.cancel();
                        this.resources.dispose();
                        terminateDownstream(cVar);
                        this.upstreamCanceled = true;
                    }
                } else if (objPoll instanceof b) {
                    if (!this.downstreamCancelled.get()) {
                        long j11 = this.emitted;
                        if (this.requested.get() != j11) {
                            this.emitted = j11 + 1;
                            try {
                                Object objApply = this.closingIndicator.apply(((b) objPoll).f65369a);
                                Objects.requireNonNull(objApply, "The closingIndicator returned a null Publisher");
                                u10.b bVar = (u10.b) objApply;
                                this.windowCount.getAndIncrement();
                                UnicastProcessor unicastProcessorI = UnicastProcessor.i(this.bufferSize, this);
                                a aVar = new a(this, unicastProcessorI);
                                cVar.onNext(aVar);
                                if (aVar.h()) {
                                    unicastProcessorI.onComplete();
                                } else {
                                    list.add(unicastProcessorI);
                                    this.resources.b(aVar);
                                    bVar.subscribe(aVar);
                                }
                            } catch (Throwable th2) {
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                this.upstream.cancel();
                                this.startSubscriber.cancel();
                                this.resources.dispose();
                                io.reactivex.rxjava3.exceptions.a.b(th2);
                                this.error.tryAddThrowableOrReport(th2);
                                this.upstreamDone = true;
                            }
                        } else {
                            this.upstream.cancel();
                            this.startSubscriber.cancel();
                            this.resources.dispose();
                            this.error.tryAddThrowableOrReport(FlowableWindowTimed.h(j11));
                            this.upstreamDone = true;
                        }
                    }
                } else if (objPoll instanceof a) {
                    UnicastProcessor unicastProcessor = ((a) objPoll).f65366c;
                    list.remove(unicastProcessor);
                    this.resources.c((io.reactivex.rxjava3.disposables.c) objPoll);
                    unicastProcessor.onComplete();
                } else {
                    Iterator<UnicastProcessor> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().onNext(objPoll);
                    }
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    @Override // u10.c
    public void onComplete() {
        this.startSubscriber.cancel();
        this.resources.dispose();
        this.upstreamDone = true;
        drain();
    }

    @Override // u10.c
    public void onError(Throwable th2) {
        this.startSubscriber.cancel();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    @Override // u10.c
    public void onNext(T t11) {
        this.queue.offer(t11);
        drain();
    }

    @Override // u10.c
    public void onSubscribe(u10.d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            this.open.subscribe(this.startSubscriber);
            dVar.request(Long.MAX_VALUE);
        }
    }

    void open(B b11) {
        this.queue.offer(new b(b11));
        drain();
    }

    void openComplete() {
        this.openDone = true;
        drain();
    }

    void openError(Throwable th2) {
        this.upstream.cancel();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    @Override // u10.d
    public void request(long j11) {
        if (SubscriptionHelper.validate(j11)) {
            io.reactivex.rxjava3.internal.util.a.a(this.requested, j11);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.windowCount.decrementAndGet() == 0) {
            this.upstream.cancel();
            this.startSubscriber.cancel();
            this.resources.dispose();
            this.error.tryTerminateAndReport();
            this.upstreamCanceled = true;
            drain();
        }
    }

    void terminateDownstream(u10.c cVar) {
        Throwable thTerminate = this.error.terminate();
        if (thTerminate == null) {
            Iterator<UnicastProcessor> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            cVar.onComplete();
            return;
        }
        if (thTerminate != ExceptionHelper.f65550a) {
            Iterator<UnicastProcessor> it2 = this.windows.iterator();
            while (it2.hasNext()) {
                it2.next().onError(thTerminate);
            }
            cVar.onError(thTerminate);
        }
    }
}
