package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class TrampolineScheduler extends Scheduler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final TrampolineScheduler f65488c = new TrampolineScheduler();

    /* JADX INFO: loaded from: classes7.dex */
    static final class SleepingRunnable implements Runnable {
        private final long execTime;
        private final Runnable run;
        private final TrampolineWorker worker;

        SleepingRunnable(Runnable runnable, TrampolineWorker trampolineWorker, long j11) {
            this.run = runnable;
            this.worker = trampolineWorker;
            this.execTime = j11;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.worker.f65492d) {
                return;
            }
            long jNow = this.worker.now(TimeUnit.MILLISECONDS);
            long j11 = this.execTime;
            if (j11 > jNow) {
                try {
                    Thread.sleep(j11 - jNow);
                } catch (InterruptedException e11) {
                    Thread.currentThread().interrupt();
                    pz.a.r(e11);
                    return;
                }
            }
            if (this.worker.f65492d) {
                return;
            }
            this.run.run();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class TrampolineWorker extends Scheduler.Worker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final PriorityBlockingQueue f65489a = new PriorityBlockingQueue();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicInteger f65490b = new AtomicInteger();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final AtomicInteger f65491c = new AtomicInteger();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        volatile boolean f65492d;

        final class AppendToQueueTask implements Runnable {
            final a timedRunnable;

            AppendToQueueTask(a aVar) {
                this.timedRunnable = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.timedRunnable.f65496d = true;
                TrampolineWorker.this.f65489a.remove(this.timedRunnable);
            }
        }

        TrampolineWorker() {
        }

        io.reactivex.rxjava3.disposables.c a(Runnable runnable, long j11) {
            if (this.f65492d) {
                return EmptyDisposable.INSTANCE;
            }
            a aVar = new a(runnable, Long.valueOf(j11), this.f65491c.incrementAndGet());
            this.f65489a.add(aVar);
            if (this.f65490b.getAndIncrement() != 0) {
                return io.reactivex.rxjava3.disposables.b.b(new AppendToQueueTask(aVar));
            }
            int iAddAndGet = 1;
            while (!this.f65492d) {
                a aVar2 = (a) this.f65489a.poll();
                if (aVar2 == null) {
                    iAddAndGet = this.f65490b.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return EmptyDisposable.INSTANCE;
                    }
                } else if (!aVar2.f65496d) {
                    aVar2.f65493a.run();
                }
            }
            this.f65489a.clear();
            return EmptyDisposable.INSTANCE;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.f65492d = true;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f65492d;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable) {
            return a(runnable, now(TimeUnit.MILLISECONDS));
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public io.reactivex.rxjava3.disposables.c schedule(Runnable runnable, long j11, TimeUnit timeUnit) {
            long jNow = now(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j11);
            return a(new SleepingRunnable(runnable, this, jNow), jNow);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    static final class a implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Runnable f65493a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final long f65494b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f65495c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        volatile boolean f65496d;

        a(Runnable runnable, Long l11, int i11) {
            this.f65493a = runnable;
            this.f65494b = l11.longValue();
            this.f65495c = i11;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            int iCompare = Long.compare(this.f65494b, aVar.f65494b);
            return iCompare == 0 ? Integer.compare(this.f65495c, aVar.f65495c) : iCompare;
        }
    }

    TrampolineScheduler() {
    }

    public static TrampolineScheduler g() {
        return f65488c;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public Scheduler.Worker c() {
        return new TrampolineWorker();
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public io.reactivex.rxjava3.disposables.c d(Runnable runnable) {
        pz.a.t(runnable).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public io.reactivex.rxjava3.disposables.c e(Runnable runnable, long j11, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j11);
            pz.a.t(runnable).run();
        } catch (InterruptedException e11) {
            Thread.currentThread().interrupt();
            pz.a.r(e11);
        }
        return EmptyDisposable.INSTANCE;
    }
}
