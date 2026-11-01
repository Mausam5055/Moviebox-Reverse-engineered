package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class ExecutorScheduler extends Scheduler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f65473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f65474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Executor f65475e;

    /* JADX INFO: loaded from: classes7.dex */
    final class DelayedDispose implements Runnable {

        /* JADX INFO: renamed from: dr, reason: collision with root package name */
        private final DelayedRunnable f65476dr;

        DelayedDispose(DelayedRunnable delayedRunnable) {
            this.f65476dr = delayedRunnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            DelayedRunnable delayedRunnable = this.f65476dr;
            delayedRunnable.direct.replace(ExecutorScheduler.this.d(delayedRunnable));
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class DelayedRunnable extends AtomicReference<Runnable> implements Runnable, io.reactivex.rxjava3.disposables.c {
        private static final long serialVersionUID = -4101336210206799084L;
        final SequentialDisposable direct;
        final SequentialDisposable timed;

        DelayedRunnable(Runnable runnable) {
            super(runnable);
            this.timed = new SequentialDisposable();
            this.direct = new SequentialDisposable();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            if (getAndSet(null) != null) {
                this.timed.dispose();
                this.direct.dispose();
            }
        }

        public Runnable getWrappedRunnable() {
            Runnable runnable = get();
            return runnable != null ? runnable : Functions.f65321b;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return get() == null;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    try {
                        runnable.run();
                        lazySet(null);
                        this.timed.lazySet(DisposableHelper.DISPOSED);
                        SequentialDisposable sequentialDisposable = this.direct;
                    } finally {
                        lazySet(null);
                        this.timed.lazySet(DisposableHelper.DISPOSED);
                        this.direct.lazySet(DisposableHelper.DISPOSED);
                    }
                } catch (Throwable th2) {
                    pz.a.r(th2);
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class ExecutorWorker extends Scheduler.Worker implements Runnable {
        volatile boolean disposed;
        final Executor executor;
        final boolean fair;
        final boolean interruptibleWorker;
        final AtomicInteger wip = new AtomicInteger();
        final io.reactivex.rxjava3.disposables.a tasks = new io.reactivex.rxjava3.disposables.a();
        final MpscLinkedQueue queue = new MpscLinkedQueue();

        /* JADX INFO: loaded from: classes.dex */
        static final class BooleanRunnable extends AtomicBoolean implements Runnable, io.reactivex.rxjava3.disposables.c {
            private static final long serialVersionUID = -2421395018820541164L;
            final Runnable actual;

            BooleanRunnable(Runnable runnable) {
                this.actual = runnable;
            }

            @Override // io.reactivex.rxjava3.disposables.c
            public void dispose() {
                lazySet(true);
            }

            @Override // io.reactivex.rxjava3.disposables.c
            public boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get()) {
                    return;
                }
                try {
                    this.actual.run();
                    lazySet(true);
                } catch (Throwable th2) {
                    try {
                        pz.a.r(th2);
                        throw th2;
                    } catch (Throwable th3) {
                        lazySet(true);
                        throw th3;
                    }
                }
            }
        }

        static final class InterruptibleRunnable extends AtomicInteger implements Runnable, io.reactivex.rxjava3.disposables.c {
            static final int FINISHED = 2;
            static final int INTERRUPTED = 4;
            static final int INTERRUPTING = 3;
            static final int READY = 0;
            static final int RUNNING = 1;
            private static final long serialVersionUID = -3603436687413320876L;
            final Runnable run;
            final io.reactivex.rxjava3.disposables.d tasks;
            volatile Thread thread;

            InterruptibleRunnable(Runnable runnable, io.reactivex.rxjava3.disposables.d dVar) {
                this.run = runnable;
                this.tasks = dVar;
            }

            void cleanup() {
                io.reactivex.rxjava3.disposables.d dVar = this.tasks;
                if (dVar != null) {
                    dVar.c(this);
                }
            }

            @Override // io.reactivex.rxjava3.disposables.c
            public void dispose() {
                while (true) {
                    int i11 = get();
                    if (i11 >= 2) {
                        return;
                    }
                    if (i11 == 0) {
                        if (compareAndSet(0, 4)) {
                            cleanup();
                            return;
                        }
                    } else if (compareAndSet(1, 3)) {
                        Thread thread = this.thread;
                        if (thread != null) {
                            thread.interrupt();
                            this.thread = null;
                        }
                        set(4);
                        cleanup();
                        return;
                    }
                }
            }

            @Override // io.reactivex.rxjava3.disposables.c
            public boolean isDisposed() {
                return get() >= 2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get() == 0) {
                    this.thread = Thread.currentThread();
                    if (!compareAndSet(0, 1)) {
                        this.thread = null;
                        return;
                    }
                    try {
                        this.run.run();
                        this.thread = null;
                        if (compareAndSet(1, 2)) {
                            cleanup();
                            return;
                        }
                        while (get() == 3) {
                            Thread.yield();
                        }
                        Thread.interrupted();
                    } catch (Throwable th2) {
                        try {
                            pz.a.r(th2);
                            throw th2;
                        } catch (Throwable th3) {
                            this.thread = null;
                            if (compareAndSet(1, 2)) {
                                cleanup();
                            } else {
                                while (get() == 3) {
                                    Thread.yield();
                                }
                                Thread.interrupted();
                            }
                            throw th3;
                        }
                    }
                }
            }
        }

        final class SequentialDispose implements Runnable {
            private final Runnable decoratedRun;
            private final SequentialDisposable mar;

            SequentialDispose(SequentialDisposable sequentialDisposable, Runnable runnable) {
                this.mar = sequentialDisposable;
                this.decoratedRun = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.mar.replace(ExecutorWorker.this.schedule(this.decoratedRun));
            }
        }

        public ExecutorWorker(Executor executor, boolean z10, boolean z11) {
            this.executor = executor;
            this.interruptibleWorker = z10;
            this.fair = z11;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            this.tasks.dispose();
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.fair) {
                runFair();
            } else {
                runEager();
            }
        }

        void runEager() {
            MpscLinkedQueue mpscLinkedQueue = this.queue;
            int iAddAndGet = 1;
            while (!this.disposed) {
                while (true) {
                    Runnable runnable = (Runnable) mpscLinkedQueue.poll();
                    if (runnable == null) {
                        break;
                    }
                    runnable.run();
                    if (this.disposed) {
                        mpscLinkedQueue.clear();
                        return;
                    }
                }
                if (this.disposed) {
                    mpscLinkedQueue.clear();
                    return;
                } else {
                    iAddAndGet = this.wip.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
            mpscLinkedQueue.clear();
        }

        void runFair() {
            MpscLinkedQueue mpscLinkedQueue = this.queue;
            if (this.disposed) {
                mpscLinkedQueue.clear();
                return;
            }
            ((Runnable) mpscLinkedQueue.poll()).run();
            if (this.disposed) {
                mpscLinkedQueue.clear();
            } else if (this.wip.decrementAndGet() != 0) {
                this.executor.execute(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable) {
            io.reactivex.rxjava3.disposables.c booleanRunnable;
            if (this.disposed) {
                return EmptyDisposable.INSTANCE;
            }
            Runnable runnableT = pz.a.t(runnable);
            if (this.interruptibleWorker) {
                booleanRunnable = new InterruptibleRunnable(runnableT, this.tasks);
                this.tasks.b(booleanRunnable);
            } else {
                booleanRunnable = new BooleanRunnable(runnableT);
            }
            this.queue.offer(booleanRunnable);
            if (this.wip.getAndIncrement() == 0) {
                try {
                    this.executor.execute(this);
                } catch (RejectedExecutionException e11) {
                    this.disposed = true;
                    this.queue.clear();
                    pz.a.r(e11);
                    return EmptyDisposable.INSTANCE;
                }
            }
            return booleanRunnable;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j11, TimeUnit timeUnit) {
            if (j11 <= 0) {
                return schedule(runnable);
            }
            if (this.disposed) {
                return EmptyDisposable.INSTANCE;
            }
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(new SequentialDispose(sequentialDisposable2, pz.a.t(runnable)), this.tasks);
            this.tasks.b(scheduledRunnable);
            Executor executor = this.executor;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    scheduledRunnable.setFuture(((ScheduledExecutorService) executor).schedule((Callable) scheduledRunnable, j11, timeUnit));
                } catch (RejectedExecutionException e11) {
                    this.disposed = true;
                    pz.a.r(e11);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                scheduledRunnable.setFuture(new b(a.f65477a.e(scheduledRunnable, j11, timeUnit)));
            }
            sequentialDisposable.replace(scheduledRunnable);
            return sequentialDisposable2;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final Scheduler f65477a = qz.a.d();
    }

    public ExecutorScheduler(Executor executor, boolean z10, boolean z11) {
        this.f65475e = executor;
        this.f65473c = z10;
        this.f65474d = z11;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public Scheduler.Worker c() {
        return new ExecutorWorker(this.f65475e, this.f65473c, this.f65474d);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public io.reactivex.rxjava3.disposables.c d(Runnable runnable) {
        Runnable runnableT = pz.a.t(runnable);
        try {
            if (this.f65475e instanceof ExecutorService) {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(runnableT, this.f65473c);
                scheduledDirectTask.setFuture(((ExecutorService) this.f65475e).submit(scheduledDirectTask));
                return scheduledDirectTask;
            }
            if (this.f65473c) {
                ExecutorWorker.InterruptibleRunnable interruptibleRunnable = new ExecutorWorker.InterruptibleRunnable(runnableT, null);
                this.f65475e.execute(interruptibleRunnable);
                return interruptibleRunnable;
            }
            ExecutorWorker.BooleanRunnable booleanRunnable = new ExecutorWorker.BooleanRunnable(runnableT);
            this.f65475e.execute(booleanRunnable);
            return booleanRunnable;
        } catch (RejectedExecutionException e11) {
            pz.a.r(e11);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public io.reactivex.rxjava3.disposables.c e(Runnable runnable, long j11, TimeUnit timeUnit) {
        Runnable runnableT = pz.a.t(runnable);
        if (!(this.f65475e instanceof ScheduledExecutorService)) {
            DelayedRunnable delayedRunnable = new DelayedRunnable(runnableT);
            delayedRunnable.timed.replace(a.f65477a.e(new DelayedDispose(delayedRunnable), j11, timeUnit));
            return delayedRunnable;
        }
        try {
            ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(runnableT, this.f65473c);
            scheduledDirectTask.setFuture(((ScheduledExecutorService) this.f65475e).schedule(scheduledDirectTask, j11, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e11) {
            pz.a.r(e11);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public io.reactivex.rxjava3.disposables.c f(Runnable runnable, long j11, long j12, TimeUnit timeUnit) {
        if (!(this.f65475e instanceof ScheduledExecutorService)) {
            return super.f(runnable, j11, j12, timeUnit);
        }
        try {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(pz.a.t(runnable), this.f65473c);
            scheduledDirectPeriodicTask.setFuture(((ScheduledExecutorService) this.f65475e).scheduleAtFixedRate(scheduledDirectPeriodicTask, j11, j12, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e11) {
            pz.a.r(e11);
            return EmptyDisposable.INSTANCE;
        }
    }
}
