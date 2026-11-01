package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class ObservableWindowBoundarySelector$WindowBoundaryMainObserver<T, B, V> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c, Runnable {
    private static final long serialVersionUID = 8646217640096099753L;
    final int bufferSize;
    final lz.h closingIndicator;
    final io.reactivex.rxjava3.core.o downstream;
    long emitted;
    final io.reactivex.rxjava3.core.m open;
    volatile boolean openDone;
    io.reactivex.rxjava3.disposables.c upstream;
    volatile boolean upstreamCanceled;
    volatile boolean upstreamDone;
    final io.reactivex.rxjava3.operators.f queue = new MpscLinkedQueue();
    final io.reactivex.rxjava3.disposables.a resources = new io.reactivex.rxjava3.disposables.a();
    final List<UnicastSubject> windows = new ArrayList();
    final AtomicLong windowCount = new AtomicLong(1);
    final AtomicBoolean downstreamDisposed = new AtomicBoolean();
    final AtomicThrowable error = new AtomicThrowable();
    final WindowStartObserver<B> startObserver = new WindowStartObserver<>(this);
    final AtomicLong requested = new AtomicLong();

    static final class WindowStartObserver<B> extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements io.reactivex.rxjava3.core.o {
        private static final long serialVersionUID = -3326496781427702834L;
        final ObservableWindowBoundarySelector$WindowBoundaryMainObserver<?, B, ?> parent;

        WindowStartObserver(ObservableWindowBoundarySelector$WindowBoundaryMainObserver<?, B, ?> observableWindowBoundarySelector$WindowBoundaryMainObserver) {
            this.parent = observableWindowBoundarySelector$WindowBoundaryMainObserver;
        }

        void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            this.parent.openComplete();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            this.parent.openError(th2);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(B b11) {
            this.parent.open(b11);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    static final class a extends io.reactivex.rxjava3.core.j implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ObservableWindowBoundarySelector$WindowBoundaryMainObserver f65407a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final UnicastSubject f65408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final AtomicReference f65409c = new AtomicReference();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final AtomicBoolean f65410d = new AtomicBoolean();

        a(ObservableWindowBoundarySelector$WindowBoundaryMainObserver observableWindowBoundarySelector$WindowBoundaryMainObserver, UnicastSubject unicastSubject) {
            this.f65407a = observableWindowBoundarySelector$WindowBoundaryMainObserver;
            this.f65408b = unicastSubject;
        }

        @Override // io.reactivex.rxjava3.core.j
        protected void D(io.reactivex.rxjava3.core.o oVar) {
            this.f65408b.subscribe(oVar);
            this.f65410d.set(true);
        }

        boolean J() {
            return !this.f65410d.get() && this.f65410d.compareAndSet(false, true);
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f65409c);
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65409c.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            this.f65407a.close(this);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            if (isDisposed()) {
                pz.a.r(th2);
            } else {
                this.f65407a.closeError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(Object obj) {
            if (DisposableHelper.dispose(this.f65409c)) {
                this.f65407a.close(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.setOnce(this.f65409c, cVar);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f65411a;

        b(Object obj) {
            this.f65411a = obj;
        }
    }

    ObservableWindowBoundarySelector$WindowBoundaryMainObserver(io.reactivex.rxjava3.core.o oVar, io.reactivex.rxjava3.core.m mVar, lz.h hVar, int i11) {
        this.downstream = oVar;
        this.open = mVar;
        this.closingIndicator = hVar;
        this.bufferSize = i11;
    }

    void close(a aVar) {
        this.queue.offer(aVar);
        drain();
    }

    void closeError(Throwable th2) {
        this.upstream.dispose();
        this.startObserver.dispose();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        if (this.downstreamDisposed.compareAndSet(false, true)) {
            if (this.windowCount.decrementAndGet() != 0) {
                this.startObserver.dispose();
                return;
            }
            this.upstream.dispose();
            this.startObserver.dispose();
            this.resources.dispose();
            this.error.tryTerminateAndReport();
            this.upstreamCanceled = true;
            drain();
        }
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        io.reactivex.rxjava3.core.o oVar = this.downstream;
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        List<UnicastSubject> list = this.windows;
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
                    terminateDownstream(oVar);
                    this.upstreamCanceled = true;
                } else if (z11) {
                    if (this.openDone && list.size() == 0) {
                        this.upstream.dispose();
                        this.startObserver.dispose();
                        this.resources.dispose();
                        terminateDownstream(oVar);
                        this.upstreamCanceled = true;
                    }
                } else if (objPoll instanceof b) {
                    if (!this.downstreamDisposed.get()) {
                        try {
                            Object objApply = this.closingIndicator.apply(((b) objPoll).f65411a);
                            Objects.requireNonNull(objApply, "The closingIndicator returned a null ObservableSource");
                            io.reactivex.rxjava3.core.m mVar = (io.reactivex.rxjava3.core.m) objApply;
                            this.windowCount.getAndIncrement();
                            UnicastSubject unicastSubjectJ = UnicastSubject.J(this.bufferSize, this);
                            a aVar = new a(this, unicastSubjectJ);
                            oVar.onNext(aVar);
                            if (aVar.J()) {
                                unicastSubjectJ.onComplete();
                            } else {
                                list.add(unicastSubjectJ);
                                this.resources.b(aVar);
                                mVar.subscribe(aVar);
                            }
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            this.upstream.dispose();
                            this.startObserver.dispose();
                            this.resources.dispose();
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            this.error.tryAddThrowableOrReport(th2);
                            this.upstreamDone = true;
                        }
                    }
                } else if (objPoll instanceof a) {
                    UnicastSubject unicastSubject = ((a) objPoll).f65408b;
                    list.remove(unicastSubject);
                    this.resources.c((io.reactivex.rxjava3.disposables.c) objPoll);
                    unicastSubject.onComplete();
                } else {
                    Iterator<UnicastSubject> it = list.iterator();
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

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.downstreamDisposed.get();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        this.startObserver.dispose();
        this.resources.dispose();
        this.upstreamDone = true;
        drain();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        this.startObserver.dispose();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        this.queue.offer(t11);
        drain();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
            this.open.subscribe(this.startObserver);
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
        this.upstream.dispose();
        this.resources.dispose();
        if (this.error.tryAddThrowableOrReport(th2)) {
            this.upstreamDone = true;
            drain();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.windowCount.decrementAndGet() == 0) {
            this.upstream.dispose();
            this.startObserver.dispose();
            this.resources.dispose();
            this.error.tryTerminateAndReport();
            this.upstreamCanceled = true;
            drain();
        }
    }

    void terminateDownstream(io.reactivex.rxjava3.core.o oVar) {
        Throwable thTerminate = this.error.terminate();
        if (thTerminate == null) {
            Iterator<UnicastSubject> it = this.windows.iterator();
            while (it.hasNext()) {
                it.next().onComplete();
            }
            oVar.onComplete();
            return;
        }
        if (thTerminate != ExceptionHelper.f65550a) {
            Iterator<UnicastSubject> it2 = this.windows.iterator();
            while (it2.hasNext()) {
                it2.next().onError(thTerminate);
            }
            oVar.onError(thTerminate);
        }
    }
}
